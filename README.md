# Workflows for Reproducible Research with `R` & `git`

Materials for the 2023 [*GESIS*](https://www.gesis.org/en/home/) workshop ["Workflows for Reproducible Research with R & Git"](https://training.gesis.org/?site=pDetails&child=full&pID=0xBFA25C61BAA646DCB0EBAC523EBAF532)

by [Johannes Breuer](https://www.johannesbreuer.com/), [Bernd Weiß](https://www.gesis.org/en/institute/staff/person/Bernd.Weiss), and [Arnim Bleier](https://www.gesis.org/en/institute/staff/person/arnim.bleier)

[![](https://licensebuttons.net/l/by/3.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/) 
Please link to the [workshop GitHub repository](https://github.com/jobreu/reproducible-research-gesis-2022)

---

# Workshop description

The workshop focuses on reproducible research in the quantitative social and behavioral sciences. In the context of this workshop, reproducibility means that other researchers can fully understand and rerun your data preparation and statistical analyses. However, the workflows and tools covered in this workshop will also help in facilitating your own work as they allow you to automate and track analysis and reporting tasks. In addition to a conceptual introduction to the methods and key terms around reproducible research, this workshop focuses on procedures for maximizing the reproducibility of data analyses using `R`. After discussing essential definitions and dimensions of reproducibility, we will cover some computer literacy and project organization basics that are helpful for conducting reproducible research (e.g., folder structures, naming schemes, or command-line interfaces). After that, we will focus on version control, dependency management, and computational reproducibility. The tools we will use for that include `git` and *GitHub*, `R` packages for dependency management as well as *Binder*, a tool to package and share reproducible and interactive analysis environments.

## Target group

The workshop is targeted at participants who have (at least some) experience with `R` and want to learn (more) about workflows and tools for making the results of their research reproducible.
 
## Learning objectives

By the end of the course participants should:
-  have gained important insights into key concepts of reproducible research and recommended best practices
-  be able to work with state-of-the art frameworks and tools, such as `R Markdown`, `Jupyter`, `Git`, and *Binder*
-  be able to publish reproducible computational analysis pipelines with `R`

## Prerequisites

Participants should have some basic knowledge of `R`. While this is not required per se, participants who have experience doing statistical analysis in `R` will benefit most from this course. To facilitate applying the methods covered in the course to their work, we recommend that participants ensure to install all necessary software on their computers before the start of the course. 

## Timetable & content

### Day 1

| Time | Topic | Slides | Exercises | Solutions |
| ---: | :---- | :----: | :-------: | :-------: |
| 09:30 - 10:45 | Introduction | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/Introduction.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/Introduction.pdf) | - | - |
| 10:45 - 11:00 | *Coffee Break* | - | - | - |
| 11:00 - 12:00 | Computer literacy | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/comp-literacy.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/comp-literacy.pdf) | see slides | see [create-project.sh](https://github.com/jobreu/reproducible-research-gesis-2022/blob/main/content/sh/create-project.sh) |
| 12:00 - 13:00 | *Lunch Break* | - | - | - |
| 13:00 - 15:00 | Git & GitHub - Part I | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/RMarkdown.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/RMarkdown.pdf) | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/exercises/Exercise_RMarkdown.html) | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/solutions/Exercise_RMarkdown.html) |
| 15:00 - 15:15 | *Coffee Break* | - | - | - |
| 15:15 - 16:30 | Git & GitHub - Part II | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/intro-git.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/intro-git.pdf) | see slides | - |
| 16:30 - 17:00 | Q&A | - | - | - |

### Day 2

| Time | Topic | Slides | Exercises | Solutions |
| ---: | :---- | :----: | :-------: | :-------: |
| 09:00 - 09:30 | Recap Day 1 | - | - | - |
| 09:30 - 11:00 | Dependency management | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/Git_RStudio.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/Git_RStudio.pdf) | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/exercises/Exercise_Git_Rstudio.html) | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/solutions/Exercise_Git_Rstudio.html) |
| 11:00 - 11:15 | *Coffee Break* | - | - | - |
| 10:45 - 11:45 | Jupyter Notebooks & Binder | [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/Binder.pdf) | [Project](https://github.com/arnim/ggplot2Demo) | - |
| 11:15 - 12:00 | Saving computational environments | - | [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/exercises/Binder_exercise.pdf) | [Project](https://github.com/arnim/COVID-19_Binder) |
| 12:00 - 13:00 | *Lunch Break* | - | - | - |
| 13:00 - 14:30 | Notebooks & Binder | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/Sharing_publishing.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/Sharing_publishing.pdf) | - | - |
| 14:30 - 14:45 | *Coffee Break* | - | - | - |
| 14:45 - 16:00 |Build your own Binder | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/intro-collab-github.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/intro-collab-github.pdf) | see slides | - |
| 16:00 - 17:00 | Recap & Outlook | [HTML](https://jobreu.github.io/reproducible-research-gesis-2022/slides/Recap_outlook.html), [PDF](https://raw.githubusercontent.com/jobreu/reproducible-research-gesis-2022/main/slides/Recap_outlook.pdf) | - | - |

## Acknowledgments

The `R Markdown` parts of this workshop were created using the `R` packages [`xaringan`](https://github.com/yihui/xaringan), [`unilur`](https://koncina.github.io/unilur/), and [`woRkshoptools`](https://github.com/StefanJuenger/woRkshoptools). The materials are based on an [earlier version of this workshop](https://github.com/jobreu/reproducible-research-gesis-2022) and a [similar course by Frederik Aust and Johannes Breuer](https://github.com/crsh/reproducible-research-practices-workshop).