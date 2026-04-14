# Quick Deploy Guide - Get Your Book Online in 5 Minutes!

Your book is already on GitHub at: **https://github.com/CWWhitney/darwin-awards-book**

Now let's make it live on the web!

## Option 1: Simple GitHub Pages Setup (Recommended - 2 Minutes)

### Step 1: Build the Book Locally

```bash
cd 26_No_Darwin_Award
Rscript build_book.R html
```

This creates a `docs/` folder with your HTML book.

### Step 2: Commit and Push the docs/ folder

```bash
# Update .gitignore to allow docs folder
echo "!docs/" >> .gitignore

# Add and commit
git add docs/
git add .gitignore
git commit -m "Add built book for GitHub Pages"
git push
```

### Step 3: Enable GitHub Pages

1. Go to: **https://github.com/CWWhitney/darwin-awards-book/settings/pages**
2. Under "Source", select:
   - Branch: `main`
   - Folder: `/docs`
3. Click **Save**
4. Wait 2-5 minutes

### Step 4: Visit Your Live Book!

Your book will be live at:
**https://cwwhitney.github.io/darwin-awards-book/**

---

## Option 2: Automated Builds with GitHub Actions (Advanced)

This automatically rebuilds your book every time you push changes.

### Step 1: Enable GitHub Pages (Source: GitHub Actions)

1. Go to: **https://github.com/CWWhitney/darwin-awards-book/settings/pages**
2. Under "Source", select: **GitHub Actions**
3. Click **Save**

### Step 2: Create Workflow File

Create `.github/workflows/deploy-book.yml` with this content:

```yaml
name: Deploy Bookdown

on:
  push:
    branches: [main]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - uses: r-lib/actions/setup-r@v2
        with:
          r-version: '4.3.0'
      
      - name: Install dependencies
        run: |
          install.packages(c("bookdown", "rmarkdown", "knitr"))
        shell: Rscript {0}
      
      - name: Build book
        run: |
          bookdown::render_book("index.Rmd", "bookdown::gitbook")
        shell: Rscript {0}
      
      - uses: actions/upload-pages-artifact@v2
        with:
          path: './docs'
      
      - uses: actions/deploy-pages@v3
        id: deployment
```

### Step 3: Commit and Push

```bash
git add .github/workflows/deploy-book.yml
git commit -m "Add GitHub Actions deployment"
git push
```

The workflow will run automatically and deploy your book!

---

## Updating Your Book (The Magic Part!)

Once set up, updating is SIMPLE:

### 1. Edit a chapter file (add new story)

```bash
# Edit in any text editor or RStudio
nano 01-fire-and-explosives.Rmd
```

### 2. Rebuild locally (if using Option 1)

```bash
Rscript build_book.R html
```

### 3. Commit and push

```bash
git add .
git commit -m "Added new story: The Propane Tank Incident"
git push
```

### 4. Wait 2-5 minutes

- **Option 1**: Book updates automatically from `docs/` folder
- **Option 2**: GitHub Actions rebuilds and deploys

Your book is now live and updated! 🎉

---

## Daily Workflow for Adding Stories

```bash
# 1. Someone emails you a story
# 2. Copy it into the appropriate chapter file

# 3. Rebuild
Rscript build_book.R html

# 4. Commit and push
git add .
git commit -m "New story: [title]"
git push

# 5. Done! Live in 2-5 minutes.
```

---

## Share Your Book!

Once live, share this URL:
**https://cwwhitney.github.io/darwin-awards-book/**

### Social Media Posts:

**Reddit (r/DarwinAwards, r/tifu):**
```
I'm collecting stories from people who almost won a Darwin Award but survived.
Here's a free online book with the best ones so far.
Submit yours! [link]
```

**Twitter/X:**
```
Remember that time you almost died from your own stupidity? 
I'm collecting those stories in a free online book.
Read & submit: https://cwwhitney.github.io/darwin-awards-book/
#DarwinAwards #NearMiss
```

**Facebook:**
```
🔥 New project: "We Did Not Win a Darwin Award"

A collection of true stories from people who survived spectacularly 
stupid decisions. Free to read online, always accepting submissions.

Got a close call story? Share it!
```

---

## Custom Domain (Optional)

Want **darwin-awards-book.com** instead of the GitHub URL?

1. Buy domain from Namecheap/GoDaddy ($10-15/year)
2. Add file `docs/CNAME` with your domain
3. Configure DNS at your registrar
4. Update GitHub Pages settings

Full guide: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

---

## Troubleshooting

### Book not showing up?
- Wait 5 minutes after enabling Pages
- Check Settings → Pages for the URL
- Clear browser cache
- Check that `docs/index.html` exists in your repo

### Changes not appearing?
- Did you rebuild the book? (`Rscript build_book.R html`)
- Did you commit the `docs/` folder?
- Did you push? (`git push`)
- Wait 2-5 minutes for GitHub to update

### Build errors?
- Check `docs/` folder was created
- Run `Rscript build_book.R html` locally first
- Check for R Markdown syntax errors
- Review R console output for error messages

---

## Next Steps

1. ✅ **Deploy now** - Follow Option 1 above (5 minutes)
2. 📢 **Announce** - Share on social media
3. 📝 **Collect stories** - Set up submission form
4. 🔄 **Update weekly** - Add new stories regularly
5. 📈 **Track growth** - Watch your GitHub stars increase!

---

## Questions?

Check these files in your repo:
- `README.md` - Project overview
- `GITHUB_SETUP.md` - Detailed deployment guide  
- `CONTRIBUTING.md` - How people can submit stories
- `GETTING_STARTED.md` - Full guide for contributors

Or open an issue: https://github.com/CWWhitney/darwin-awards-book/issues

---

**Your book is ready to go live! Pick Option 1 or 2 above and launch in minutes.** 🚀