program stack5;
uses crt;
const max = 10;

type
    tumpukan = record
        banyak : 0..max;
        elemen : array[1..max] of string;
    end;

var
    s : tumpukan;

procedure buatstack(var s : tumpukan);
begin
    s.banyak := 0;
end;

function penuh(s : tumpukan): boolean;
begin
    if s.banyak = max then penuh := true
    else penuh := false;
end;

function kosong(s : tumpukan): boolean;
begin
    if s.banyak = 0 then kosong := true
    else kosong := false;
end;

procedure push(data: string; var s : tumpukan);
begin
    if not penuh(s) then
    begin
        s.banyak := s.banyak + 1;
        s.elemen[s.banyak] := data;
        writeln(s.elemen[s.banyak]);
    end
    else
        writeln('Stack Penuh');
end;

procedure POP(var s : tumpukan);
begin
    if not kosong(s) then
    begin
        {data := s.elemen[s.banyak];}
        s.banyak := s.banyak - 1;
        writeln(s.elemen[s.banyak]);
    end
    else
        writeln('Stack kosong');
end;

begin
    clrscr;
    buatstack(s);

    push('A',s);
    push('B',s);
    push('C',s);

    POP(s);
    push('D',s);
    push('E',s);
end.
