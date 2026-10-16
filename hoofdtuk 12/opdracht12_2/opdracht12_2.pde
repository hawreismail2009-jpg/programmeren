class Leerling {
  String naam;
  int leeftijd;

  Leerling(String nieuweNaam, int nieuweLeeftijd) {
    naam = nieuweNaam;
    leeftijd = nieuweLeeftijd;
  }

  void toonInformatie() {
    println("Naam: " + naam);
    println("Leeftijd: " + leeftijd);
  }
}

void setup() {
  Leerling mijnLeerling = new Leerling("Tom", 17);
  mijnLeerling.toonInformatie();
}
