class Spaarpot {
  float saldo;

  Spaarpot(float startSaldo) {
    saldo = startSaldo;
  }

  void storten(float bedrag) {
    saldo = saldo + bedrag;
  }

  void opnemen(float bedrag) {
    if (saldo - bedrag >= 0) {
      saldo = saldo - bedrag;
    }
  }
}

void setup() {
  Spaarpot mijnSpaarpot = new Spaarpot(50);
  mijnSpaarpot.storten(25);
  mijnSpaarpot.opnemen(30);
  println("Saldo: " + mijnSpaarpot.saldo);
}
