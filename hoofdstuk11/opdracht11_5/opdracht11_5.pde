boolean gevonden;
String[] namen = {"Piet", "Klaas", "Jan", "Hawre", "Els"};

void setup() {
  gevonden = false;

  for (int i = 0; i < namen.length; i++) {
    if (namen[i] == "Jan") {
      gevonden = true;
    }
  }

  println(gevonden);
}
