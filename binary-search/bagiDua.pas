program bagDua;
uses crt;

const 
    A:array [1..14] of integer= (10, 12, 14, 15, 16, 18, 19, 20, 22, 24, 25, 26, 28, 29);
var
    tengah, atas, bawah, cari: integer;
    ketemu: boolean;

begin
clrscr;
write('Masukan angka yang akan dicari: ');readln(cari);
ketemu := false;
bawah := 1;
atas := 14;
tengah := 0;

while((not ketemu) and (bawah <= atas)) do begin
    tengah := (atas + bawah) div 2;

    if(A[tengah] = cari) then begin
        ketemu := true;
        writeln('Masuk if');
    end
    else if(cari > A[tengah]) then begin
        bawah := tengah + 1;
        writeln('Masuk iff');
    end 
    else  begin
        atas := tengah -1;
        writeln('Masuk ifff');
    end;
end;

if(ketemu) then begin
    writeln('Ketemu di indek ke-', tengah);
end;
end.
