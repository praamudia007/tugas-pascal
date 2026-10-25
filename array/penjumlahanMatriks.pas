program operasiMatriks;
uses crt;
var
    arOp1, arOp2, arOp3: array [1..2,1..2] of integer;
    i,j : integer;

begin
    clrscr;
    writeln('Matriks pertama');
    for i:= 1 to 2 do begin
        for j := 1 to 2 do begin
            write('Masukan elemen baris[',i,'][',j,']: ');readln(arOp1[i,j]);
        end;
    end;
    
    writeln('Matriks kedua');
    for i:= 1 to 2 do begin
        for j := 1 to 2 do begin
            write('Masukan elemen baris[',i,'][',j,']: ');readln(arOp2[i,j]);
        end;
    end;

    writeln('Elemen matrik operand 1 adalah: ');
    for i:= 1 to 2 do begin
        for j := 1 to 2 do begin
            write(arOp1[i,j]:3);       
        end;writeln;
    end;

    writeln('Elemen matrik operand 2 adalah: ');
    for i:= 1 to 2 do begin
        for j := 1 to 2 do begin
            write(arOp2[i,j]:3);       
        end;writeln;
    end;

    
    for i:= 1 to 2 do begin
        for j := 1 to 2 do begin
            arOp3[i,j] := arOp1[i,j] + arOp2[i,j];
        end;
    end;
    
    writeln('Hasil penjumlahan adalah: ');
    for i:= 1 to 2 do begin
        for j := 1 to 2 do begin
            write(arOp3[i,j]:3); 
        end;writeln;
    end;

end.
