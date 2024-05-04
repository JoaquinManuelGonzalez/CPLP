Program Main

Var a: array[1..10] of integer;
x,y,z:integer

    Procedure A ()
        var y,t: integer;
    begin
        a(1):= a(1)+1;z:=z+1;
        t:=1; y:=2;
        B(); a(y):=a(y)+3; y:=y+1;
        If z=11 Then Begin
            a(z-1):=a(z-2) + 3;
            z:=z-4;
            a(z-y):=a(z) – a(y) + 5;
        End;
    end;

    Function t():integer
    begin
        y:=y+1; z:=z-6;
        return(y+x);
    end;

    Procedure B()
        var d:integer;
        Procedure I ()
        begin
            x:=0; x:=x+6;
        end;
    begin
        x:=x+t; d:=0;
        while x>d do begin
            I(); x:=x-1;
            d:=d + 2;
        end;
    end;

begin
    For x:=1 To 10 do a(x):=x;
    x:=5; y:=1; z:=10;
    A();
    For x:=1 To 10 do write(a(x),x);
end.

CADENA ESTÁTICA

*1  ***Registro de Activación Main
    Punto de Retorno
    a(1) = 1 -> 2
    a(2) = 2 -> 5
    a(3) = 3
    a(4) = 4
    a(5) = 5
    a(6) = 6
    a(7) = 7
    a(8) = 8
    a(9) = 9
    a(10) = 10
    x = 1...10 -> 5 -> 12 -> 0 -> 6 -> 5 -> 0 -> 6 -> 5 -> 0 -> 6 -> 5 -> 1...10
    y = 1 -> 2
    z = 10 -> 11 -> 5
    procedure A
    function t
    procedure B
    Valor de Retorno

*2  ***Registro de Activación A
    Punto de Retorno
    Enlace Estático (*1)
    Enlace Dinámico (*1)
    t = 1
    y = 2 -> 3
    Valor de Retorno

*3  ***Registro de Activación B
    Punto de Retorno
    Enlace Estático (*1)
    Enlace Dinámico (*2)
    d = 0 -> 2 -> 4 -> 6
    Procedure I
    Valor de Retorno 7

*4  ***Registro de Activación t
    Punto de Retorno
    Enlace Estático (*1)
    Enlace Dinámico (*3)
    Valor de Retorno

*5  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno

*6  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno
    
*7  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno

Imprime:
    2,1
    5,2
    3,3
    4,4
    5,5
    6,6
    7,7
    8,8
    9,9
    10,10

CADENA DINÁMICA

*1  ***Registro de Activación Main
    Punto de Retorno
    a(1) = 1 -> 2
    a(2) = 2 -> 5
    a(3) = 3
    a(4) = 4 -> 9
    a(5) = 5
    a(6) = 6
    a(7) = 7
    a(8) = 8
    a(9) = 9
    a(10) = 10 -> 12
    x = 1...10 -> 5 -> 6 -> 0 -> 6 -> 5 -> 0 -> 6 -> 5 -> 0 -> 6 -> 5
    y = 1
    z = 10 -> 11 -> 7
    procedure A
    function t
    procedure B
    Valor de retorno

*2  ***Registro de Activación A
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*1)
    t = 1
    y = 2 -> 3
    Valor de Retorno

*3  ***Registro de Activación B
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*2)
    d = 0 -> 2 -> 4 -> 6
    procedure I
    Valor de Retorno

*4  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno

*5  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno

*6  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno

*7  ***Registro de Activación I
    Punto de Retorno
    Enlace Estático (*3)
    Enlace Dinámico (*3)
    Valor de Retorno

Imprime:
    2,1
    5,2
    3,3
    9,4
    5,5
    6,6
    7,7
    8,8
    9,9
    12,10