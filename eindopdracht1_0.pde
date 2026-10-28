class Ball {
  float x;
  float y;
  float diameter;
  float snelheid;

  
  Ball() {
    reset();
  }

  void teken(color kleur) {
    fill(kleur);
    ellipse(x, y, diameter, diameter);
  }

  
  void move() {
    y = y + snelheid;
  }

  
  boolean resetAlsUitBeeld() {
    if (y - diameter / 2 > height) {
      reset();
      return true;
    }
    return false;
  }

  
  void reset() {
    x = random(width);
    y = -diameter;
    diameter = random(15, 40);
    snelheid = random(1, 5);
  }

  
  boolean raaktPaddle(float paddleX, float paddleY, float paddleBreedte, float paddleHoogte) {
    float onderkant = y + diameter / 2;
    if (onderkant >= paddleY && x >= paddleX && x <= paddleX + paddleBreedte) {
      return true;
    }
    return false;
  }
}
