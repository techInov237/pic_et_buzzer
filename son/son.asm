
_Tone1:

;son.c,1 :: 		void Tone1()
;son.c,3 :: 		Sound_Play(659, 250); // Son de fréquence = 659Hz, durée = 250ms
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,4 :: 		}
L_end_Tone1:
	RETURN
; end of _Tone1

_Tone2:

;son.c,5 :: 		void Tone2()
;son.c,7 :: 		Sound_Play(698, 250); // Son de fréquence = 698Hz, durée = 250ms
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,8 :: 		}
L_end_Tone2:
	RETURN
; end of _Tone2

_Tone3:

;son.c,9 :: 		void Tone3()
;son.c,11 :: 		Sound_Play(784, 250); // Son de fréquence = 784Hz, durée = 250ms
	MOVLW      16
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,12 :: 		}
L_end_Tone3:
	RETURN
; end of _Tone3

_Melody:

;son.c,13 :: 		void Melody() // Son de mélodie "Maison jaune"
;son.c,15 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
	CALL       _Tone3+0
;son.c,16 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
	CALL       _Tone3+0
;son.c,17 :: 		Tone1(); Tone2(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
;son.c,18 :: 		Tone1(); Tone2(); Tone3(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
	CALL       _Tone3+0
;son.c,19 :: 		Tone1(); Tone2(); Tone3();
	CALL       _Tone1+0
	CALL       _Tone2+0
	CALL       _Tone3+0
;son.c,20 :: 		Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
	CALL       _Tone3+0
	CALL       _Tone3+0
	CALL       _Tone2+0
	CALL       _Tone2+0
	CALL       _Tone1+0
;son.c,21 :: 		}
L_end_Melody:
	RETURN
; end of _Melody

_ToneA:

;son.c,22 :: 		void ToneA()
;son.c,24 :: 		Sound_Play( 880, 100);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,25 :: 		}
L_end_ToneA:
	RETURN
; end of _ToneA

_ToneC:

;son.c,26 :: 		void ToneC()
;son.c,28 :: 		Sound_Play(1046, 100);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,29 :: 		}
L_end_ToneC:
	RETURN
; end of _ToneC

_ToneE:

;son.c,31 :: 		void ToneE()
;son.c,33 :: 		Sound_Play(1318, 100);
	MOVLW      38
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      100
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,34 :: 		}
L_end_ToneE:
	RETURN
; end of _ToneE

_Melody2:

;son.c,35 :: 		void Melody2()
;son.c,38 :: 		for (i = 9; i > 0; i--)
	MOVLW      9
	MOVWF      Melody2_i_L0+0
L_Melody20:
	MOVF       Melody2_i_L0+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_Melody21
;son.c,40 :: 		ToneA(); ToneC(); ToneE();
	CALL       _ToneA+0
	CALL       _ToneC+0
	CALL       _ToneE+0
;son.c,38 :: 		for (i = 9; i > 0; i--)
	DECF       Melody2_i_L0+0, 1
;son.c,41 :: 		}
	GOTO       L_Melody20
L_Melody21:
;son.c,42 :: 		}
L_end_Melody2:
	RETURN
; end of _Melody2

_main:

;son.c,43 :: 		void main()
;son.c,46 :: 		ANSELH = 0; // Configurer PORTE en numérique
	CLRF       ANSELH+0
;son.c,50 :: 		en entrée */
	MOVLW      248
	MOVWF      TRISB+0
;son.c,51 :: 		Sound_Init(&PORTB, 0);
	MOVLW      PORTB+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;son.c,52 :: 		Sound_Play(1200, 600); // Son à 1200Hz pendant 600 miliseconde
	MOVLW      176
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      88
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;son.c,54 :: 		while (1)
L_main3:
;son.c,56 :: 		if (Button(&PORTB,7,1,1)) // RB7 – son Tone1
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;son.c,57 :: 		Tone1();
	CALL       _Tone1+0
L_main5:
;son.c,58 :: 		while (RB7_bit) ; // Attendre que le bouton d'être relâché
L_main6:
	BTFSS      RB7_bit+0, BitPos(RB7_bit+0)
	GOTO       L_main7
	GOTO       L_main6
L_main7:
;son.c,60 :: 		if (Button(&PORTB,6,1,1)) // RB6 - son Tone2
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      6
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main8
;son.c,61 :: 		Tone2();
	CALL       _Tone2+0
L_main8:
;son.c,62 :: 		while (RB6_bit) ; // Attendre que RB6 soit relâché
L_main9:
	BTFSS      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main10
	GOTO       L_main9
L_main10:
;son.c,64 :: 		if (Button(&PORTB,5,1,1)) // RB5 - son Tone3
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      5
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main11
;son.c,65 :: 		Tone3();
	CALL       _Tone3+0
L_main11:
;son.c,66 :: 		while (RB5_bit) ; // Attendre que RB5 soit relâché
L_main12:
	BTFSS      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main13
	GOTO       L_main12
L_main13:
;son.c,68 :: 		if (Button(&PORTB,4,1,1)) // RB4 - son de Melody2
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main14
;son.c,69 :: 		Melody2();
	CALL       _Melody2+0
L_main14:
;son.c,70 :: 		while (RB4_bit) ; // Attendre que RB4 soit relâché
L_main15:
	BTFSS      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main16
	GOTO       L_main15
L_main16:
;son.c,72 :: 		if (Button(&PORTB,3,1,1)) // RB3 - son Melody
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main17
;son.c,73 :: 		Melody();
	CALL       _Melody+0
L_main17:
;son.c,74 :: 		while (RB3_bit) ; // Attendre que RB3 soit relâché
L_main18:
	BTFSS      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main19
	GOTO       L_main18
L_main19:
;son.c,75 :: 		}
	GOTO       L_main3
;son.c,76 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
