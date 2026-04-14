# We Did Not Win a Darwin Award

> A collection of true stories from people who narrowly avoided becoming Darwin Award winners.

## About This Project

The **Darwin Awards** commemorate individuals who improve the human gene pool by accidentally removing themselves from it through acts of spectacular stupidity. This book takes a different approach: we celebrate the near-misses, the close calls, and the "I can't believe I survived that" moments.

**We Did Not Win a Darwin Award** is a collection of personal essays and stories from people who came dangerously close to earning evolution's most dubious honor—but survived to tell the tale.

## What is a Darwin Award?

The Darwin Awards recognize individuals who supposedly contribute to human evolution by selecting themselves out of the gene pool through extraordinarily stupid actions. Named after Charles Darwin and his theory of natural selection, these "awards" are given to people who die (or lose reproductive capacity) in remarkably idiotic, self-inflicted ways.

### History of the Darwin Awards

- **Origins**: Emerged in the late 1980s on Usenet newsgroups (particularly rec.humor)
- **Formalization**: Wendy Northcutt, a Stanford molecular biology graduate, created DarwinAwards.com in 1994
- **First Book**: "The Darwin Awards: Evolution in Action" published in 2000
- **Cultural Impact**: Multiple books, dedicated website, and a 2006 film adaptation

### Darwin Award Criteria

To "win" a Darwin Award, one must:

1. **Die or be sterilized** (removal from the gene pool)
2. Demonstrate **excellent stupidity**
3. Be the **sole cause** of one's own demise
4. Be a **mature, capable adult**
5. Have the event **verified** as true

## Our Book: The Inverse Darwin Award

The people in this book met criteria #2-4 but fortunately failed at #1. They survived their stupidity, lived to tell the tale, and did NOT win a Darwin Award.

## Book Structure

This is a **bookdown** project created using R Markdown, following the format established by Yihui Xie.

### Chapters

1. **Preface** - Introduction to the concept and the collection
2. **Fire and Explosives** - Stories of combustion gone wrong
3. **Gravity Wins (Almost)** - Tales of falls, jumps, and vertical misadventures
4. **When Animals Fight Back** - Wildlife encounters that nearly went fatal
5. **Electricity and Water** - The deadly combination and those who tested it
6. **Vehicle Misadventures** - Cars, motorcycles, and motorized mayhem
7. **Water Hazards** - Drowning, diving, and aquatic disasters averted
8. **Chemical Curiosities** - Amateur chemistry experiments
9. **Heights and Falls** - More gravity-defying stupidity
10. **DIY Disasters** - Home improvement gone horribly wrong
11. **Youthful Idiocy** - Teenage decisions that should have been fatal
12. **Travel Troubles** - International incidents and foreign misadventures
13. **Medical Miracles** - Injuries that shouldn't have been survivable

## Building the Book

This project uses the **bookdown** package in R.

### Prerequisites

```r
install.packages("bookdown")
install.packages("rmarkdown")
install.packages("knitr")
```

### Building

To build the book, open R in the project directory and run:

```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")  # HTML version
bookdown::render_book("index.Rmd", "bookdown::pdf_book")  # PDF version
bookdown::render_book("index.Rmd", "bookdown::epub_book") # EPUB version
```

Or use the RStudio "Build Book" button in the Build pane.

### Output

Compiled books will be in the `docs/` directory:
- HTML: `docs/index.html`
- PDF: `docs/we_did_not_win_darwin_award.pdf`
- EPUB: `docs/we_did_not_win_darwin_award.epub`

## Contributing Stories

We're actively collecting stories for this book! If you have a tale of how you narrowly avoided a Darwin Award, we'd love to hear it.

### Submission Guidelines

**What we're looking for:**
- True stories (or true-ish with clear labeling if details are fuzzy)
- Near-death or serious injury situations
- Caused by your own poor judgment or spectacular stupidity
- You survived (obviously, since you're submitting)
- Ideally includes reflection on what you learned

**What we need:**
- The story (500-3000 words preferred, but flexible)
- Your name (real or pseudonym)
- Permission to publish (we'll send a consent form)
- Any photos (optional, but awesome)

**What we DON'T want:**
- Stories where someone else was the idiot
- Stories that ended in serious permanent harm to others
- Fabricated stories presented as true
- Anything that glorifies illegal activity without appropriate context

### How to Submit

- **Email**: [To be determined]
- **Web form**: [To be determined]
- **GitHub**: Open an issue on this repository with your story

### Privacy and Consent

- You can choose to use your real name or a pseudonym
- You can request that identifying details be changed
- You retain copyright to your story
- By submitting, you grant us publication rights for this collection
- You can withdraw your story before publication

## Project Team

This is a collaborative project built with input from storytellers around the world.

**Editor**: [Your Name]

**Contributors**: See individual chapter credits

**Agent Team**: We use AI agents to help with interviews, story collection, and editing, but all stories are from real humans and all final editorial decisions are made by humans.

## About Bookdown

This project is built using **bookdown**, an R package for authoring books with R Markdown.

**Resources:**
- [Bookdown documentation](https://bookdown.org/yihui/bookdown/)
- [Yihui Xie's website](https://yihui.org/)
- [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)

## License

**Stories**: Individual contributors retain copyright to their stories. By submitting, they grant publication rights for this collection.

**Compilation**: [To be determined - consider Creative Commons]

**Code**: MIT License for the bookdown configuration and build scripts.

## Disclaimer

**IMPORTANT**: Do not attempt to recreate any of the situations described in this book. These are cautionary tales, not instruction manuals. The authors and contributors survived through luck, not skill. You may not be so fortunate.

The stories in this book involve real people who made real mistakes. We share them with humor and humility, not to mock but to remind ourselves that we're all fallible. These are teaching moments wrapped in narrative.

If you're reading this and thinking, "That sounds fun, I should try it"—NO. Just no.

## Contact

- **Project website**: [To be determined]
- **Email**: [To be determined]
- **GitHub**: [This repository]
- **Twitter**: [To be determined]

## Acknowledgments

- **Wendy Northcutt** for creating the original Darwin Awards concept
- **Yihui Xie** for creating bookdown
- All the contributors who shared their stories with honesty and humor
- The friends, family, and strangers who saved these idiots from themselves
- Gravity, electricity, fire, and wildlife for being patient enough to give us second chances

## Status

**Current Status**: In development

- [x] Project structure created
- [x] Sample chapters drafted
- [ ] Story collection in progress
- [ ] Full content development
- [ ] Editorial review
- [ ] Publication

---

**Remember**: If you're alive to read this, you've already won by not winning. Let's keep it that way.

---

*Last updated: [Date]*

*Built with ❤️ and a healthy respect for physics, chemistry, and basic common sense.*