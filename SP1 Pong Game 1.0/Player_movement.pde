void movePlayer1(){ //moves player1 by checking if the user is pressing W or S (up or down)
  if(keyPressed){
    if(key == 'w' || key == 'W'){ 
      player1Y -= playerSpeed;
    } else if(key == 's' || key == 'S'){
      player1Y += playerSpeed;
    }
  }
  
  player1Y = constrain(player1Y, 0, height - playerHeight); //makes sure the player cant go outside the window. 
}

void movePlayer2(){ //moves player1 by checking if the user is pressing arrow up or arrow down
  if(keyPressed){
    if(keyCode == UP){
      player2Y -= playerSpeed;
    } else if(keyCode == DOWN){
      player2Y += playerSpeed;
    }
  }
  
  player2Y = constrain(player2Y, 0, height - playerHeight);
}
