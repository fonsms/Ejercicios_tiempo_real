#include "fsm.h"
#include "freertos/task.h"
#include <stdlib.h>
enum lampara_states_lampara
{
    ON,
    OFF
};

fsm_t *fsm_new_lampara();
