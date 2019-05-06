# Read file
library(readr)
reference_file <- read_csv("Google Drive (aa4235@columbia.edu)/S19 - Empirical Methods/project/reference_file.csv", 
                             +     col_types = cols(X1 = col_skip(), genres = col_skip()))
View(reference_file)
reference_file$gender = factor(reference_file$gender)
reference_file$ref = factor(reference_file$ref)
#Chi-square test
library(MASS) 
tbl = table(reference_file$gender, reference_file$ref) 
tbl
chisq.test(tbl) 
# Result: 
# 	Pearson's Chi-squared test with Yates' continuity correction
#   data:  tbl
#   X-squared = 92.45, df = 1, p-value < 2.2e-16

# Visualize Results
p1 = ggplot(reference_file, aes(x = gender, fill = ref)) + geom_bar() + 
  labs(title="Male References by Gender") + scale_fill_discrete(name="Male Reference",
                                                                breaks=c("0", "1"),
                                                                labels=c("No", "Yes"))+

p2 = ggplot(reference_file, aes(x = gender, fill = ref)) + 
  geom_bar(position = "fill") + labs(y = "proportion") + 
  labs(title="Male References by Gender") + scale_fill_discrete(name="Male Reference",
                        breaks=c("0", "1"),
                        labels=c("No", "Yes"))+
theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                   panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))


library(gridExtra)

#show side by side
grid.arrange(p1,p2, ncol=2)

#show each on a graph
grid.arrange(p1, ncol=1)
grid.arrange(p2, ncol=1)
