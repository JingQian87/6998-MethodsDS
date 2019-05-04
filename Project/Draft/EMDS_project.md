### Data Exploration

#### Dataset

![屏幕快照 2019-05-03 下午8.06.57](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/屏幕快照 2019-05-03 下午8.06.57.png)

30% lines by female characters.
70% lines by male characters.

mention the chameloen paper?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#### Year Distribution 

![屏幕快照 2019-05-03 下午8.10.36](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/屏幕快照 2019-05-03 下午8.10.36.png)

Skewed towards recent years

%%%%%%%%%%%%%%%%%%%%

#### Genre Distribution

![屏幕快照 2019-05-03 下午8.10.46](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/屏幕快照 2019-05-03 下午8.10.46.png)

One movie is labeled with multiple genres

%%%%%%%%%%%%%%%%%%%

### Hypo 2

(slide) Our second hypothesis is female characters have higher importance in specific genres, like romance and drama.

Here we discuss importance in two aspects: length of dialogue and role in conversation.





(slide) First, let’s look at the female and male dialogue length. We define the dialogue length as the number of lines. We also checked the definition as number of words and get similar result.

Ratio = #male lines / # total lines

![Hypo1_lines](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/Hypo1_lines.png)



(slide, plot 1) In this plot, we show the dialogue length ratio of each gender, orange is female and purple is male. We could see that Male roles dominate movie dialogues in almost all genres, especially history. So history is really his story?

Female roles have more lines in horror and romance movies than average, but not in drama.

We would notice that there is an orange line represent all female lines, it’s adult. From previous genre distribution, we could see that adult only have one movie, so the result may not be general.



(slide) Then we look at the conversation role. Here we differ the conversation role as initiator and responder. 

Initiator is defined as the first character of a conversation and responder is the second character of a conversation.

We infer that the initiator is the more proactive role in one conversation.

Here we check four types of conversation: ff, fm, mf, and mm.

![Hypo2](/Users/mac/Desktop/EmpiricalMethodsDS/Project/Draft/Hypo2.png)

(slide) similar to previous plot, male start (and respond to) most conversations

Female starts conversation more in adult, short and documentation, but may be outliers.

No female-female conversations in history, adventure, war and animation.

%%%%%%%%%%%%%%%%%%%

### Hypo 3

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