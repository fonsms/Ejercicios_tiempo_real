#include <stdio.h>
#include <time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "fsm.h"
#include "lampara.h"
#include "key.h"
#include "alarma.h"
#include "codigo.h"

// esta variable proviene de fichero key.h que ha sido externalizada, se declara nuevamente pero esta referenciada a un valor

int flags_key;

code_t *c = NULL;
static void lampara_principal(void *ignore)
{
    static int frame = 0;
    c = fsm_new_code(1);
    fsm_t *lampara_fsm = fsm_new_lampara();
    fsm_t *alarma_fsm = fsm_new_alarma();
    portTickType period = 20 / portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    enable_raw_mode();
    while (1)
    {
        if (key_pressed())
        {
            key_process(getchar());
        }
        switch (frame)
        {
        case  0:
            fsm_fire(lampara_fsm);
            break;
        case  1:
            fsm_fire(alarma_fsm);
            break;
        case  2:
            fsm_fire((fsm_t *)c);
            break;
        }
        frame = (frame+1)%3;
        vTaskDelayUntil(&last, period);
    }
}

void user_init(void)
{
    xTaskHandle task_lampara;
    xTaskCreate(lampara_principal, (const signed char *)"reloj", 2048, NULL, 1, &task_lampara);
}

void vApplicationIdleHook(void) {}
void vMainQueueSendPassed(void) {}

int main(void)
{
    flags_key = 0;
    user_init();
    vTaskStartScheduler();
    return 1;
}
