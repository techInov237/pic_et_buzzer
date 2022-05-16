void Tone1()
{
Sound_Play(659, 250); // Son de fréquence = 659Hz, durée = 250ms
}
void Tone2()
{
Sound_Play(698, 250); // Son de fréquence = 698Hz, durée = 250ms
}
void Tone3()
{
Sound_Play(784, 250); // Son de fréquence = 784Hz, durée = 250ms
}
void Melody() // Son de mélodie "Maison jaune"
{
Tone1(); Tone2(); Tone3(); Tone3();
Tone1(); Tone2(); Tone3(); Tone3();
Tone1(); Tone2(); Tone3();
Tone1(); Tone2(); Tone3(); Tone3();
Tone1(); Tone2(); Tone3();
Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
}
void ToneA()
{
Sound_Play( 880, 100);
}
void ToneC()
{
Sound_Play(1046, 100);
}

 void ToneE()
{
Sound_Play(1318, 100);
}
void Melody2()
{
  unsigned short i;
  for (i = 9; i > 0; i--)
  {
  ToneA(); ToneC(); ToneE();
  }
}




void main()
{
//ANSEL = 0 Configurer PORTE en numérique
ANSELH = 0; // Configurer PORTB en numérique
C1ON_bit;
C2ON_bit;
TRISB = 0xF8; /* Configurer les broches RB7...RB3
en entrée */


  Sound_Init(&PORTB, 0);
  Sound_Play(1200, 600); // Son à 1200Hz pendant 600 miliseconde

while (1)
{
      if (Button(&PORTB,7,1,1)) // RB7 – son Tone1
      Tone1();
      while (RB7_bit) ; // Attendre que le bouton d'être relâché
      
      if (Button(&PORTB,6,1,1)) // RB6 - son Tone2
      Tone2();
      while (RB6_bit) ; // Attendre que RB6 soit relâché
      
      if (Button(&PORTB,5,1,1)) // RB5 - son Tone3
      Tone3();
      while (RB5_bit) ; // Attendre que RB5 soit relâché
      
      if (Button(&PORTB,4,1,1)) // RB4 - son de Melody2
      Melody2();
      while (RB4_bit) ; // Attendre que RB4 soit relâché
      
      if (Button(&PORTB,3,1,1)) // RB3 - son Melody
      Melody();
      while (RB3_bit) ; // Attendre que RB3 soit relâché
      }
}