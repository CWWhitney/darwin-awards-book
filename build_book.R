#!/usr/bin/env Rscript

# Build script for "We Did Not Win a Darwin Award" bookdown project
#
# This script provides convenient functions to build the book in various formats
# and perform common maintenance tasks.

cat("========================================\n")
cat("We Did Not Win a Darwin Award\n")
cat("Bookdown Build Script\n")
cat("========================================\n\n")

# Check if required packages are installed
required_packages <- c("bookdown", "rmarkdown", "knitr")

check_packages <- function() {
  cat("Checking required packages...\n")
  missing_packages <- c()

  for (pkg in required_packages) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      missing_packages <- c(missing_packages, pkg)
      cat(paste0("  [MISSING] ", pkg, "\n"))
    } else {
      cat(paste0("  [OK] ", pkg, "\n"))
    }
  }

  if (length(missing_packages) > 0) {
    cat("\nMissing packages detected. Install them with:\n")
    cat(paste0("install.packages(c('", paste(missing_packages, collapse = "', '"), "'))\n"))
    return(FALSE)
  }

  cat("All required packages are installed.\n\n")
  return(TRUE)
}

# Build functions
build_gitbook <- function() {
  cat("Building HTML version (gitbook)...\n")
  bookdown::render_book("index.Rmd", "bookdown::gitbook")
  cat("HTML version built successfully!\n")
  cat("Open docs/index.html to view.\n\n")
}

build_pdf <- function() {
  cat("Building PDF version...\n")
  cat("Note: This requires LaTeX to be installed.\n")
  tryCatch(
    {
      bookdown::render_book("index.Rmd", "bookdown::pdf_book")
      cat("PDF version built successfully!\n")
      cat("File: docs/we_did_not_win_darwin_award.pdf\n\n")
    },
    error = function(e) {
      cat("PDF build failed. Do you have LaTeX installed?\n")
      cat("Error message:", e$message, "\n")
      cat("Install TinyTeX with: tinytex::install_tinytex()\n\n")
    }
  )
}

build_epub <- function() {
  cat("Building EPUB version...\n")
  cat("Note: This requires Pandoc 2.0 or higher.\n")
  tryCatch(
    {
      bookdown::render_book("index.Rmd", "bookdown::epub_book")
      cat("EPUB version built successfully!\n")
      cat("File: docs/we_did_not_win_darwin_award.epub\n\n")
    },
    error = function(e) {
      cat("EPUB build failed.\n")
      cat("Error message:", e$message, "\n\n")
    }
  )
}

build_all <- function() {
  cat("Building all formats...\n\n")
  build_gitbook()
  build_pdf()
  build_epub()
  cat("All formats built!\n\n")
}

clean_build <- function() {
  cat("Cleaning build artifacts...\n")

  # Remove common build artifacts
  artifacts <- c(
    "_bookdown_files",
    "_book",
    "*.log",
    "*.aux",
    "*.out",
    "*.toc",
    "*.lot",
    "*.lof",
    "*.rds"
  )

  for (pattern in artifacts) {
    files <- list.files(pattern = pattern, full.names = TRUE, recursive = TRUE)
    if (length(files) > 0) {
      file.remove(files)
      cat(paste0("  Removed: ", paste(files, collapse = ", "), "\n"))
    }
  }

  cat("Clean complete.\n\n")
}

preview_book <- function() {
  cat("Starting preview server...\n")
  cat("Press Ctrl+C to stop the server.\n\n")
  bookdown::serve_book()
}

show_help <- function() {
  cat("Available commands:\n")
  cat("  Rscript build_book.R html      - Build HTML version only\n")
  cat("  Rscript build_book.R pdf       - Build PDF version only\n")
  cat("  Rscript build_book.R epub      - Build EPUB version only\n")
  cat("  Rscript build_book.R all       - Build all formats\n")
  cat("  Rscript build_book.R clean     - Remove build artifacts\n")
  cat("  Rscript build_book.R preview   - Start live preview server\n")
  cat("  Rscript build_book.R check     - Check package dependencies\n")
  cat("  Rscript build_book.R help      - Show this help message\n\n")
  cat("Or run in R/RStudio:\n")
  cat("  source('build_book.R')\n")
  cat("  build_gitbook()   # Build HTML\n")
  cat("  build_pdf()       # Build PDF\n")
  cat("  build_epub()      # Build EPUB\n")
  cat("  build_all()       # Build all formats\n\n")
}

generate_packages_bib <- function() {
  cat("Generating packages.bib...\n")
  knitr::write_bib(c(
    .packages(), "bookdown", "knitr", "rmarkdown"
  ), "packages.bib")
  cat("packages.bib generated.\n\n")
}

# Main execution
main <- function() {
  args <- commandArgs(trailingOnly = TRUE)

  if (length(args) == 0) {
    cat("No command specified. Defaulting to HTML build.\n")
    cat("Run 'Rscript build_book.R help' for available commands.\n\n")
    args <- "html"
  }

  command <- args[1]

  # Check packages before any build operation
  if (command %in% c("html", "pdf", "epub", "all", "preview")) {
    if (!check_packages()) {
      stop("Missing required packages. Please install them first.")
    }
  }

  switch(command,
    "html" = build_gitbook(),
    "pdf" = build_pdf(),
    "epub" = build_epub(),
    "all" = build_all(),
    "clean" = clean_build(),
    "preview" = preview_book(),
    "check" = check_packages(),
    "help" = show_help(),
    "generate-bib" = generate_packages_bib(),
    {
      cat(paste0("Unknown command: ", command, "\n"))
      show_help()
    }
  )
}

# Run main if script is executed directly
if (!interactive()) {
  main()
} else {
  cat("Build script loaded in interactive session.\n")
  cat("Available functions: build_gitbook(), build_pdf(), build_epub(), build_all(), clean_build(), preview_book()\n\n")
}
