program gradeNilai;
var
    i:integer;

Const
    grade: array[0..4] of char = ('A','B','C','D','E');

begin
    for i := 0 to 4 do begin
        writeln('Nilai kosakata array ke ',i,'= ',grade[i],' ');
    end;writeln;
end.
