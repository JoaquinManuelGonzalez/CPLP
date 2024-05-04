PROGRAM P1;
var
    a:integer;
    b:char;
    c: array[1..10] of integer

    Procedure PP1;
        var
            a:char;
            p:integer;
        Function x: integer;
            var
                z:integer;
        begin
            a:="j";
            z=-1;
            return z;
        end;
    Begin
        p:=x;
        write(a);
        p:=x+3;
        c[p]=8;
        p:=x+2;
        c[p]=x;
    end;

    Procedure x;
        var 
            b:char;
        Procedure PP2;
        Begin
            write("para qué estoy aquí?");
        end;
    Begin
        a:=1;
        c[a]:=4;
        b:="a";
        write(concat(c[1],b)); /*concat convierte a string los parámetros, concatena y retorna un string;*/
        PP1();
        b:="b";
        write(concat(c[5],b)); /*concat convierte a string los parámetros, concatena y retorna un string;*/
    End;

BEGIN
    a:=3;
    b:="c";
    for a:=3 to 10 do
    begin
        c[a]:=2*a;
    end;
    x;
    write(b);
    write(a);
    for a:=1 to 10 do
        write(c[a]-3);
END.


CADENA ESTÁTICA

*1  ***Registro de Activación P1
    Punto de Retorno
    a = 3 -> 3...10 -> 1 -> 1...10
    b = "c"
    c(1) = 4 -> -1
    c(2) = 8
    c(3) = 6
    c(4) = 8
    c(5) = 10
    c(6) = 12
    c(7) = 14
    c(8) = 16
    c(9) = 18
    c(10) = 20
    Procedure x
    Procedure PP1
    Valor de Retorno

*2  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*1)
    b = "a" -> "b"
    Procedure PP2
    Valor de Retorno

*3  ***Registro de Activación PP1
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*2)
    a = "j"
    p = -1 -> 2 -> 1
    Valor de Retorno -1 -> -1 -> -1 -> -1

*4  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

*5  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

*6  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

*7  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

Imprime:
    4a
    j
    10b
    c
    1
    -4
    5
    3
    5
    7
    9
    11
    13
    15
    17


CADENA DINÁMICA

*1  ***Registro de Activación P1
    Punto de Retorno
    a = 3 -> 3...10 -> 1 -> 1...10
    b = "c"
    c(1) = 4 -> -1
    c(2) = 8
    c(3) = 6
    c(4) = 8
    c(5) = 10
    c(6) = 12
    c(7) = 14
    c(8) = 16
    c(9) = 18
    c(10) = 20
    Procedure x
    Procedure PP1
    Valor de Retorno

*2  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*1) 
    b = "a" -> "b"
    Procedure PP2
    Valor de Retorno

*3  ***Registro de Activación PP1
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*2)
    a = "j"
    p = -1 -> 2 -> 1
    Valor de Retorno -1 -> -1 -> -1 -> -1

*4  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

*5  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

*6  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

*7  ***Registro de Activación x
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    z = -1
    Valor de Retorno

Imprime:
    4a
    j
    10b
    c
    1
    -4
    5
    3
    5
    7
    9
    11
    13
    15
    17