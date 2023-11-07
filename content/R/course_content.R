course_content_1 <-
  tibble::tribble(
    ~Time, ~Topic,
    "09:30 - 10:45", "Introduction",
    "10:45 - 11:00", "Coffee Break",
    "11:00 - 12:00", "Computer literacy",
    "12:00 - 13:00", "Lunch Break",
    "13:00 - 15:00", "Git & GitHub - Part 1",
    "15:00 - 15:15", "Coffee Break",
    "15:15 - 16:30", "Git & GitHub - Part 2",
    "16:30 - 17:00", "Q & A"
  ) %>%
  knitr::kable() %>%
  kableExtra::kable_styling() %>%
  kableExtra::column_spec(1, color = "gray") %>%
  kableExtra::column_spec(2, bold = TRUE) %>%
  kableExtra::row_spec(2, color = "gray") %>%
  kableExtra::row_spec(4, color = "gray") %>% 
  kableExtra::row_spec(6, color = "gray")

course_content_2 <-
  tibble::tribble(
    ~Time, ~Topic,
    "09:00 - 09:30", "Recap Day 1",
    "09:30 - 11:00", "Dependency management",
    "11:00 - 11:15", "Coffee Break",
    "10:15 - 12:00", "Saving computational environments",
    "12:00 - 13:00", "Lunch Break",
    "13:00 - 14:30", "Binder & Notebooks",
    "14:30 - 14:45", "Coffee Break",
    "14:45 - 16:00", "Build your own Binder",
    "16:00 - 17:00", "Recap & Outlook"
  ) %>%
  knitr::kable() %>%
  kableExtra::kable_styling() %>%
  kableExtra::column_spec(1, color = "gray") %>%
  kableExtra::column_spec(2, bold = TRUE) %>%
  kableExtra::row_spec(3, color = "gray") %>%
  kableExtra::row_spec(5, color = "gray") %>%
  kableExtra::row_spec(7, color = "gray")