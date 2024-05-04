Procedure Main;
    var x, y: integer;
    vec: array[1..7] of integer;

    Function B:integer;
        var y:integer;
    begin
        y:=4; x:= y - 2;
        return (x);
    end;

    Procedure D;
        var i, x: integer;
        vec: array[1..7] of integer;

        Procedure A;
            var y:integer;
        begin
            y:=x + 5; vec(i + 2):= vec(i + 2) + y;
            x:= x +B; C;
        end;

        Function B:integer;
        begin
            vec(i):= y + 2; i:=i+2;
            vec(i):= vec(1) * i;
            return ( vec(i)-vec(1) );
        end;

    begin
        for x:= 1 to 7 do vec(x):= 1;
        x:=1; i:= 2;
        if y = 7 then A; else C;
        for x:= 1 to 7 do write(vec(x));
    end;

    Procedure C;
        var i, y: integer;
    begin
        i:= 1; y:= 6; x:= x + B;
        vec(2):= vec(2) * x;
        while (i < y) do begin
            vec(i):= vec(i) + B - 1;
            i:= i + 3;
        end;
        y:= y - 4;
    end;

begin
    for x:= 1 to 7 do vec(x):= x;
    x:= 3; y:= B+5; D;
    if (x = 2) then begin
        vec(x):= vec(x) + 2;
        vec(x + 3):= vec(x) * 3;
    end;
    for x:= 1 to 7 do write(vec(x));
end.


CADENA ESTÁTICA

*1  Registro de Activación Main
    Punto de Retorno
    x = 1...7 -> 3 -> 2 -> 2 -> 4 -> 2 -> 2 -> 1...7
    vec(1) = 1 -> 2
    vec(2) = 2 -> 8 -> 10
    vec(3) = 3
    vec(4) = 4 -> 5
    vec(5) = 5 -> 30
    vec(6) = 6
    vec(7) = 7
    y = 7
    Function B
    Procedure D
    Procedure C
    Valor de Retorno 2

*2  Registro de Activación B
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*1)
    y = 4
    valor de Retorno

*3  Registro de Activación D
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*1)
    x = 1...7 -> 1 -> 4 -> 1...7
    vec(1) = 1
    vec(2) = 1 -> 9
    vec(3) = 1
    vec(4) = 1 -> 7 -> 4
    vec(5) = 1
    vec(6) = 1
    vec(7) = 1
    i = 2 -> 4
    Procedure A
    Function B
    Valor de Retorno

*4  Registro de Activación A
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*3)
    y = 6
    Valor de Retorno 3

*5  Registro de Activación B
    Punto de Retorno
    Enlace estático (*3)
    Enlace dinámico (*4)
    Valor de Retorno

*6  Registro de Activación C
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*4)
    i = 1 -> 4 -> 7
    y = 6 -> 2
    Valor de Retorno 2 -> 2 -> 2

*7  Registro de Activación B
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*6)
    y = 4
    valor de Retorno

*8  Registro de Activación B
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*6)
    y = 4
    valor de Retorno

*9  Registro de Activación B
    Punto de Retorno
    Enlace estático (*1)
    Enlace dinámico (*6)
    y = 4
    valor de Retorno

Imprime:
    1
    9
    1
    4
    1
    1
    1
    2
    10
    3
    5
    30
    6
    7
