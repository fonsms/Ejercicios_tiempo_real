#include <string.h>
#include <stdio.h>
#include "fsm.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdlib.h>
#include "codigo.h"
#include "key.h"
#include "alarma.h"
//Variables

portTickType now2;
portTickType deadline_perid_code;

static void salida_digito(fsm_t *this)
{     
     if ((flags_key & FLAG_INTRODUCIR_CODE))
{
  
    code_t *c = (code_t *)this;
    c->intento_passw[(c)->digito] = c->cifra;
    c ->cifra = 0;
    (c->digito) = (c->digito) + 1;
    if ((c->digito) == 3)
    { 
        (flags_key &= ~FLAG_INTRODUCIR_CODE);
        comprobar_codigo(c->passw, c->intento_passw);
        printf("Valorando codigo %d%d%d", c->intento_passw[0],c->intento_passw[1],c->intento_passw[2]);
    }
    else
    {   
        now2 = xTaskGetTickCount();
        printf("Siguiente codigo\n");
        
    }
}
}

int compareArray(int a[], int b[], int size)
{
    int i;
    for (i = 0; i < size; i++)
    {
        if (a[i] != b[i])
            return 0;
    }
    return 1;
}
void comprobar_codigo(int *pass_correcta, int *pass_intento)
{
    if (compareArray(pass_correcta, pass_intento, 3))
    {  
        (flags_key |= FLAG_CODIGO_CORRECTO);
    }
    else
    {
        (flags_key |= FLAG_CODIGO_INCORRECTO);
    }
}
static int tiempo_cifra_acabado(fsm_t *this)
{
    return (now2 + deadline_perid_code) < xTaskGetTickCount();
}
static void siguiente_pulso(fsm_t *this)
{
        if ((flags_key & FLAG_INTRODUCIR_CODE)){ 
            printf("%d\n",flags_key);
  
    (flags_key &= ~FLAG_PULSADOR_TECLA_CODIGO);
    code_t *c = (code_t *)this;
    (c->cifra) = (c->cifra) + 1;
    now2 = xTaskGetTickCount();
}
}
static int digito_pulsado(fsm_t *this)
{
    return (flags_key & FLAG_PULSADOR_TECLA_CODIGO);
}
static int reset_code(fsm_t *this)
{
    return (flags_key & FLAG_CODIGO_INCORRECTO);
}
static int validar(fsm_t *this)
{
    return (flags_key & FLAG_CODIGO_CORRECTO);
}
static void inicio_valido(fsm_t *this)
{
 
  printf("valido\n");
    (flags_key &= ~FLAG_CODIGO_CORRECTO);
    (flags_key |= FLAG_PULSADOR_ALARMA);
    code_t *c = (code_t *)this;
    (c->cifra) = 0;
    (c->digito) = 0;
    c->intento_passw[1] = 0;
    c->intento_passw[2] = 0;
    c->intento_passw[3] = 0;
}
static void inicio(fsm_t *this)
{
printf("AL LADRON\n");
    (flags_key &= ~FLAG_CODIGO_INCORRECTO);
    
    
    code_t *c = (code_t *)this;
    (c->cifra) = 0;
    (c->digito) = 0;
    c->intento_passw[1] = 0;
    c->intento_passw[2] = 0;
    c->intento_passw[3] = 0;
    
}

void code_init(code_t *this, int id)
{
    deadline_perid_code = 1000 / portTICK_RATE_MS;
    static fsm_trans_t code_tt[] = {
        {INICIO, digito_pulsado, WAIT, siguiente_pulso},
        {WAIT, digito_pulsado, WAIT, siguiente_pulso},
        {WAIT, reset_code, INICIO, inicio},
        {WAIT, validar, INICIO, inicio_valido},
        {WAIT, tiempo_cifra_acabado, WAIT, salida_digito},
        {-1, NULL, -1, NULL},
    };

    fsm_init((fsm_t *)this, code_tt);
    this->id = id;
    this->digito = 0;
    this->cifra = 0;
    this->passw[0] = 3;
    this->passw[1] = 2;
    this->passw[2] = 3;
    this->intento_passw[0] = 0;
    this->intento_passw[1] = 0;
    this->intento_passw[2] = 0;
}
code_t *fsm_new_code(int id)
{
    code_t *this = (code_t *)malloc(sizeof(code_t));
    code_init(this, id);
    return this;
}