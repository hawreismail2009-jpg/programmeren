// vallende ballen vangen

Ball[] ballen = new Ball[8];
float paddleX;
float paddleY = 450;
float paddleBreedte = 100;
float paddleHoogte = 15;
int score = 0;

void setup() {
  size(500, 500);
  // ballen aanmaken
  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Ball();
  }
}

void draw() {
  background(30);

  // paddle volgt de muis
  paddleX = mouseX - paddleBreedte / 2;
  if (paddleX < 0) {
    paddleX = 0;
  }
  if (paddleX > width - paddleBreedte) {
    paddleX = width - paddleBreedte;
  }

  // alle ballen bijwerken
  for (int i = 0; i < ballen.length; i++) {
    ballen[i].move();
    ballen[i].resetAlsUitBeeld();

    // check of de bal de paddle raakt
    if (ballen[i].raaktPaddle(paddleX, paddleY, paddleBreedte, paddleHoogte)) {
      score++;
      ballen[i].reset();
    }

    ballen[i].display();
  }

  // paddle tekenen
  fill(100, 160, 255);
  rect(paddleX, paddleY, paddleBreedte, paddleHoogte);

  // score tonen
  fill(255);
  textSize(20);
  textAlign(RIGHT);
  text("Score: " + score, width - 10, 25);
}

class Ball {
  float x;
  float y;
  float diameter;
  float snelheid;

  // constructor
  Ball() {
    reset();
  }

  void display() {
    fill(255, 80, 80);
    ellipse(x, y, diameter, diameter);
  }

  void move() {
    y = y + snelheid;
  }

  // als de bal onder het scherm is, weer boven zetten
  void resetAlsUitBeeld() {
    if (y - diameter / 2 > height) {
      reset();
    }
  }

  // bal opnieuw bovenin zetten
  void reset() {
    x = random(width);
    y = -diameter;
    diameter = random(15, 40);
    snelheid = random(2, 6);
  }

  // check of de bal de paddle raakt
  boolean raaktPaddle(float px, float py, float pb, float ph) {
    float onderkant = y + diameter / 2;
    if (onderkant >= py && x >= px && x <= px + pb) {
      return true;
    }
    return false;
  }
}
