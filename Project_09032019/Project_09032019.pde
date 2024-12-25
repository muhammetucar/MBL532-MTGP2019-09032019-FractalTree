void setup ()
{
  size(900, 900);
  background(225);
}

void draw()
{
  background(225);
  noFill();
  fraktalAgac(width/4, height/4, mouseX, mouseX, 0.4);
}

void fraktalAgac (float X, float Y, float KENAR, float ACI, float kuculme)
{
  float X1, X2, Y1, Y2;
  X1 = X;
  X2 = X1 + cos(radians(ACI)) * KENAR;
  Y1 = Y;
  Y2 = Y1 + sin(radians(ACI)) * KENAR;

  line (X1, Y1, X2, Y2);
  line (X1, -Y1, X2, -Y2);
  ACI = ACI + ACI;
  KENAR = KENAR * kuculme;
  if (KENAR > 1)
  {
    fraktalAgac (X2, Y2, KENAR, ACI, kuculme);
    fraktalAgac (X2, -Y2, KENAR, ACI, kuculme);
  }
}
