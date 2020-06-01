#include <stdio.h>
#include <time.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "fsm.h"
#include "lampara.h"
#include "key.h"
#include "alarma.h"
#include "codigo.h"
#include "reactor.h"

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
  
    portTickType period = 20 / portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    
    while (1) {
   	    fsm_fire(alarma_fsm);
        vTaskDelayUntil (&last, period);
    }
}

static void code (void* ignore)
{
    
    portTickType period = 20 / portTICK_RATE_MS;
    portTickType last = xTaskGetTickCount();
    
    while (1) {
   	    fsm_fire((fsm_t *)c);
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


static void reactor_run (void* ignore)
{
    EventHandler eh1;
    EventHandler eh2;
    EventHandler eh3;
    EventHandler eh4;
    reactor_init ();

    event_handler_init (&eh1, 1, lampara_principal);
    reactor_add_handler (&eh1);
    event_handler_init (&eh2, 2, alarma);
    reactor_add_handler (&eh2);
    event_handler_init (&eh3, 3, code);
    reactor_add_handler (&eh3);
    event_handler_init (&eh4, 4, key);
    reactor_add_handler (&eh4);

    while (1) {
        printf("%s\n","handling" );
        reactor_handle_events ();
    }
}

void user_init(void)
{
    xTaskHandle task_sistema;
    xTaskCreate(reactor_run, (const signed char *)"reactor ", 2048, NULL, 1, &task_sistema);
}
void vApplicationIdleHook(void) {}
void vMainQueueSendPassed(void) {}

int main(void)
{
    flags_key = 0;

    fsm_t *lampara_fsm = fsm_new_lampara();
    fsm_t *alarma_fsm = fsm_new_alarma();
    c = fsm_new_code(1);

    enable_raw_mode();

    user_init();
    vTaskStartScheduler();
    return 1;
}
