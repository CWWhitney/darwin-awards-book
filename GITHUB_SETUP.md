# GitHub Setup & Deployment Guide
## Making "We Did Not Win a Darwin Award" a Living Document

This guide will help you publish your book online for free and update it continuously as new stories arrive.

## Why GitHub + GitHub Pages?

- ✅ **FREE** hosting
- ✅ **Automatic updates** when you push changes
- ✅ **Version control** - track all changes
- ✅ **Community contributions** - accept pull requests
- ✅ **Professional URL** - yourname.github.io/darwin-awards
- ✅ **Always online** - 99.9% uptime
- ✅ **No server management** - GitHub handles everything

---

## Part 1: Create GitHub Repository

### Option A: Via GitHub Website (Easiest)

1. **Go to GitHub.com**
   - Sign in (or create account at github.com/join)

2. **Create New Repository**
   - Click the "+" in top right → "New repository"
   - Repository name: `darwin-awards-book` (or whatever you prefer)
   - Description: "A collection of stories from people who narrowly avoided Darwin Awards"
   - Choose **Public** (required for free GitHub Pages)
   - **DO NOT** initialize with README (we already have files)
   - Click "Create repository"

3. **Copy the Repository URL**
   - You'll see something like: `https://github.com/YOUR-USERNAME/darwin-awards-book.git`
   - Keep this handy!

### Option B: Via GitHub CLI (Advanced)

```bash
# Install GitHub CLI first: https://cli.github.com/
gh repo create darwin-awards-book --public --source=. --remote=origin
```

---

## Part 2: Connect Your Local Project to GitHub

### From This Chat Interface:

I can help you run these commands! Just tell me to proceed and I'll execute:

```bash
# Set the remote repository
git remote add origin https://github.com/YOUR-USERNAME/darwin-awards-book.git

# Rename branch to 'main' (modern convention)
git branch -M main

# Push to GitHub
git push -u origin main
```

**Replace `YOUR-USERNAME` with your actual GitHub username!**

### Manually (if you prefer):

Open Terminal, navigate to your project folder, and run the commands above.

---

## Part 3: Enable GitHub Pages

### Steps:

1. **Go to your repository on GitHub**
   - `https://github.com/YOUR-USERNAME/darwin-awards-book`

2. **Click "Settings"** (top menu)

3. **Click "Pages"** (left sidebar)

