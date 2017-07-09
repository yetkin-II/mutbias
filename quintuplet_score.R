
quintuplet_score = function(quintuplet){
  quintuplet_split = strsplit(quintuplet,"")[[1]]
  scores_from_each_startpoint = sapply(1:4, function(i) {
    j = i+1
    s = 1
    while((quintuplet_split[i]==quintuplet_split[j]) & (j<=5)) {
      s = s+1
      j = j+1
    }
    s
  })
  max_score = max(scores_from_each_startpoint)
  return(max_score)
}