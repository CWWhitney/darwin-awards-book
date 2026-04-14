# Getting Started with "We Did Not Win a Darwin Award"

Welcome to the book project! This guide will help you understand the project, set up your environment, and start contributing.

## Quick Start

### What is This Project?

**We Did Not Win a Darwin Award** is a collection of personal stories about near-death experiences caused by stupidity. It's the inverse of the Darwin Awards—celebrating those who survived their idiotic decisions rather than those who didn't.

Think of it as:
- Cautionary tales wrapped in humor
- Real people sharing their "I can't believe I'm still alive" moments
- Educational content about what NOT to do
- A celebration of human resilience, luck, and second chances

## Understanding the Darwin Awards

Before contributing, you should understand the reference:

**Darwin Awards** honor people who "improve the gene pool by removing themselves from it" through spectacularly stupid actions. Named after Charles Darwin and his theory of natural selection.

**Criteria for a Darwin Award:**
1. ☠️ Die or be sterilized (removed from gene pool)
2. 🤦 Demonstrate excellent stupidity
3. 🎯 Be the sole cause of your own demise
4. 🧑 Be a mature, capable adult
5. ✅ Have the event verified as true

**Our book:** Stories from people who met criteria #2-4 but **survived** #1.

**History:**
- Started in 1980s Usenet newsgroups
- Formalized by Wendy Northcutt in 1994
- Website: DarwinAwards.com
- Multiple bestselling books since 2000

## Project Setup (For Technical Contributors)

### Prerequisites