4. **Configure Source:**
   - Source: Deploy from a branch
   - Branch: `main`
   - Folder: `/ (root)` for now (we'll change this to `/docs` later)
   - Click "Save"

5. **Wait 2-5 minutes**
   - GitHub builds your site
   - You'll get a URL like: `https://YOUR-USERNAME.github.io/darwin-awards-book/`

---

## Part 4: Configure Bookdown for GitHub Pages

We need to tell bookdown to output to a `docs/` folder (GitHub Pages requirement).

### Update _bookdown.yml

The file is already configured with `output_dir: "docs"`, so you're good!

### Build the Book for GitHub Pages

```r
# In R or RStudio:
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```

Or from terminal:
```bash
Rscript build_book.R html
```

This creates a `docs/` folder with your HTML book.

### Configure GitHub Pages to Use docs/

1. Go back to **Settings → Pages**
2. Change Folder from `/ (root)` to `/docs`
3. Click "Save"
4. Wait 2-5 minutes

Your book is now live at: `https://YOUR-USERNAME.github.io/darwin-awards-book/`

---

## Part 5: Workflow for Adding New Stories

### The Beautiful Part: Continuous Updates!

Every time someone submits a story:

1. **Add the story** to the appropriate chapter `.Rmd` file
2. **Rebuild the book** (one command!)
3. **Push to GitHub** (three commands!)
4. **Automatic deployment** - GitHub Pages updates automatically!

### Step-by-Step Update Process:

```bash
# 1. Edit your chapter files (add new stories)
# You can do this in RStudio, VS Code, or any text editor

# 2. Rebuild the book
Rscript build_book.R html

# 3. Commit changes
git add .
git commit -m "Added new story: The Moose Incident Part 2"

# 4. Push to GitHub
git push

# 5. Wait 2-5 minutes - your site automatically updates!
```

### From This Chat:

I can help you with all these commands! Just say:
- "Add the new story I wrote"
- "Rebuild the book"
- "Commit and push to GitHub"

And I'll execute the commands for you.

---

## Part 6: Accepting Community Contributions

### Enable Issues for Story Submissions

1. **Go to Settings → General**
2. Scroll to "Features"
3. Check ✅ "Issues"
4. Now people can submit stories via GitHub Issues!

### Create Issue Templates

Create `.github/ISSUE_TEMPLATE/story-submission.md`:

```markdown
---
name: Story Submission
about: Submit your near-Darwin Award story
title: '[STORY] '
labels: 'story-submission'
assignees: ''
---

## Your Story Title

**Your Name/Pseudonym:**
**Category:** (Fire, Gravity, Electricity, Wildlife, etc.)

## The Story

[Write your story here - 500-3000 words]

**What happened:**

**How you survived:**

**What you learned:**

## Permissions

- [ ] I confirm this is a true story (or substantially true)
- [ ] I give permission to include this in the book
- [ ] I want to use: [ ] Real name [ ] Pseudonym: _______ [ ] Anonymous
```

### Create Pull Request Template

Create `.github/PULL_REQUEST_TEMPLATE.md`:

```markdown
## Story Submission via Pull Request

**Story Title:**
**Category:**
**Author Name:**

## Checklist
- [ ] Story is 500-3000 words
- [ ] Added to appropriate chapter file
- [ ] Includes lessons learned section
- [ ] Follows formatting guidelines
- [ ] I have permission to share this story

## Preview

[Brief description of what this PR adds]
```

---

## Part 7: Marketing & Advertising Strategy

### Free/Low-Cost Marketing

#### 1. Social Media Launch

**Reddit** (HUGE potential audience):
- r/DarwinAwards - directly relevant!
- r/tifu (Today I F***ed Up) - perfect audience
- r/self - personal stories
- r/CasualConversation
- r/AskReddit - "What's your near-Darwin Award story?"
- Relevant niche subreddits (r/camping for outdoor stories, r/DIY for home disasters, etc.)

**Post Title Examples:**
- "I'm collecting stories from people who almost won a Darwin Award. Here's mine."
- "Remember that time you almost died from your own stupidity? I want to hear about it."
- "I created a free online book of 'I can't believe I survived that' stories"

**Twitter/X:**
- Tweet sample stories with link
- Use hashtags: #DarwinAwards #NearMiss #Survival #StupidDecisions
- Tag @DarwinAwards (official account)

**TikTok/Instagram Reels:**
- Short video summaries of best stories
- "Storytime" format is HUGE on TikTok
- Use text overlay + dramatic narration
- End with: "Submit your story at [link]"

**Facebook Groups:**
- Camping/Outdoor groups
- DIY groups
- Parenting groups (for youthful idiocy stories)
- Local community groups

#### 2. Content Marketing

**Start a Blog/Newsletter:**
- Substack (free) - publish one story per week
- Medium - cross-post stories
- Link back to full book

**Guest Posts:**
- Reach out to humor/essay sites
- Safety blogs (they'd love cautionary tales)
- Adventure/outdoor sites

**Podcast Appearances:**
- Search for podcasts about:
  - True stories
  - Dark humor
  - Safety/survival
  - Personal narratives
- Pitch yourself as guest with great stories

#### 3. Press & Media

**Local Media:**
- Contact local newspapers: "Local Author Creates Online Collection of Near-Death Stories"
- Local radio: Great interview content!
- University publications (if you have academic connection)

**Online Media:**
- Bored Panda (loves this kind of content)
- Buzzfeed Community
- Cracked.com (if they're still active)
- Mental Floss
- Atlas Obscura

**Pitch Email Template:**
```
Subject: Collection of "Near-Darwin Award" Stories - Looking for Contributors

Hi [Name],

I'm creating a free online book collecting stories from people who 
almost won a Darwin Award - near-death experiences caused by spectacular 
stupidity, but with happy endings.

Think: The guy who poured 5 gallons of gasoline on a brush pile and 
lived to tell the tale. The woman who touched a wild moose during 
rutting season. The teenager who climbed 3 stories drunk and fell 
into a tree.

The book is live at [URL] and I'm actively seeking contributors.
I thought your audience might enjoy it and might have stories to share.

Would you be interested in:
- Sharing the link with your audience?
- Running a story excerpt?
- An interview about the project?

Sample stories available at [URL].

Best,
[Your Name]
```

#### 4. Community Building

**Create Social Presence:**
- **Instagram:** @NodarwinawardWon
  - Post story excerpts as image quotes
  - Behind-the-scenes of book creation
  - Safety tips with humor
  
- **Twitter:** @NoDarwinAward
  - Tweet daily story snippets
  - Retweet people's near-miss stories
  - Engage with Darwin Awards community

- **YouTube Channel:**
  - Narrated stories with simple animations
  - "Story Time" videos
  - "How to NOT Win a Darwin Award" series

**Email Newsletter:**
- Collect emails via Google Form on GitHub Pages
- Weekly story + call for submissions
- Build engaged community

#### 5. SEO & Discoverability

**Optimize Your GitHub Pages:**
- Add meta tags to HTML
- Use descriptive URLs
- Include keywords in chapter titles
- Create sitemap.xml

**Keywords to Target:**
- "Darwin Award stories"
- "Near death experiences"
- "Stupid decisions survival stories"
- "I almost died stories"
- "Close call stories"
- "Survival stories"

**Get Backlinks:**
- Comment on Darwin Awards blog
- Participate in Reddit discussions (genuinely, not spammy)
- Guest post with links back
- Directory submissions (StumbleUpon alternatives)

#### 6. Paid Advertising (If Budget Allows)

**Facebook/Instagram Ads:**
- Target Darwin Awards fans
- Target survival/outdoor enthusiasts
- Remarketing to site visitors
- Budget: Start with $5/day

**Reddit Ads:**
- Promoted posts in relevant subreddits
- Very affordable ($5 minimum)
- Great targeting options

**Google Ads:**
- Target "Darwin Awards" searches
- "Funny survival stories"
- Budget: $10-20/day

#### 7. Partnerships

**Collaborate With:**
- Safety organizations (they'd love real cautionary tales)
- Outdoor gear companies (for outdoor disaster stories)
- First responder organizations
- Science education programs (evolution, natural selection)

**Offer:**
- Free content they can share
- Attribution/links in your book
- Co-branded safety campaigns

#### 8. Viral Hooks

**Create Shareable Content:**
- "Top 10 Dumbest Survival Stories"
- Infographic: "Most Common Ways People Almost Die"
- Quiz: "How Close Have YOU Come to a Darwin Award?"
- Meme templates from best stories

**Encourage Sharing:**
- Add social share buttons to each story
- "Share your own story" CTAs
- Contests: "Best story submission wins [prize]"

---

## Part 8: Measuring Success

### Track Your Impact

**GitHub Insights:**
- Stars (people who like your repo)
- Forks (people copying your project)
- Traffic (visitors to your GitHub Pages)

**Google Analytics:**
Add to your HTML in `_output.yml`:
```yaml
bookdown::gitbook:
  config:
    google_analytics: "UA-XXXXXXXX-X"
```

**Track:**
- Page views
- Time on page
- Popular stories
- Traffic sources (where readers come from)
- Story submission rate

**Goals:**
- Month 1: 100 visitors, 5 story submissions
- Month 3: 1,000 visitors, 25 story submissions
- Month 6: 10,000 visitors, 100 story submissions
- Year 1: 50,000 visitors, complete book with 200+ stories

---

## Part 9: Monetization Options (Optional)

If this takes off, you could:

1. **Amazon Print-on-Demand**
   - Publish physical book via KDP
   - Keep online version free
   - Sell print copies for those who want them

2. **Patreon/Ko-fi**
   - Supporters get early access to stories
   - Exclusive content
   - Your name in the acknowledgments

3. **Affiliate Links**
   - Link to safety equipment on Amazon
   - "Don't make my mistakes - use proper gear!"

4. **Speaking Engagements**
   - Safety conferences
   - Universities (evolution, risk assessment)
   - Corporate training (risk management)

5. **Podcast/YouTube Revenue**
   - Monetize story adaptations
   - Sponsorships from safety gear companies

---

## Part 10: Quick Start Checklist

### Week 1: Launch
- [ ] Push project to GitHub
- [ ] Enable GitHub Pages
- [ ] Build and deploy book
- [ ] Test that site works
- [ ] Share with friends for feedback

### Week 2: Market
- [ ] Post on 3 relevant subreddits
- [ ] Create social media accounts
- [ ] Email 10 friends asking for shares
- [ ] Submit to 2 online publications

### Week 3: Iterate
- [ ] Collect first story submissions
- [ ] Add stories to book
- [ ] Rebuild and push updates
- [ ] Thank contributors publicly
- [ ] Share update: "We got our first submissions!"

### Week 4: Scale
- [ ] Set up newsletter
- [ ] Create content calendar
- [ ] Reach out to podcast hosts
- [ ] Plan first "viral" content piece

### Ongoing:
- [ ] Weekly: Add new stories
- [ ] Weekly: Share 1-2 posts on social media
- [ ] Monthly: Pitch to 5 new outlets
- [ ] Quarterly: Major update announcement

---

## Pro Tips

### From This Chat Interface:

You can ask me to:
- "Check if there are new story submissions on GitHub"
- "Rebuild the book and push to GitHub"
- "Create a new chapter for [topic]"
- "Generate a social media post about the latest story"
- "Help me write a pitch email to [publication]"

### Make It Easy to Contribute:

- Clear "Submit Your Story" button on every page
- Simple submission form (Google Forms → email you)
- Quick response to submissions (24-48 hours)
- Thank contributors publicly
- Feature "Story of the Week"

### Keep Momentum:

- Set schedule: "New story every Tuesday"
- Batch work: Collect 5 stories, add them all at once
- Automate: Use GitHub Actions to auto-build on push
- Engage: Respond to comments, thank contributors

### Quality Over Quantity:

- Better to have 50 great stories than 200 mediocre ones
- Edit heavily with contributors
- Set high bar for what gets published
- It's okay to say "not quite right for this collection"

---

## Troubleshooting

### Site Not Updating?

1. Check GitHub Actions tab for build errors
2. Clear browser cache
3. Wait 5 minutes (GitHub Pages can be slow)
4. Check that `docs/` folder is committed

### Stories Not Formatting Correctly?

1. Check R Markdown syntax
2. Rebuild locally first to catch errors
3. Validate HTML output
4. Check CSS conflicts

### Not Getting Submissions?

1. Make submission process easier
2. Share more widely
3. Engage with community more
4. Feature existing stories to show examples
5. Run a submission contest

---

## Next Steps

Ready to launch? Here's what we'll do:

1. **I'll help you push to GitHub** - just provide your username
2. **I'll guide you through GitHub Pages setup** - step by step
3. **I'll help you write your launch posts** - Reddit, social media, etc.
4. **I'll assist with ongoing updates** - adding stories, rebuilding, pushing

**Just say: "Let's push this to GitHub!"** and we'll get started.

---

## Resources

- **GitHub Docs:** https://docs.github.com/en/pages
- **Bookdown Guide:** https://bookdown.org/yihui/bookdown/
- **R Markdown:** https://rmarkdown.rstudio.com/
- **GitHub Pages Examples:** https://github.com/collections/github-pages-examples

**Your book will be live, free, and updating continuously!**

The best part? Every new story makes the book better, attracts more readers, and those readers submit more stories. It's a beautiful content flywheel.

Let's make this happen! 🚀