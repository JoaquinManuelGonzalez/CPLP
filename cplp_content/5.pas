Program Main;
    Var x, y, z:integer;
    a, b: array[1..6] of integer;

    Procedure B;
        var y,x: integer;

        Procedure C;
            var c:integer;
        begin
            y:= y + 2; c:=2;
            a(x):=a(x)*y;
            if (y >7) then
                b(y-6)=b(4)*2+b(y-6);
            D;
        end;

    begin
        x:=2; y:= x + 3;
        C; x:= x + 1; write (x,y);
    End;

    Procedure D;
    begin
        x:= c + 5 + x;
        y:= y + 2;
    end;

    Function C: integer;
    begin
        b(x):= b(x) + 1;
        x:= x + 1;
        a(y):=a(y)+b(x)+3;
        a(x+2)=a(x) + 2;
        return b(x);
    end

begin
    x:= 1; Y:= 2;
    for z:=1 to 6 do begin
        a(z):= z;
        b(z):= z + 2;
    end;
    B;
    for z:=1 to 6 do write (a(z), b(z));
end.