#summary of student support data from survey of PIs 

library(here)

data <- read.csv(here("2021","StudentSupportSurvey_Responses2021.csv"))

UW <- data[which(data$University == "UW"),]

(stud.quart.UW <- sum(UW$StudentQuarters_Semesters_1,na.rm=TRUE)+sum(UW$StudentQuarters_Semesters_2,na.rm=TRUE)+sum(UW$StudentQuarters_Semesters_3,na.rm=TRUE)+sum(UW$StudentQuarters_Semesters_4,na.rm=TRUE) )
(stud.summer.UW <- length(which(UW$StudentSummers_1 == "Yes")) + length(which(UW$StudentSummers_2 == "Yes")) + length(which(UW$StudentSummers_3 == "Yes")) + length(which(UW$StudentSummers_4 == "Yes")) )
(post.quart.uW <- sum(UW$PostdocQuarters_Semesters,na.rm=TRUE)  )
(post.summer.UW <- length(which(UW$PostdocSummers_1 == "Yes"))  )

WSU <- data[which(data$University == "WSU"),]

(stud.quart.UW <- sum(WSU$StudentQuarters_Semesters_1,na.rm=TRUE)+sum(WSU$StudentQuarters_Semesters_2,na.rm=TRUE)+sum(WSU$StudentQuarters_Semesters_3,na.rm=TRUE)+sum(WSU$StudentQuarters_Semesters_4,na.rm=TRUE) )
(stud.summer.UW <- length(which(WSU$StudentSummers_1 == "Yes")) + length(which(WSU$StudentSummers_2 == "Yes")) + length(which(WSU$StudentSummers_3 == "Yes")) + length(which(WSU$StudentSummers_4 == "Yes")) )
(post.quart.uW <- sum(WSU$PostdocQuarters_Semesters,na.rm=TRUE)  )
(post.summer.UW <- length(which(WSU$PostdocSummers_1 == "Yes"))  )
