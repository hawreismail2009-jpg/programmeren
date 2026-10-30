class Ball {
  float x;
  float y;
  float diameter;
  float snelheid;

  Ball() {
    reset();
  }

  void teken() {
    fill(0, 255, 0);
    ellipse(x, y, diameter, diameter);
  }

  void tekenRood() {
    fill(255, 0, 0);
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
    diameter = random(15, 40);
    x = random(width);
    y = -diameter;
    snelheid = random(1, 5);
  }

  boolean raaktPaddle(float paddleX, float paddleY,
    float paddleBreedte, float paddleHoogte) {

    float bovenkant = y - diameter / 2;
    float onderkant = y + diameter / 2;

    boolean raaktZijkant =
      x >= paddleX && x <= paddleX + paddleBreedte;

    boolean raaktOnderkant =
      onderkant >= paddleY &&
      bovenkant <= paddleY + paddleHoogte;

    if (raaktZijkant && raaktOnderkant) {
      return true;
    }
    return false;
  }
}
