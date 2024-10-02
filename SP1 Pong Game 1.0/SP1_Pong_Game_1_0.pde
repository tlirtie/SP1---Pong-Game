int ballX;
int ballY;          
int ballSpeedX;
int ballSpeedY; 
int ballDiameter = 20;      

int player1Y;
int player2Y;  

int playerWidth = 20;
int playerHeight = 100;  
int playerSpeed = 10;  

int scores[] = {0,0}; //an array might not be ideal for keeping scores (though it does work), but I did it because it seems to be a requirement to have arrays

void setup(){
  size(800, 600);
  ballX = width / 2; //starting position of the ball
  ballY = height / 2;
  ballSpeedX = 4;
  ballSpeedY = 4;
  
  player1Y = height / 2 - playerHeight / 2; //players start off in the middle of the screen (y-axis wise)
  player2Y = height / 2 - playerHeight / 2;
}

void draw(){ //order of execution: (in the draw function so it loops forever)
  background(0);
  
  displayBall();
  displayPlayers();
  
  moveBall();
  
  movePlayer1();
  movePlayer2();
  
  checkCollisions();
  
  displayScores();
}
