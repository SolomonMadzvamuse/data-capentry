library(tidyverse)
Select(surveys,species_id,weight)
filter(surveys,year==1995)
Select(surveys,species,weight)
select(surveys,species_id,weight)
surveys %>%
  filter(year==1995) %>%
  select(species_id,weight) 
EXER<- surveys %>%
  filter(weight <5) %>%
  select(species_id,sex,weight)

Data_Weight_Kg <- surveys %>%
  mutate(weight_kg=weight/1000)

surveys %>%
mutate(weight_kg=weight/1000,weight_kg*2)

KITI <- surveys %>%
  mutate(weight_kg=weight/1000,weight_kg2=weight_kg2*2) %>%
  head(10)

Pork <- surveys %>%
  filter(!is.na(weight)) %>%
  mutate(weight_kg=weight/1000,weight_kg2=weight_kg*2) 


surveys %>%
  group_by(sex) %>%
  summarise(mean_weight=mean(weight,na.rm=TRUE))




surveys %>%
  group_by(sex)

WZ<- surveys %>% 
  filter(!sex=="") %>%
  filter(!is.na(weight)) %>%
  group_by(sex,species_id) %>%
  summarise(mw=mean(weight),mirw=min(weight))

COUNTING_MALE <- surveys %>%
  filter(!sex=="") %>%
  count(sex)

DoRange <- surveys %>%
  filter(!sex=="") %>%
  count(sex, species) %>%
arrange(desc(n))


















            