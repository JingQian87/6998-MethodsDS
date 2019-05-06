initiator <- read.table("~/Downloads/initiator.txt", quote="\"", comment.char="")
View(initiator)
t.test(initiator$V1, initiator$V2)
