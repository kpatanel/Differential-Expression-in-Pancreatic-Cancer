setwd("/Users/kierapatanella/Desktop/ProgrammingII/Pancreatic_cancer_project/GSE28735_RAW")
rm(list=ls())
source("http://bioconductor.org/biocLite.R")
biocLite("affy")
biocLite("oligo")
biocLite("limma")
library("affy")
library("limma")
#double check directory
getwd()
library("oligo")

#For comparing tumor and nontumor types from patients 1 and 2
x=list.files("/Users/kierapatanella/Desktop/ProgrammingII/Pancreatic_cancer_project/GSE28735_RAW")
data<-ReadAffy(filenames=x)#call filenames=x
#x=list.files()





eset<-affy::rma(data)
#This should give you the file of the gcrma normalized data as a text file:
write.exprs(eset,file="pancreatictvnt_expr.txt")
