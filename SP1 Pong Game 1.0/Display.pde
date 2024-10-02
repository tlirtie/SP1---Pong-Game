void displayBall(){ //loads the ball itself in
  fill(255);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
}

void displayPlayers(){//loads the players (blocks to the side of the screen)
  fill(255);
  rect(50, player1Y, playerWidth, playerHeight);
  rect(width - 50 - playerWidth, player2Y, playerWidth, playerHeight); 
}

void displayScores(){
  textAlign(CENTER);
  textSize(32);
  fill(255);
  text("Score: " + scores[0], width / 4, 50); //Score for player 1 (because it's on the left side of the screen, which is the side that player 1 controls)
  text("Score: " + scores[1], 3 * width / 4, 50); //Score for player 2 (because it's on the right side of the screen, which is the side that player 2 controls)
}
