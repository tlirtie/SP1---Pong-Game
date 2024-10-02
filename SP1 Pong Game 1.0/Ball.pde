void moveBall(){ //moves the ball around the screen, if the ball hits the top or bottom of the window, it goes back up or down
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  if(ballY < 0 || ballY > height){
    ballSpeedY *= -1;
  }
}




void checkCollisions(){ //checks if the ball collides with the border of the window. If it does, then it adds score to one of the players and calls the resetBall() function 
  if(ballX - ballDiameter / 2 < 50 + playerWidth && ballY > player1Y && ballY < player1Y + playerHeight){
    ballSpeedX *= -1;
  }
  
  if(ballX + ballDiameter / 2 > width - 50 - playerWidth && ballY > player2Y && ballY < player2Y + playerHeight){
    ballSpeedX *= -1;
  }
  
  if(ballX < 0){
    scores[1]++; //give a point to player 2 (who has the index 1 in the "scores" array)
    resetBall();
  }
  
  if(ballX > width){
    scores[0]++; //give a point to player 1 (who has the index 0 in the "scores" array)
    resetBall();
  }
}

void resetBall(){ // puts the ball in the middle of the windows again after a player scores
  ballX = width / 2;
  ballY = height / 2;
  ballSpeedX = int(random(3, 6)) * (random(1) < 0.5 ? 1 : -1);
  ballSpeedY = int(random(3, 6)) * (random(1) < 0.5 ? 1 : -1);
}