You'll need:
- **R** (version 4.0 or higher) - [Download here](https://www.r-project.org/)
- **RStudio** (recommended) - [Download here](https://posit.co/download/rstudio-desktop/)
- **LaTeX** (for PDF generation, optional) - Use TinyTeX: `tinytex::install_tinytex()`

### Installation

1. **Clone or download the project**
   ```bash
   git clone [repository-url]
   cd 26_No_Darwin_Award
   ```

2. **Install R packages**
   ```r
   install.packages(c("bookdown", "rmarkdown", "knitr"))
   ```

3. **Verify setup**
   ```r
   source("build_book.R")
   check_packages()
   ```

### Building the Book

#### Using RStudio
1. Open `26_No_Darwin_Award.Rproj` in RStudio
2. Click the "Build" tab
3. Click "Build Book"
4. Choose format: gitbook (HTML), pdf_book, or epub_book

#### Using Command Line
```r
# HTML version (recommended for development)
Rscript build_book.R html

# PDF version (requires LaTeX)
Rscript build_book.R pdf

# EPUB version
Rscript build_book.R epub

# All formats
Rscript build_book.R all
```

#### Using R Console
```r
source("build_book.R")
build_gitbook()   # HTML
build_pdf()       # PDF
build_epub()      # EPUB
build_all()       # Everything
```

### Live Preview

For real-time editing with auto-refresh:
```r
bookdown::serve_book()
```

Then open your browser to `http://localhost:4321`

## Contributing Stories (For Everyone!)

### Do You Have a Story?

We want to hear about times you:
- Nearly died from your own stupidity
- Made a spectacularly bad decision and barely survived
- Learned a valuable lesson the hard way
- Can laugh about it now (even nervously)

### Story Categories We're Collecting

- 🔥 **Fire and Explosives** - Combustion gone wrong
- 🪂 **Gravity Lessons** - Falls, jumps, climbing mishaps
- ⚡ **Electricity Experiments** - Shocking decisions
- 🚗 **Vehicle Misadventures** - Cars, motorcycles, crashes
- 💧 **Water Hazards** - Drowning, diving, swimming
- 🦌 **Wildlife Encounters** - Animals that fought back
- 🧪 **Chemical Curiosities** - Amateur chemistry
- 🏗️ **DIY Disasters** - Home improvement fails
- 👶 **Youthful Idiocy** - Teenage stupidity
- ✈️ **Travel Troubles** - International incidents
- 🏥 **Medical Miracles** - Survivable injuries

### How to Submit

See **CONTRIBUTING.md** for full guidelines, but briefly:

1. **Write your story** (500-3000 words)
   - What happened?
   - What were you thinking?
   - How did you survive?
   - What did you learn?

2. **Choose your name**
   - Real name
   - Pseudonym
   - Anonymous

3. **Submit via:**
   - Email: [TBD]
   - Web form: [TBD]
   - GitHub Issue: Open a "Story Submission" issue

### What Makes a Good Story?

✅ **Good:**
- Honest about your stupidity
- Vivid, detailed description
- Clear cause-and-effect (your decision → danger)
- Reflection on what you learned
- Appropriate humor

❌ **Not Good:**
- Blaming others for your mistakes
- Vague or sparse details
- Pure bad luck (no agency)
- Mean-spirited tone
- No lesson or reflection

### Example Story Structure

```
[Title: The Gasoline Incident]

I was sixteen, which is already a risky age for decision-making...
[Setup: Location, context, who was involved]

My friend said, "We need gasoline." I should have objected. I didn't.
[The Decision: What choice led to disaster]

I struck the match. The fireball was visible from the highway.
[The Incident: What happened, vivid details]

I don't remember the first moment. What I remember is the WHOOMP...
[The Experience: Sensory details, thoughts, feelings]

My grip failed. I fell...but I landed in landscaping mulch, not concrete.
[The Outcome: How you survived]

Three broken ribs and a new respect for physics.
[The Aftermath: Injuries, consequences]

Lesson learned: Gasoline vapor ignites. Distance matters. I was lucky.
[Reflection: What you learned, how it changed you]
```

## Understanding the Book Structure

### File Organization

```
26_No_Darwin_Award/
├── index.Rmd              # Preface and book setup
├── 01-fire-and-explosives.Rmd
├── 02-gravity-lessons.Rmd
├── 03-electricity-experiments.Rmd
├── [more chapters...]
├── 99-references.Rmd      # Bibliography
├── style.css              # Custom styling
├── book.bib               # Citations
└── docs/                  # Built book output
```

### Chapter Structure

Each `.Rmd` file is a chapter containing:
- YAML header with chapter metadata
- Introduction
- Featured stories (long-form narratives)
- Short takes (brief incidents)
- Lessons learned
- Editor's notes

### Adding Content to Chapters

1. Open the appropriate chapter file (e.g., `01-fire-and-explosives.Rmd`)
2. Find the relevant section or create a new one
3. Add your story using R Markdown format
4. Include contributor attribution
5. Build the book to preview

## Writing in R Markdown

### Basic Syntax

```markdown
# Chapter Title

## Section Title

Regular paragraph text.

**Bold text**
*Italic text*

- Bullet point 1
- Bullet point 2

1. Numbered item 1
2. Numbered item 2

> Blockquote (used for chapter opening quotes)
```

### Special Elements

```markdown
### Story Title {-}
The {-} means "don't number this heading"

**Contributor:** Name, Location

*[Editor's note: Additional context]*
```

### R Code Chunks (for setup)

````markdown
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```
````

## Project Workflow

### For Story Contributors
1. ✍️ Write your story
2. 📧 Submit via email/form/GitHub
3. ⏳ Wait for editorial review (1-2 weeks)
4. 🔄 Revise if requested
5. ✅ Approve final version
6. 📚 See it in the published book!

### For Editors
1. 📥 Receive submission
2. 👀 Review for quality and fit
3. ✏️ Edit for style, grammar, length
4. 🤝 Collaborate with contributor
5. 📄 Get consent form signed
6. ✅ Integrate into book
7. 🏗️ Rebuild and test

### For Developers
1. 🔧 Make changes to code/structure
2. 🧪 Test locally
3. 🔨 Build all formats
4. ✅ Verify output
5. 📝 Commit and push changes

## Helpful Commands

### Building
```bash
Rscript build_book.R html      # HTML only
Rscript build_book.R pdf       # PDF only
Rscript build_book.R all       # All formats
Rscript build_book.R clean     # Remove build artifacts
Rscript build_book.R preview   # Live preview server
```

### Checking
```r
bookdown::render_book("index.Rmd")  # Full build
bookdown::preview_chapter("01-fire-and-explosives.Rmd")  # Single chapter
```

### Troubleshooting
```r
# Clean and rebuild
Rscript build_book.R clean
Rscript build_book.R html

# Check package versions
sessionInfo()

# Update packages
update.packages(c("bookdown", "rmarkdown", "knitr"))
```

## Current Status

**What's Complete:**
- ✅ Project structure and configuration
- ✅ 4 sample chapters with stories
- ✅ Style guide and formatting
- ✅ Build scripts and automation
- ✅ Contributor guidelines

**What's In Progress:**
- 🚧 Collecting stories from contributors
- 🚧 Completing remaining chapters
- 🚧 Building submission system

**What's Needed:**
- 📝 50-100 total stories across categories
- 🎨 Cover design
- ⚖️ Legal review
- 📢 Marketing and publication plan

## Getting Help

**Questions about:**
- **Technical setup:** Check documentation or create GitHub issue
- **Story submission:** See CONTRIBUTING.md
- **Bookdown format:** https://bookdown.org/yihui/bookdown/
- **R Markdown:** https://rmarkdown.rstudio.com/

## Next Steps

### If You're a Story Contributor:
1. Read existing sample stories for tone/style
2. Write your story using the guidelines
3. Submit via preferred method
4. Wait for feedback

### If You're an Editor:
1. Review pending submissions
2. Edit for consistency and quality
3. Work with contributors on revisions
4. Integrate approved stories

### If You're a Developer:
1. Familiarize yourself with bookdown
2. Review existing code and structure
3. Test building in all formats
4. Propose improvements via GitHub

## Remember

**The Goal:** Create a collection of entertaining, educational, and humbling stories about human stupidity and survival.

**The Tone:** Humor with humility. We laugh at ourselves, not at others.

**The Message:** We all make mistakes. Learn from them. Be grateful you survived.

**The Motto:** **We did not win a Darwin Award. Let's keep it that way.**

---

**Questions?** Check the other documentation files:
- **README.md** - Project overview
- **CONTRIBUTING.md** - Detailed contribution guidelines
- **PROJECT_OVERVIEW.md** - Comprehensive project details
- **99-references.Rmd** - Resources and safety information

**Ready to contribute?** We can't wait to hear your story!

---

*Last Updated: 2024*
*Project Status: Active Development*