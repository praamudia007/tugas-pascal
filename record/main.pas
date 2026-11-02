program recordDalanmRecod;
uses crt;

type
    alamatMhs= record
    jalan: string;
    kecamatan:string;
    kota: string;
end;

type
    Mahasiswa = record
    nama: string;
    nim: string;
    ipk: real;
    alamat: alamatMhs;
end;

var 
    data_mhs: array [0..100] of Mahasiswa;
    i,j,n: integer;


begin
    clrscr;
    write('Masukan jumlah Mahasiswa ');readln(n);
    
    for i:= 0 to n-1 do begin
        with data_mhs[i] do begin
            write('Nama: ');readln(nama);
            write('Nim: ');readln(nim);
            write('Ipk: ');readln(ipk);
            write('Alamat(jalan): ');readln(alamat.jalan);
            write('Kecamatan: ');readln(alamat.kecamatan);
            write('Alamat(kota): ');readln(alamat.kota);
        end;writeln;
    end;

    writeln('====Informasi Mahasiswa====');
    for i:= 0 to n-1 do begin
        with data_mhs[i] do begin
            writeln('Nama: ', nama);
            writeln('Nim: ', nim);
            writeln('Ipk: ', ipk:0:2);
            writeln('Alamat: ', alamat.jalan,', kecamatan ',alamat.kecamatan, ', kota ', alamat.kota);
        end;writeln;
    end;
end.

