Spaceship bob;
Star[] stars = new Star[200];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
boolean isTurningLeft = false;
boolean isTurningRight = false;
boolean isAccelerating = false;
boolean isDeAccelerating = false;

public void setup() {
  size(500, 500);
  background(0);
  bob = new Spaceship();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i < 12; i++) {
    asteroids.add(new Asteroid());
  }
} 

public void draw() {
  background(0);
  if (isTurningLeft) {
    bob.turn(-10);
  }
  if (isTurningRight) {
    bob.turn(10);
  }
  if (isAccelerating) {
    bob.accelerate(0.5);
  }
  if (isDeAccelerating) {
    bob.accelerate(-0.8);
  }
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  bob.move();
  bob.show();
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid current = asteroids.get(i);
    float d = dist((float)bob.getmyCenterX(), (float)bob.getmyCenterY(), (float)current.getmyCenterX(), (float)current.getmyCenterY());
    if (d < 20) {
      asteroids.remove(i);
    } else { 
      current.show();
      current.move(); 
    }
  }
}

public void keyPressed() {
  if (key == 'a') {
    isTurningLeft = true;
  } else if (key == 'd') {
    isTurningRight = true;
  } else if (key == 'w') {
    isAccelerating = true;
  } else if (key == 's') {
    isDeAccelerating = true;
  } else if (key == 'h') {
    bob.hyperspace();
  }
}

public void keyReleased() {
  if (key == 'a') {
    isTurningLeft = false;
  } else if (key == 'd') {
    isTurningRight = false;
  } else if (key == 'w') {
    isAccelerating = false;
  } else if (key == 's') {
    isDeAccelerating = false;
  }
}
