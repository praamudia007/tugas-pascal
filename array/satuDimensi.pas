program ArraySatuDimensi;
uses crt;

var
 
    nilai: array [1..100] of integer;
    i, banyak: integer;

begin
    clrscr;
    write('Banyak data: ');readln(banyak);
    for i := 1 to banyak do begin
        write('Masukan nilai ',i,': ');readln(nilai[i]);
    end;

    for i := 1 to banyak do begin
        writeln('Nilai ',i,': ',nilai[i]);
    end;writeln();
end.

