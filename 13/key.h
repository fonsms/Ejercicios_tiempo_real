#include <stdio.h>
#include <stdlib.h>
int key_pressed(void);
void enable_raw_mode();
void key_process(int ch);

extern int flags_key;

#define FLAG_PULSADOR_LAMPARA 0x01
#define FLAG_PULSADOR_ALARMA 0x02
#define FLAG_PRESENCIA_ON 0x04
#define FLAG_PRESENCIA_OFF 0x08
#define FLAG_PULSADOR_TECLA_CODIGO 0x10
#define FLAG_CODIGO_CORRECTO 0x20
#define FLAG_CODIGO_INCORRECTO 0x40
#define FLAG_INTRODUCIR_CODE  0x80
