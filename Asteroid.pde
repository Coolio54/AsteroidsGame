class Asteroid extends Floater 
{
  private double rotSpeed;
  
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11; 
    yCorners[0] = -7;
    xCorners[1] = -5;
    yCorners[1] = -14;
    xCorners[2] = 8;
    yCorners[2] = -12;
    xCorners[3] = 14;
    yCorners[3] = -3; 
    xCorners[4] = 6;
    yCorners[4] = 10;
    xCorners[5] = -9;
    yCorners[5] = 8;
    myColor = color(180,180,180);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*4-2;
    myYspeed = Math.random()*4-2;
    myPointDirection = Math.random()*360;
    rotSpeed = Math.random()*6-3;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  

  public double getmyCenterX(){
    return myCenterX;
  }
  
  public double getmyCenterY(){
    return myCenterY;
  }
} 
