#include "fsm.h"
#include <stdlib.h>

#define n_clave 3
enum alamar_states_code
{
    INICIO,
    WAIT
};
struct code_t;
typedef struct code_t code_t;
struct code_t
{
    fsm_t fsm;
    int id;
    int digito;
    int cifra;
    int passw[n_clave];
    int intento_passw[n_clave];
};
void comprobar_codigo(int *pass_correcta, int *pass_intento);
int compareArray(int a[], int b[], int size);
void code_init(code_t *p, int id);
code_t *fsm_new_code(int id);
