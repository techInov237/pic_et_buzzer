#line 1 "C:/Users/rochinel/Desktop/prog pic/son/son.c"
void Tone1()
{
Sound_Play(659, 250);
}
void Tone2()
{
Sound_Play(698, 250);
}
void Tone3()
{
Sound_Play(784, 250);
}
void Melody()
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

ANSELH = 0;
C1ON_bit;
C2ON_bit;
#line 50 "C:/Users/rochinel/Desktop/prog pic/son/son.c"
TRISB = 0xF8;
Sound_Init(&PORTB, 0);
Sound_Play(1200, 600);

while (1)
{
 if (Button(&PORTB,7,1,1))
 Tone1();
 while (RB7_bit) ;

 if (Button(&PORTB,6,1,1))
 Tone2();
 while (RB6_bit) ;

 if (Button(&PORTB,5,1,1))
 Tone3();
 while (RB5_bit) ;

 if (Button(&PORTB,4,1,1))
 Melody2();
 while (RB4_bit) ;

 if (Button(&PORTB,3,1,1))
 Melody();
 while (RB3_bit) ;
 }
}
