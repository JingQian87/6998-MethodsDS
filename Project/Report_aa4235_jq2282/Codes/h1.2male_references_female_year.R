# Merge files
movie_data = merge(liwc_results_movie_line, movie_titles_metadata, by.x="movie_id", by.y="X1", sort = TRUE)
View(movie_data)
movie_characters_metadata = movie_characters_metadata[!movie_characters_metadata$X5 == '?',] 
movie_characters_metadata$X5 <- tolower(movie_characters_metadata$X5)

movie_data = merge(movie_data, movie_characters_metadata, by.x="user_id", by.y="X1", sort = TRUE)
View(movie_data)
movie_data$X5.y =factor(movie_data$X5.y)
movie_data$X3.x<-as.numeric(format(movie_data$X3.x, "%Y")) 
movie_data$decade = 10 * floor(movie_data$X3.x/10)
movie_data = movie_data[!movie_data$decade == 1920,] 
movie_data = movie_data[!movie_data$decade == 2010,] 

plant.mod1 = lm(male ~ X5.y+X3.x+X5.y*X3.x, data = movie_year_gender[!movie_year_gender$X5.y == 'm',])
summary(plant.mod1)
plant.mod1 = lm(male ~ X3.x, data = movie_data[!movie_data$X5.y == 'm',])
summary(plant.mod1)
ggplot(movie_data, aes(x = movie_data$X5.y, y = movie_data$male)) + geom_boxplot()

library(Rmisc)
movie_year_gender <- summarySE(movie_data, measurevar="male", groupvars=c("decade","X5.y"))

ggplot(movie_year_gender[!movie_year_gender$X5.y == 'm',], aes(x=decade, y=male, colour=X5.y)) + 
  geom_errorbar(aes(ymin=male-ci, ymax=male+ci), width=.1) +
  geom_line() +
  labs(title="Use of male references in female characters lines", y = "Mean of Male references", x= "Decade", colour="Gender of character")+ 
  scale_fill_discrete(name="Gender",
                      breaks=c("f", "m"),
                      labels=c("Female", "Male"))+
  geom_point() + theme_bw() + theme(panel.border = element_blank(), panel.grid.major = element_blank(),
                                    panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))


pd <- position_dodge(1) # move them to the left and right
ggplot(movie_year_gender, aes(x=decade, y=male, colour=X5.y)) + 
  geom_errorbar(aes(ymin=male-ci, ymax=male+ci), width=.1, position=pd) +
  geom_line(position=pd) +
  geom_point(position=pd, size=2) +
  labs(title="Use of male references in characters lines", y = "Mean of Male references", x= "Decade", colour="Gender of character")+ 
  scale_fill_discrete(name="Gender",
                      breaks=c("f", "m"),
                      labels=c("Female", "Male"))

