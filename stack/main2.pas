program balik_kalimat;
uses crt;
const elemen = 255;
Type typearray = string[elemen];
    typeStack = record
    isi: typearray;
    atas: 0..elemen;
    end;

var 
    T :typeStack;
    i : integer;
    kalimat : typearray;

procedure buatstack(var T :typeStack);
begin
    T.atas := 0
end;

procedure PUSH(var T:typeStack; x :char);
begin
    T.atas := T.atas + 1;
    T.isi[T.atas] := x ;
end;


function POP(var T: typeStack)  :char;
begin
    POP := T.isi[T.atas];
    T.atas := T.atas - 1;
end;

begin
    clrscr;
    buatstack(T);
    writeln('TUMPUKAN UNTUK MEMBALIK KALIMAT');     
    writeln('-------------------------------');     
    writeln;  

    write('Isikan sembarang kalimat: '); 
    readln(Kalimat); 

    clrscr;
    writeln('KALIMAT ASLI:'); writeln(Kalimat); 
    writeln;writeln('SETELAH DIBALIK:'); 

    for i := 1 to length(kalimat) do begin
        PUSH(T,kalimat[i]);
    end;


     for I := 1 to length(Kalimat) do  begin
        write(POP(T));      
     end;writeln;
end.
