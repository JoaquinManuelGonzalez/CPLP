# include <stdio.h>
int suma; /* Esta es una variable global */
int main()
{   int indice;
    encabezado;                                         // Sintáctico: La variable "encabezado" no está declarada.
    for (indice = 1 ; indice <= 7 ; indice ++)          // Sintáctico: Falta uso de llaves "{}" para el for.
    cuadrado (indice);                                  /*
                                                        Semántico: La declaración de "cuadrado" no existe en ese contexto. 
                                                        Detectado en Compilación.
                                                        */ 
    final(); Llama a la función final */                /*
                                                        Sintáctico: Falta la apertura del comentario.
                                                        Semántico: La declaración de "final" no existe. 
                                                        Detectado en Compilación.
                                                        */  
    return 0;
}
cuadrado (numero)                                       /*
                                                        Sintáctico: Se debe especificar el tipo de retorno o void.
                                                        Sintáctico: La función "cuadrado(numero)" necesita el uso
                                                        de llaves "{}".
                                                        */
int numero;                                             /*
                                                        Semántico: La sentencia "int numero;" rompe la declaración
                                                        de la función "cuadrado". Detectado en Compilación.
                                                        */ 
{   int numero_cuadrado;
    numero_cuadrado == numero * numero;                 /*
                                                        Semántico: La variable "número" no está inicializada.
                                                        Detectado en Compilación.
                                                        Sintáctico: Para asignar la sentencia debería ser 
                                                        "numero_cuadrado = numero * numero".
                                                        */
    suma += numero_cuadrado;                            /*
                                                        Semántico: Se asigna una variable que no está inicializada.
                                                        Detectado en Compilación.
                                                        */ 
    printf("El cuadrado de %d es %d\n",
    numero, numero_cuadrado);
}
