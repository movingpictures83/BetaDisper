
dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")

library(vegan)
library(cultevo)

input <- function(inputfile) {
  pfix = prefix()
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
   # Need to get the three files
   dm <<- paste(pfix, parameters["distancematrix", 2], sep="/")
   groupnames <<- paste(pfix, parameters["groups", 2], sep="/")
   #measure <<- "Simpson"
   #HMP <<- import_qiime(otu.path, map.path, tree.path, parseFunction = parse_taxonomy_qiime)
}

run <- function() {
x <<- read.table(dm)
distances <<- as.dist(x, upper=FALSE)
#dist <- read.dist("final_dm.csv")
#print(dist)
#dist <- as.dist(dist)
groups <<- readLines(groupnames)
}

output <- function(outputfile) {
print(betadisper(distances,groups))
}
