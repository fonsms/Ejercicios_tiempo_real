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

fsm_t *lampara_fsm = NULL;
fsm_t *alarma_fsm = NULL;
code_t *c = NULL;
static void lampara_principal(struct event_handler_t* this)
{  
       static struct timeval period = { 0, 200 };    
        fsm_fire(lampara_fsm); 
        timeval_add (&this->next_activation, &this->next_activation, &period);
        
    
}

static void alarma (struct event_handler_t* this)
{
         static struct timeval period =  { 0, 400 };  
   	    fsm_fire(alarma_fsm);
       timeval_add (&this->next_activation, &this->next_activation, &period);
    
}

static void code (struct event_handler_t* this)
{
    static struct timeval period =  { 0, 100 };  
          	    fsm_fire((fsm_t *)c);
    timeval_add (&this->next_activation, &this->next_activation, &period);
   
}


static void key (struct event_handler_t* this)
{
      static struct timeval period =  { 0, 100 };  
    //   Bucleo que se repite 
          if (key_pressed())
        {
            
            key_process(getchar());
        }
       
     timeval_add (&this->next_activation, &this->next_activation, &period);
        
        
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
       // printf("%s\n","handling" );
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

    lampara_fsm = fsm_new_lampara();
    alarma_fsm = fsm_new_alarma();
    c = fsm_new_code(1);

    enable_raw_mode();

    user_init();
    vTaskStartScheduler();
    return 1;
}
