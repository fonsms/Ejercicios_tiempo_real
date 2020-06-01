#include <string.h>
#include <stdio.h>
#include "fsm.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdlib.h>
#include "alarma.h"
#include "key.h"

//Variables


static int codigo(fsm_t *fsm)
{ 
    return (flags_key & FLAG_PULSADOR_ALARMA);
}

static int presencia_detectada(fsm_t *fsm)
{
    return (flags_key & FLAG_PRESENCIA_ON);
}
static int presencia_nodetectada(fsm_t *fsm)
{

    return (flags_key & FLAG_PRESENCIA_OFF);
}

static void alarma_encendida(fsm_t *fsm)
{
    printf("%d\n",flags_key);
    (flags_key &= ~FLAG_PRESENCIA_ON);
        printf("ALARMA ON \n");
}
static void alarma_apagada_armada(fsm_t *fsm)
{
    (flags_key &= ~FLAG_PULSADOR_ALARMA);
    printf("ALARMA OFF  Y ARMADA\n");
}
static void alarma_apagada_desarmada(fsm_t *fsm)
{
    (flags_key &= ~FLAG_PULSADOR_ALARMA);
    printf("ALARMA OFF  Y DESARMADA\n");
}
static void alarma_encencida_sin_alerta(fsm_t *fsm)
{
    (flags_key &= ~FLAG_PRESENCIA_OFF);
    printf("ALARMA OFF Y ARMADA \n");
}

fsm_t *fsm_new_alarma()
{

    static fsm_trans_t alarma_tt[] = {
        {DESARMADO, codigo, ARMADO, alarma_apagada_armada},
        {ARMADO, codigo, DESARMADO, alarma_apagada_desarmada},
        {ARMADO, presencia_detectada, PRESENCIA, alarma_encendida},
        {PRESENCIA, presencia_nodetectada, ARMADO, alarma_encencida_sin_alerta},
        {PRESENCIA, codigo, DESARMADO, alarma_apagada_desarmada},
        {-1, NULL, -1, NULL},
    };
    return fsm_new(alarma_tt);
}
