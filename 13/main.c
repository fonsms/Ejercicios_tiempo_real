#include <stdio.h>
#include <time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "fsm.h"
#include "lampara.h"
#include "key.h"
#include "alarma.h"
#include "codigo.h"
int flags_key;

code_t *c = NULL;
static void lampara_principal(void *ignore)
{
  
    portTickType period = 20 / portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    
    while (1)
    {
        fsm_fire(lampara_fsm);        
        vTaskDelayUntil(&last, period);
    }
}

static void alarma (void* ignore)
{
  // Tiempo en freeRTOs
    portTickType period = 20 / portTICK_RATE_MS;
    // Tiempo actual
    portTickType last = xTaskGetTickCount();

    while (1) {
   	    fsm_fire(alarma_fsm);
        vTaskDelayUntil (&last, period);
    }
}


static void code (void* ignore)
{
   // Tiempo en freeRTOs
    portTickType period = 20 / portTICK_RATE_MS;
    // Tiempo actual
    portTickType last = xTaskGetTickCount();

//   Bucleo que se repite 
    while (1) {
        //lanzo la maquina de estados
   	    fsm_fire((fsm_t *)c);
           //espero a volver a lanzarla
        vTaskDelayUntil (&last, period);
    }
}

static void key (void* ignore)
{
    // Tiempo en freeRTOs
    portTickType period = 20 / portTICK_RATE_MS;
    // Tiempo actual
    portTickType last = xTaskGetTickCount();

    //   Bucleo que se repite 
    while (1) {
       if (key_pressed())
        {
            key_process(getchar());
        }
        vTaskDelayUntil (&last, period);
    } 
}


void user_init(void)
{
    xTaskHandle task_lampara, task_alarma, task_code, task_key;
    xTaskCreate(lampara_principal, (const signed char *)"lampara", 2048, NULL, 1, &task_lampara);
    xTaskCreate(alarma, (const signed char *)"alarma", 2048, NULL, 2, &task_alarma);
    xTaskCreate(code, (const signed char *)"codigo", 2048, NULL, 3, &task_code);
    xTaskCreate(key, (const signed char *)"teclado", 2048, NULL, 4, &task_key);
}

void vApplicationIdleHook(void) {}
void vMainQueueSendPassed(void) {}

int main(void)
{
    //Inicializo variables
    flags_key = 0;

    // Creo las maquinas de estado 
    fsm_t *lampara_fsm = fsm_new_lampara();
    c = fsm_new_code(1);
    fsm_t *alarma_fsm = fsm_new_alarma();

    //Inicio esto para la ram asi podre escribir correctamente en la consola
    enable_raw_mode();

    // Creo las tareas
    user_init();
    // Inicio el manejador
    vTaskStartScheduler();

    return 1;
}
