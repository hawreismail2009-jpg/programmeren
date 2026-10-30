Ball[] ballen = new Ball[8];
Ball[] RoodBal = new Ball[3];

float paddleX;
float paddleY = 450;
float paddleBreedte = 100;
float paddleHoogte = 15;

int score = 0;

void setup() {
  size(500, 500);

  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Ball();
  }

  for (int i = 0; i < RoodBal.length; i++) {
    RoodBal[i] = new Ball();
  }
}

void draw() {
  background(30);

  updatePaddle();

  for (int i = 0; i < ballen.length; i++) {
    ballen[i].move();

    if (ballen[i].resetAlsUitBeeld()) {
      score--;
    }

    if (ballen[i].raaktPaddle(
      paddleX, paddleY, paddleBreedte, paddleHoogte)) {
      score++;
      ballen[i].reset();
    }

    ballen[i].teken();
  }


  for (int i = 0; i < RoodBal.length; i++) {
    RoodBal[i].move();

    if (RoodBal[i].resetAlsUitBeeld()) {
      score = score - 10;
    }

    if (RoodBal[i].raaktPaddle(
      paddleX, paddleY, paddleBreedte, paddleHoogte)) {
      score = score + 10;
      RoodBal[i].reset();
    }

    RoodBal[i].tekenRood();
  }

  tekenPaddle();
  toonScore();
}

void updatePaddle() {
  paddleX = mouseX - paddleBreedte / 2;

  if (paddleX < 0) {
    paddleX = 0;
  }

  if (paddleX > width - paddleBreedte) {
    paddleX = width - paddleBreedte;
  }
}

void tekenPaddle() {
  fill(100, 160, 255);
  rect(paddleX, paddleY, paddleBreedte, paddleHoogte);
}

void toonScore() {
  fill(255);
  textSize(20);
  textAlign(RIGHT);
  text("Score: " + score, width - 10, 25);
}
