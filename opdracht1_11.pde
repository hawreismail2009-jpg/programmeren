int steen1 = 3;
int steen2 = 4;
int steen3 = 5;
String resultaat = "";

if (steen1 == 1 || steen2 == 1 || steen3 == 1) {
  resultaat = "mis!";
} else {
  float schade = (steen1 + steen2 + steen3) / 3.0;
  resultaat = schade + " HIT!";
}

print(resultaat);
