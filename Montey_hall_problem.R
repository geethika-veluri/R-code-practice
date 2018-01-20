
# Montey hall problem

Wins_list <- c()
for (i in 1:100000)
{
  Win_status <- NULL
  boxes_magician_eye <- c("box1","box2", "box3")
  boxes_player_eye <- c("b1","b2", "b3")
  
  cat_box <- which(boxes_magician_eye==sample(boxes_magician_eye,1))
  Initial_pick <- which(boxes_player_eye==sample(boxes_player_eye,1))
  Reveal_box <- which(boxes_magician_eye==sample(boxes_magician_eye[-c(Initial_pick,cat_box)],1))
  Final_pick <- which(boxes_magician_eye==(boxes_magician_eye[-c(Initial_pick,Reveal_box)]))
  # cat_box
  # Initial_pick
  
  Win_status <- ifelse(Final_pick==cat_box,1,0)
  Win_status
  Wins_list <- c(Wins_list,Win_status)
}

Win_percentage <- mean(Wins_list, na.rm=F)
Win_percentage
