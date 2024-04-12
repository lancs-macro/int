library(ihpdr)
library(ggplot2)
library(dplyr)
library(transx)
library(forcats)

raw <- ihpdr::ihpd_get(version = "2303")

unique(raw$country)

raw %>%
  group_by(country) %>%
  mutate(rhpi = transx::ldiffx(rhpi)*100) %>%
  filter(row_number()==n()) %>%
  filter(!country %in% c("Aggregate - 2005 Fixed Weights", "Aggregate - Dynamic Weights"))
  ungroup() %>%
  mutate(country = fct_reorder(country, rhpi, .desc = TRUE)) %>%
  ggplot(aes(x = country, y = rhpi)) +
  geom_col() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))



raw %>%
  group_by(country) %>%
  mutate(rpdi = transx::ldiffx(rpdi)*100) %>%
  filter(row_number()==n()) %>%
  ungroup() %>%
  mutate(country = fct_reorder(country, rpdi, .desc = TRUE)) %>%
  ggplot(aes(x = country, y = rpdi)) +
  geom_col()


raw %>%
  group_by(country) %>%
  mutate(afford = rhpi/rpdi) %>%
  mutate(afford = transx::ldiffx(afford)*100) %>%
  filter(row_number()==n()) %>%
  ungroup() %>%
  mutate(country = fct_reorder(country, afford, .desc = TRUE)) %>%
  ggplot(aes(x = country, y = afford)) +
  geom_col()
