# BMS 225A Workshop on Reproducible Research and Data Exploration

GK Fragiadakis and the Students of BMS225A
January 5th, 2021

##  Motivation

The goal of this workshop is to lower the barrier of entry to biological data science, and to instill good practices as we do it. 
We will cover: 

- Principles of reproducible research
- Intro to version control
- Data exploration and resources 

## Reproducible Research

**Resources:**

- installing R: https://www.r-project.org/
- installing RStudio: https://rstudio.com/products/rstudio/download/

- Karl Browman's [Tools for Reproducible Research](http://kbroman.org/Tools4RR/) and [initial steps towards reproducible research](https://kbroman.org/steps2rr/)
- Git resources: Karl Browman's [GitHub Guide](https://kbroman.org/github_tutorial/) and [GitHub's guides](https://guides.github.com/)
- R package resources: [Hilary Parker's guide (simplest)](https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/), [Karl Browman's R package primer](https://kbroman.org/pkg_primer/), and [Hadley Wickham's R package Book](http://r-pkgs.had.co.nz/)

**Principles:**

1. Organize your data and code
2. Everything with a script
3. Use version control
4. Turn repeated code into functions (and other good coding practices)
5. Turn scripts into reproducible reports
6. Package functions for future use

## Version control

In this workshop we will cover an introduction to version control using git on GitHub. 

### Sample git workflow (your git cheatsheet)

1. Create repo on GitHub
2. clone repo locally
    - `git clone repo-url`
3. locally create a branch
    - `git checkout -b branch-name`
    - to see which branch you're on and what exists: `git branch`
    - to switch between branches: `git checkout branch-name`
4. make changes on that branch
5. Add commits on that branch
    - `git status` (will show you what files have changes and if they are staged)
    - `git add file-name` (staging your file)
    - `git commit -m "commit description"`
6. push that branch to GitHub: push commits every time you come to a stopping point (at least each day)
    - `git push origin branch-name`
7. when ready, create pull request on GitHub
8. review on GitHub
9. merge branch to master
10. delete branch
11. then locally, pull down master
    - `git pull origin master`
12. delete branch locally
    - `git branch -d branch-name`
13. Run it back from step 3

**Additional tips**: 

Make a .gitignore file with files to ignore by git:
- `touch .gitignore`
- write in the names of files (or like *.pdf) you don't want to have appear

To see changes from the last commit:
- `git diff HEAD`

To un-stage a file:
- `git reset name-of-file`

Making a repository locally instead:
- `git init`

## Exploratory data analysis

**Resources**

- Hadley Wickham's [R for Data Science](https://r4ds.had.co.nz/)

1. Pre-process and tidy your data
2. Explore your data using the Transform-Visualize-Model loop
3. Communicate results

## Resources for getting started with CyTOF and scRNAseq

**CyTOF resources:**

- data pre-processing (normalization, debarcoding, sample cleanup): [premessa](https://github.com/ParkerICI/premessa)
- gating tools: [Cytobank](cytobank.org) [CellEngine](https://www.primitybio.com/cellengine.html)

**scRNAseq resources:**

- pre-processing and many analyses in [Seurat vignettes](https://satijalab.org/seurat/vignettes.html)
- some background reading on [single-cell analysis](https://osca.bioconductor.org/)

## Getting help 

We covered a lot, now its time to try it on your own and to reach out if you have further questions as you're going. 

[Our office hours](https://dscolab.ucsf.edu/training)
[Our contact info](https://dscolab.ucsf.edu/contact-us)





