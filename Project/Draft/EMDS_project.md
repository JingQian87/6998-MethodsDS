### Data Exploration

#### Dataset

In this paper,  we used the Cornell Movie Dialogs Corpus\cite{Danescu-Niculescu-Mizil2011ChameleonsDialogs}. This corpus contains a large metadata-rich collection of fictional conversations extracted from raw movie scripts, including movie metadata (genres, release year, IMDB rating, etc), character metadata (character name, gender, movie, etc) and conversation metadata. 

Because our hypotheses are gender-related, we extracted only the dialogues from characters that with gender labeled. The information regarding the data we analysed in this paer is shown as following: 

| Years             | 1930-2009 |
| ----------------- | --------- |
| Female Characters | 966       |
| Male Characters   | 2049      |
| Utterances        | 242023    |
| Movies            | 600       |

We could see that the number of identified male characters is about twice as that of female characters, which should be kept in mind when doing later difference analysis between genders.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#### Year Distribution 

<font color='red'>纵坐标有问题</font>Skewed towards recent years

%%%%%%%%%%%%%%%%%%%%

#### Genre Distribution

![](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/genre_dist.png)

We also showed the genre distribution of the 600 movies we analysed in Fig <font color='red'>图片引用</font> . One should know that one movie may be classified to multiple genres, like the movie *2001: a space odyssey* was labeled as 'adventure', 'mystery' and 'sci-fi'. 

We could see from the plot that the genre distribution of movies was highly uneven. The top three  genres with highest number of movies are drama, thriller and comedy, in which drama has over 300 movies, more than half of the total movies. The least three are adult, documentary and short, each of which has less than 10 movies. 

When discussing the female characters in different genre and period in the following sections, the readers should notice that results of some genres and years are based on relatively small number of movies.

<font color='red'>男女角色数量自己本身的分布？</font>

%%%%%%%%%%%%%%%%%%%

### Hypo 2

In this section, we examined the importance of female character roles in movie dialogues and how this importance varied from genre to genre. So our first hypotheis is: Female characters have a higher importance in specific genre.

There are various ways to evaluate whether female characters are important in the movies: like showing gender distribution\cite{Neville2018FewerFilms} or comparing speaking time of different genders \cite{Glascock2001GenderTelevision}.  Here we discussed importance of female characters from dialogue corpus in two aspects: dialogue length and the role in conversation.

#### 2.1 Females tend to have more lines in dramatic and romantic movies and fewer lines in other genres than male characters.

In this sub-hypothesis, we defined the dialogue length as the number of lines in one movie \footnote{We also checked the definition as number of words and got similar result.}. In Fig.<font color='red'>图</font>, we showed the dialogue lengths from each gender for individual genre. Considering the variant dialogue lengths from movie to movie, genre to genre, here we showed the ratio of dialogue length instead of actual counts. For the same concerning, we calculate the ratio in each genre instead of each movie, though which we expect to balance out the fluctuation in the dialogue lengths in different movies. That is to say, the purple bars represent the ratio between male line numbers and total line numbers while the organge bars represent the ratio between female and total \footnote{Note here the total line numbers equal to male line numbers plus female line numbers, which don't include the lines spoken by characters without gender labels}.

The ratio between male line numbers and total line numbers from all genres, which is shown by the black dashed line, is above 0.7. Hence male characters dominate movie dialogues in general. This ratio is close to the ratio of male character numbers to the total character numbers.  

![Hypo1_lines](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/Hypo1_lines.png)

For individual genre, we use orange bars to present female dialogue length ratio while use purple bars for male. One could see that male characters dominate movie dialogues in almost all genres \footnote{There is one peculiar genre, adult, which is denoted by the single orange bar and means only female characters are involved in the movie dialogue. However, as we showed in the genre distribution in Fig.<font color='red'>图</font>, there is only one adult movie in our analysis. So this result of all female dialogues may not be general.} with a minimum about 0.6 and maximum less than 0.9. The top three genres with highest female dialogue length ratio are horror, domumentary and romance (exclude adult) while those with highest male dialogue length ratio are history, war and animation. So this sub-hypothesis fails: the ratio of female dialogue length vary from genre to genre, but in general, females tend to have fewer lines than males. The female dialogue length ratio of drama is close to the averaged value of all genres while that of romance is higher than average, close to 0.4.

#### 2.2 Females tend to have more significant conversation roles in dramatic and romantic movies and fewer in other genres.

In this sub-hypothesis, we examined what conversation roles female characters in movies are. Here we differed the conversation role as initiator and responder:initiator is defined as the first character of a conversation and responder is the second character of a conversation. We infered that the initiator is the more proactive role in one conversation and hence if there are more female conversation initiators than male in one movie, women have higher importance than men in that movie.

Then there are four types of conversation: female-female, female-male, male-female and male-male, which are denoted by orange, nude, lavendar and  purple from top to bottom in Fig. <font color='red'>图</font>.

![Hypo2](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/Hypo2.png)

Similar to previous plot, males started most conversations in movie dialogues with an initiate rate around 0.7, represented by the black dashed line. For most genres, the probability that males instead of females start conversations is higher. This may due to the fact that there are twice as many male characters of female characters and nearly half of the conversations are between males. 

As mentioned before, the adult genre only has one movie and only includes female diaglogues, it is not surprising that all conversations in that movie are classified female to female. In short and documentation, females start more conversations than male, this is mainly due to their high proportion of female-male conversations. Other than these two genres, males and females have close proportions to be conversation initiators for the conversations between two genders.

We would also like to point out that there are almost no female-female conversations in history and animation. A movie without conversations between two female characters is considered lack of female representation according to Bechdel test mentioned above\cite{bechdel1986dykes}. On the opposite, the top three genres with the highest proportion of female-female conversations are documentary, horror and western. Other than the conversation roles, we discussed the conversation content between different types of conversations in detail in Hypothesis 3. 

So this sub-hypothesis is right 

%%%%%%%%%%%%%%%%%%%

### Hypo 3

Following previous hypothesis 

(slide) Our third hypothesis is about the relationship between movie rating and female role importance.

Here we define female presence of a movie is the ratio of female dialogues to the total dialogues in that movie.

![Hypo3](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/Hypo3.png)

(slide) Here is the plot. X-axis is movie ratings, y is the female presence at given movie ratings.

This plot suggests that  hypo 3 is true. Highly rated movies do have stronger male presence.



%%%%%%%%%%%%%%%%%%%

### Conclusion

(slide) Conclusion from Amal.



For almost all genres, male roles are the dominant and proactive roles. Women have higher importance in romance and horror than other genres, not drama.

Highly rated movies tend to have stronger male presence.



(slide) We expect to have more and better data, more diverse on time and genre.

We could apply labeling tech for genders, like from text or IMDB, instead of using given labels.

We could also have different definition of importance, like being mentioned frequently, instead of having more dialogue or start conversations often