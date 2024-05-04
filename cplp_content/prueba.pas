Program P                           // Sintáctico: Falta ;
    var 5: integer;                 // Sintáctico: No se puede tener un número como nombre de una variable
    var a:char;
Begin
    for i:=5 to 10 do begin         // Semántico: La variable "i" no está declarada. Detectado en Compilación.
        write(a);                   // Semántico: La variable "a" no está inicializada. Detectado en Compilación.
        a=a+1;                      {
                                    Sintáctico: Es a:=a+1;
                                    Semántico: La variable "a" es de tipo "char", sumarle
                                    1 no es una operación válida. Detectado en Compilación.
                                    } 
    end;
End.