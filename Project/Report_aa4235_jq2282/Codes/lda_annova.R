library(readr)
lda_results_ff_2 <- read_csv("Google Drive (aa4235@columbia.edu)/S19 - Empirical Methods/project/lda_results_ff_2.csv")
View(lda_results_ff_2)
# lda_results_ff_2$decade = factor(lda_results_ff_2$decade)

#lda_results_ff_2= factor(lda_results_ff_2$decade,
#                          levels=unique(lda_results_ff_2$decade))
library(lda_results_ff_2)

headTail(lda_results_ff_2)

str(lda_results_ff_2)

summary(lda_results_ff_2)
library(dplyr)
library(tidyr)
lda_results_ff_2$decade = lda_results_ff_2$decade*10

table_topic_decade_count <- lda_results_ff_2 %>% 
  group_by(decade, Dominant_Topic) %>%
  summarise(Freq = n())
table_topic_decade_count 

library(nlme)
model.a = gls(Freq ~ decade,
              data=table_topic_decade_count)

ACF(model.a,
    form = ~ decade | Dominant_Topic)
#   lag       ACF
# 1   0 1.0000000
# 2   1 0.8240763
# 3   2 0.3975522
# 4   3 0.1747309
# 5   4 0.2157677
# 6   5 0.2948888
# 7   6 0.3197583
# 8   7 0.2419290

model.b = lme(Freq ~ decade, 
              random = ~1|Dominant_Topic,
              data=table_topic_decade_count)

ACF(model.b)

#   lag         ACF
# 1   0  1.00000000
# 2   1  0.68389814
# 3   2  0.03682493
# 4   3 -0.34171971
# 5   4 -0.50348765
# 6   5 -0.75253677
# 7   6 -0.87953819
# 8   7 -0.60151878

model = gls(Freq ~ Dominant_Topic+decade+decade*Dominant_Topic , 
            correlation = corAR1(form = ~ decade | Dominant_Topic,
                                 value = 0.2419290),
            data=table_topic_decade_count,
            method="REML")

library(car)
Anova(model)

library(ggplot2)

group_by(table_topic_decade_count, decade) %>% mutate(percent = Freq/sum(Freq))

ggplot(table_topic_decade_count, aes(x=decade, y=percentage, color=Dominant_Topic)) +
  geom_point()

p2 = ggplot(reference_file, aes(x = gender, fill = ref)) + 
  geom_bar(position = "fill") + labs(y = "proportion") + 
  labs(title="Male References by Gender") + scale_fill_discrete(name="Male Reference",
                                                                breaks=c("0", "1"),
                                                                labels=c("No", "Yes"))
