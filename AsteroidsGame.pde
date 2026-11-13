Spaceship bob;
Star[] stars = new Star[200];

boolean isTurningLeft = false;
boolean isTurningRight = false;
boolean isAccelerating = false;
boolean isDeAccelerating = false;

public void setup() 
{
  size(500,500);
  background(0);
  bob = new Spaceship();

  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  
  if (isTurningLeft){
    bob.turn(-10);
  }
  if(isTurningRight){
    bob.turn(10);
  }
  if(isAccelerating){
    bob.accelerate(0.5);
  }
  if(isDeAccelerating){
    bob.accelerate(-0.8);
  }
  
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  bob.move();
  bob.show();
}


public void keyPressed()
{
  if (key == 'a') {
    isTurningLeft = true;
  }
  else if (key == 'd'){
    isTurningRight = true;
  }
  else if (key == 'w'){
    isAccelerating = true;
  }
  else if (key == 's'){
    isDeAccelerating = true;
  }
  else if (key == 'h'){
    bob.hyperspace();
  }
}
public void keyReleased()
{
  if (key == 'a'){
    isTurningLeft = false;
  }
  else if (key == 'd'){
    isTurningRight = false;
  }
  else if (key == 'w'){
    isAccelerating = false;
  }
  else if (key == 's'){
    isDeAccelerating = false;
  }
}
