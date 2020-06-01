
//Especificaciones

// Maquina de estados de luz
//cuando se presiona el boton en algun momento el led estara on
ltl esp_boton_luz_press {
	[]((led_state== OFF || boton_led == 1)-> <>(led_state== ON));
}
//Cuando se encienda en algun momento se apagara
ltl esp_boton_luz_time_out {
	[]((led_state== ON) -> <>(led_state== OFF));
}
//Maquina de estados Alarma

ltl esp_codigo_correcto1 {
	[]((ALARMA_state== DESARMADO && code == solucion) -> <>(ALARMA_state== ARMADO ));
}
ltl esp_presencia_on {
	[]((ALARMA_state== ARMADO && presencia ==1) -> <>(ALARMA_state== PRESENCIA) );
}
ltl esp_codigo_correcto2 {
	[]((ALARMA_state== ARMADO && code == solucion) -> <>(ALARMA_state== DESARMADO ));
}
ltl esp_codigo_correcto3 {
	[]((ALARMA_state== PRESENCIA && code == solucion )-> <>(ALARMA_state== DESARMADO) );
}
ltl esp_presencia_off{
	[]((ALARMA_state== PRESENCIA && presencia ==0) -> <>(ALARMA_state== ARMADO) );
}


//Maquina de estados codigo

ltl esp_inc{
	[]((boton_code == 1) -> <> (cuentainc == cuenta +1) );
}
ltl esp_avanza{
	[]((time_code>timeout_code && cuenta == code1) -> <> (digito == 0|| digito == 1||digito == 2 && cuenta == 0) );
}
ltl esp_tiempofinal{
	[]((time_code>timeout_code) -> <> (digito == 0|| digito == 1||digito == 2 && cuenta == 0) );
}
ltl esp_accepta{
	[]((time_code>timeout_code && cuenta == code3) -> <> (correcto== 1) );
}

#define TIMEOUT 100
int correctcode= 789;
mtype={OFF,ON,DESARMADO,ARMADO,PRESENCIA,IDLE,WAIT}
int led_state;
int ALARMA_state;
int code_state;
int boton_led;
int deadline;
int time;
int presencia;
int code;
int time_code;
int timeout_code;
int code1;
int code2;
int code3;
int cuenta;
int digito;
int solucion;
int correcto;
int boton_code;
int cuentainc;
int codet;
int timecode;
// cuando time aumenta?????????????????????

active proctype LED(){
	led_state=OFF;
	do
	::(led_state==OFF)->atomic{
		if
		::boton_led->boton_led=0;led_state=ON;deadline=time + TIMEOUT;		
		fi;
	}
	::(led_state==ON)->atomic{
		if
		::(time>deadline)->led_state=OFF
        ::boton_led->boton_led=0;deadline=time + TIMEOUT;
		::!(boton_led)->skip
		fi;
	}
	od;
}

active proctype alarma(){
	ALARMA_state=DESARMADO;
	do
	::(ALARMA_state==DESARMADO)->atomic{
		if
		::(code==correctcode)-> ALARMA_state=ARMADO;
		fi;	
	}
    ::(ALARMA_state==ARMADO)->atomic{
		if
		::(code==correctcode)-> ALARMA_state=DESARMADO;
        ::(presencia) -> ALARMA_state=PRESENCIA;
		fi;	
	}
    ::(ALARMA_state==PRESENCIA)->atomic{
		if
		::!(presencia)->ALARMA_state=ARMADO;
        ::(code==correctcode)-> ALARMA_state=DESARMADO;
		fi;	
	}
	od;
 }
active proctype codigo(){
	code_state==IDLE;	
    
	do
    ::(code_state==IDLE)->atomic{
		if
	  	::(boton_code)->boton_code=0;cuentainc=cuenta;code_state=WAIT;cuenta=cuenta+1;timeout_code=time_code+TIMEOUT;
	  	fi;
    }
	::(code_state==WAIT)->atomic{
		if
	  	::(boton_code)->boton_code=0;cuentainc=cuenta;cuenta=cuenta+1;timeout_code=time_code+TIMEOUT;
	  	::((time_code>timeout_code)&&(code1==cuenta))->code_state=WAIT;digito=1;codet=cuenta;cuenta=0;correcto=0;
		::((time_code>timeout_code)&&(code2==cuenta))->code_state=WAIT;digito=2;codet=codet+cuenta*10;cuenta=0;correcto=0;
		::((time_code>timeout_code)&&(code3==cuenta))->code_state=WAIT;digito=0;codet=codet+cuenta*100;cuenta=0;correcto=0;
		::((time_code>timeout_code)&&(code1!=cuenta)||(code2!=cuenta)||(code3!=cuenta))->code_state=IDLE;digito=0;cuenta=0;correcto=0;
		::(correctcode==codet)->code_state=IDLE;correcto=1;
		::!boton_code->skip
	  	fi
	}
	od
}

active proctype entorno1(){
	time=0;
	do
	::if
	  ::boton_led=1;
	  ::skip
	  fi
	  time=time+1;
	  printf("time=%d,state=%e,boton_led=%d,deadline=%d\n",time,led_state,boton_led,deadline)
	od
}
active proctype entorno2(){
	do
	::if
	  ::code=197
	  ::code=679
	  ::code=431
	  ::code=689
	  ::code=789
      ::presencia = 1
	  ::presencia = 0
	  ::code=900
	  fi
	  printf("code=%d correctcode=%d\n",code,correctcode)
	od
}
active proctype entorno3(){
	time_code=0;
	do
	::if
	  ::boton_code=1
	  fi
	  timecode=timecode+1;
	  printf("timeoutcode=%d,timecode=%d,btn2=%d,codet=%d,cuenta=%d,correct=%d,correctcode=%d,digit=%d\n",timeout_code,time_code,boton_code,codet,cuenta,correcto,correctcode,digito)
	od
}

