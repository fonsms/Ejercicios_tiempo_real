#include <string.h>
#include <stdio.h>
#include "fsm.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdlib.h>
#include "lampara.h"
#include "key.h"

//Variables

portTickType now;
portTickType deadline_perid;

static void encender(fsm_t *fsm)
{
    (flags_key &= ~FLAG_PULSADOR_LAMPARA);
    now = xTaskGetTickCount();

    printf("LED ON \n");
}
static int pulsado(fsm_t *fsm)
{

    return (flags_key & FLAG_PULSADOR_LAMPARA);
}
static int tiempo_inactivo(fsm_t *fsm)
{
    return (now + deadline_perid) < xTaskGetTickCount();
}

static void apagar(fsm_t *fsm)
{
    printf("LED OFF \n");
}
fsm_t *fsm_new_lampara()
{
    deadline_perid = 6 * 1000 / portTICK_RATE_MS;
    static fsm_trans_t lampara_tt[] = {
        {OFF, pulsado, ON, encender},
        {ON, pulsado, ON, encender},
        {ON, tiempo_inactivo, OFF, apagar},
        {-1, NULL, -1, NULL},
    };
    return fsm_new(lampara_tt);
}