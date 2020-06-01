	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM esp_accepta */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_tiempofinal */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_avanza */
;
		;
		;
		;
		
	case 11: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_inc */
;
		;
		;
		;
		
	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_presencia_off */
;
		;
		;
		;
		
	case 17: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_codigo_correcto3 */
;
		;
		;
		;
		
	case 20: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_codigo_correcto2 */
;
		;
		;
		;
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_presencia_on */
;
		;
		;
		;
		
	case 26: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_codigo_correcto1 */
;
		;
		;
		;
		
	case 29: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_boton_luz_time_out */
;
		;
		;
		;
		
	case 32: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM esp_boton_luz_press */
;
		;
		;
		;
		
	case 35: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno3 */

	case 36: // STATE 1
		;
		now.time_code = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 2
		;
		now.boton_code = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 5
		;
		now.timecode = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno2 */

	case 40: // STATE 1
		;
		now.code = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 2
		;
		now.code = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 3
		;
		now.code = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 4
		;
		now.code = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 5
		;
		now.code = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 6
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 7
		;
		now.presencia = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 8
		;
		now.code = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC entorno1 */

	case 49: // STATE 1
		;
		now.time = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 2
		;
		now.boton_led = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 6
		;
		now.time = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC codigo */
;
		;
		;
		;
		
	case 55: // STATE 8
		;
		now.timeout_code = trpt->bup.ovals[4];
		now.cuenta = trpt->bup.ovals[3];
		now.code_state = trpt->bup.ovals[2];
		now.cuentainc = trpt->bup.ovals[1];
		now.boton_code = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 57: // STATE 17
		;
		now.timeout_code = trpt->bup.ovals[3];
		now.cuenta = trpt->bup.ovals[2];
		now.cuentainc = trpt->bup.ovals[1];
		now.boton_code = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		
	case 58: // STATE 47
		goto R999;

	case 59: // STATE 23
		;
		now.correcto = trpt->bup.ovals[4];
		now.cuenta = trpt->bup.ovals[3];
		now.codet = trpt->bup.ovals[2];
		now.digito = trpt->bup.ovals[1];
		now.code_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 60: // STATE 29
		;
		now.correcto = trpt->bup.ovals[4];
		now.cuenta = trpt->bup.ovals[3];
		now.codet = trpt->bup.ovals[2];
		now.digito = trpt->bup.ovals[1];
		now.code_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 61: // STATE 35
		;
		now.correcto = trpt->bup.ovals[4];
		now.cuenta = trpt->bup.ovals[3];
		now.codet = trpt->bup.ovals[2];
		now.digito = trpt->bup.ovals[1];
		now.code_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 62: // STATE 40
		;
		now.correcto = trpt->bup.ovals[3];
		now.cuenta = trpt->bup.ovals[2];
		now.digito = trpt->bup.ovals[1];
		now.code_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 63: // STATE 43
		;
		now.correcto = trpt->bup.ovals[1];
		now.code_state = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 65: // STATE 45
		goto R999;

	case 66: // STATE 52
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC alarma */

	case 67: // STATE 1
		;
		now.ALARMA_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 69: // STATE 4
		;
		now.ALARMA_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 10
		;
		now.ALARMA_state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 72: // STATE 14
		goto R999;

	case 73: // STATE 12
		;
		now.ALARMA_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 75: // STATE 18
		;
		now.ALARMA_state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 76: // STATE 22
		goto R999;

	case 77: // STATE 20
		;
		now.ALARMA_state = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC LED */

	case 79: // STATE 1
		;
		now.led_state = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 81: // STATE 6
		;
		now.deadline = trpt->bup.ovals[2];
		now.led_state = trpt->bup.ovals[1];
		now.boton_led = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 83: // STATE 12
		;
		now.led_state = trpt->bup.oval;
		;
		goto R999;
;
		
	case 84: // STATE 19
		goto R999;

	case 85: // STATE 15
		;
		now.deadline = trpt->bup.ovals[1];
		now.boton_led = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		
	case 87: // STATE 17
		goto R999;

	case 88: // STATE 24
		;
		p_restor(II);
		;
		;
		goto R999;
	}

