class Rechthoek {
  float x;
  float y;
  float breedte;
  float hoogte;

  Rechthoek(float startX, float startY, float startBreedte, float startHoogte) {
    x = startX;
    y = startY;
    breedte = startBreedte;
    hoogte = startHoogte;
  }

  void teken() {
    rect(x, y, breedte, hoogte);
  }
}

Rechthoek mijnRechthoek;

void setup() {
  size(400, 400);
  mijnRechthoek = new Rechthoek(100, 100, 200, 100);
}

void draw() {
  background(255);
  mijnRechthoek.teken();
}
