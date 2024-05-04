#!/usr/bin/python
print "\nDEFINICION DE NUMEROS PRIMOS"                                  # Sintáctico: Falta el uso de "()".
r = 1
while r = True:                                                         # Sintáctico: La comparación se hace con "==".
    N = input("\nDame el numero a analizar: ")                          """
                                                                        Semántico: El input necesita el casteo a un tipo numérico.
                                                                        Detectado en Ejecución.
                                                                        """
    i = 3
    fact = 0
    if (N mod 2 == 0) and (N != 2):                                     # Sintáctico: "mod" no existe, es "%".
        print "\nEl numero %d NO es primo\n" % N                        # Sintáctico: Falta el uso de "()".
    else:
        while i <= (N^0.5):                                             # Sintáctico: La potencia se realiza con "**".
            if (N % i) == 0:
                mensaje="\nEl numero ingresado NO es primo\n" % N       """
                                                                        Semántico: Hace falta el uso de "%d".
                                                                        Detectado en Ejecución.
                                                                        """
                msg = mensaje[4:6]
                print msg                                               # Sintáctico: Falta el uso de "()".
                fact = 1
            i+=2
        if fact == 0:
            print "\nEl numero %d SI es primo\n" % N                    # Sintáctico: Falta el uso de "()".
r = input("Consultar otro número? SI (1) o NO (0)--->> ")
