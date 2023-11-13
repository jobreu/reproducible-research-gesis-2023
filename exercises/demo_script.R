
# Load packages & data ----------------------------------------------------

# Load packages
library(dplyr)
library(ggplot2)
library(scales)
library(correlation)
library(sjPlot)

# Load the data
data <- read.csv("./data/ZA5665_GESIS_Panel_v49-0-0_CSV_synthetic-data.csv")

# Data Wrangling ----------------------------------------------------------

# Rename variables
data <- data |>
  rename(party_id = jazc039a,
         survey_eval = jczq009a,
         facebook = jczf030a,
         insta = jczf032a,
         tiktok = jczf039a,
         compassion_refugees = jczj074a,
         sympathy_refugees = jczj075a,
         refugees_neighbor = jczj079a,
         connection_eu = jcdu080a,
         ukraine_eu = jcdu081a,
         russia_threat = jcdu082a,
         trust_people = jcct087a)

# Recode sex into a factor with 1 = male and 2 = female
data <- data |>
  mutate(sex_factor = factor(sex, levels = c(1, 2), 
                             labels = c("male", "female")))

# Compute age & create age groups based on the reported year of birth
data <- data |>
  mutate(age = year - yob)

# Create age groups
data <- data |>
  mutate(age_group = factor(case_when(age < 30 ~ "Under 30",
                                      age < 40 ~ "30 to 39",
                                      age < 50 ~ "40 to 49",
                                      age < 60 ~ "50 to 59",
                                      TRUE ~ "60+"),
                            levels = c("Under 30",
                                       "30 to 39",
                                       "40 to 49",
                                       "50 to 59",
                                       "60+"),
                            ordered = TRUE))

# Recode party_id into a factor with 1: CDU/CSU, 2: SPD, 3: FDP, 4: DIE LINKE, 5: GRUENE, 6: AfD, 7: Other party
data <- data |>
  mutate(party_factor = factor(party_id, levels = c(1, 2, 3, 4, 5, 6, 7), 
                               labels = c("CDU/CSU", "SPD", "FDP", "DIE LINKE", "GRUENE", "AfD", "Other party")))

# Sample descriptives -----------------------------------------------------

summary(data$age)
sd(data$age)

table(data$age_group)

table(data$sex_factor)

prop.table(table(data$facebook))*100
prop.table(table(data$insta))*100
prop.table(table(data$tiktok))*100

# Descriptive group comparisons -------------------------------------------

## Frequency tables -------------------------------------------------------
round(prop.table(table(data$sex_factor, data$facebook), margin = 1)*100, 2)
round(prop.table(table(data$age_group, data$facebook), margin = 1)*100, 2)

round(prop.table(table(data$sex_factor, data$insta), margin = 1)*100, 2)
round(prop.table(table(data$age_group, data$insta), margin = 1)*100, 2)

round(prop.table(table(data$sex_factor, data$tiktok), margin = 1)*100, 2)
round(prop.table(table(data$age_group, data$tiktok), margin = 1)*100, 2)

## Plots ------------------------------------------------------------------

# Party ID per age group
# Calculate the percentage of party identification per age group
percentage_party_identification <- data |>
  filter(!is.na(party_factor)) |>
  group_by(age_group, party_factor) |>
  summarize(n = n()) |>
  mutate(percentage = n / sum(n) * 100)

# Create a grouped bar chart using ggplot
ggplot(percentage_party_identification, aes(x = age_group, y = percentage, fill = party_factor)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Party Identification per Age Group",
       x = "Age Group",
       y = "Percentage",
       fill = "Party Identification") +
  scale_fill_manual(values = c("#000000", "#FF0000", "#FFD700", "#800080", "#008000", "#0000FF", "#808080")) +
  theme_minimal()

# Correlation analysis ----------------------------------------------------
data |>
  select(survey_eval,
         compassion_refugees,
         sympathy_refugees,
         refugees_neighbor,
         connection_eu,
         russia_threat,
         trust_people) |>
  correlation()

# Regression analysis -----------------------------------------------------

# Linear regression predicting survey evaluation
reg1 <- lm(survey_eval ~ age + sex_factor + trust_people, data = data)

summary(reg1)

plot_model(reg1,
           show.values = TRUE, 
           value.offset = .3,
           type = "std",
           title = "Linear regression predicting survey evaluation")

# Logistic regression predicting Instagram use
reg2 <- glm(insta ~ age + sex_factor + facebook, data = data, binomial(link = "logit"))

summary(reg2)

plot_model(reg2,
           show.values = TRUE, 
           value.offset = .3,
           title = "Logistic regression predicting Instagram use")
