program ii;
uses crt;
Type kelas = array[1..4] of string;

var 
    stack: kelas;
    top: byte;
    elemen: string;
    i: integer;

begin
    clrscr;
    top:= 0;
    for i:= 1 to 4 do begin
        write('Masukan nama ke ',i,' = ');readln(stack[i]);
        top := top + 1;
    end;

    writeln('Posisi tumpukan = ',top);
    writeln('Pengambilan datas');
    
    for i := 1 to 4 do begin
        elemen := stack[i];
        top := top - 1;   
    end;writeln;
    writeln('Data elemen sekarang= ', elemen);
    writeln('Posisi tumpukan= ',top);
end.
