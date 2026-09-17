int totaalAantalLessen = 20;
int gevolgdeLessen = 16;
float cijfer = 5.5;
float percentageLessenGevolgd = (gevolgdeLessen / (float)totaalAantalLessen) * 100;

if (cijfer >= 5.5 && percentageLessenGevolgd >= 80) {
  println("geslaagd");
} else {
  println("gezakt");
}
