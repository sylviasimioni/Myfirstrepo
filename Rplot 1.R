library(dplyr)
library(ggplot2)


SCC <- readRDS(file = "C:/Users/Sylvia Simioni/Documents/coursera/Explonatory Data Analysis/Source_Classification_Code.rds")
NEI <- readRDS(file = "C:/Users/Sylvia Simioni/Documents/coursera/Explonatory Data Analysis/summarySCC_PM25.rds")
dim(SCC)
dim(NEI)

head(NEI)
head(SCC)
national<- merge(NEI,SCC, by="SCC")
national$year<- as.factor(national$year)
head(national)

national_a<- tapply(national$Emissions, national$year, sum)
head(national_a)


#Questao 1

national_a<- tapply(national$Emissions, national$year, sum)
national_a<- barplot(national_a, 
                     main=" Fine Particulate Emissions \n Total United States\n",
                     xlab="Years",ylab=" Amount of PM2.5 emitted, in tons")
