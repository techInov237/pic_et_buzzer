void Tone1()
{
Sound_Play(659, 250); // Son de fr�quence = 659Hz, dur�e = 250ms
}
void Tone2()
{
Sound_Play(698, 250); // Son de fr�quence = 698Hz, dur�e = 250ms
}
void Tone3()
{
Sound_Play(784, 250); // Son de fr�quence = 784Hz, dur�e = 250ms
}
void Melody() // Son de m�lodie "Maison jaune"
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
//ANSEL = 0 Configurer PORTE en num�rique
ANSELH = 0; // Configurer PORTB en num�rique
C1ON_bit;
C2ON_bit;
TRISB = 0xF8; /* Configurer les broches RB7...RB3
en entr�e */


  Sound_Init(&PORTB, 0);
  Sound_Play(1200, 600); // Son � 1200Hz pendant 600 miliseconde

while (1)
{
      if (Button(&PORTB,7,1,1)) // RB7 � son Tone1
      Tone1();
      while (RB7_bit) ; // Attendre que le bouton d'�tre rel�ch�
      
      if (Button(&PORTB,6,1,1)) // RB6 - son Tone2
      Tone2();
      while (RB6_bit) ; // Attendre que RB6 soit rel�ch�
      
      if (Button(&PORTB,5,1,1)) // RB5 - son Tone3
      Tone3();
      while (RB5_bit) ; // Attendre que RB5 soit rel�ch�
      
      if (Button(&PORTB,4,1,1)) // RB4 - son de Melody2
      Melody2();
      while (RB4_bit) ; // Attendre que RB4 soit rel�ch�
      
      if (Button(&PORTB,3,1,1)) // RB3 - son Melody
      Melody();
      while (RB3_bit) ; // Attendre que RB3 soit rel�ch�
      }
}