program BinaryTree;
uses crt;

type
  tptr = ^node;
  node = record
    left: tptr;
    data: integer;
    right: tptr;
  end;

var
  c, x: integer;
  t: tptr;

procedure insert(x: integer; var t: tptr);
begin
  if t = nil then
  begin
    new(t);
    t^.left := nil;
    t^.data := x;
    t^.right := nil;
  end
  else if x < t^.data then
    insert(x, t^.left)
  else
    insert(x, t^.right);
end;

procedure inorder(t: tptr);
begin
  if t <> nil then
  begin
    inorder(t^.left);
    write(t^.data:5);
    inorder(t^.right);
  end;
end;

procedure preorder(t: tptr);
begin
  if t <> nil then
  begin
    write(t^.data:5);
    preorder(t^.left);
    preorder(t^.right);
  end;
end;

procedure postorder(t: tptr);
begin
    if t <> nil then
    begin
        postorder(t^.left);
        postorder(t^.right);
        write(t^.data:5);
    end;
end;

procedure hapus(t: tptr);
begin
    if t <> nil then
    begin
        hapus(t^.left);
        hapus(t^.right);
        dispose(t);
    end;
end;

begin
  clrscr;
  t := nil;

  writeln('INPUT DATA ANGKA');
  writeln('Masukkan -1 untuk mengakhiri input');

  repeat
    write('Masukkan angka: ');
    readln(x);

    if x <> -1 then  // karene kita mengganti tipe data 
      insert(x, t);  // jadi menggunakan -1 untuk mengakhiri input
  until x = -1;

  repeat
    writeln;
    writeln('===== MENU BINARY TREE =====');
    writeln('1. INORDER');
    writeln('2. PREORDER');
    writeln('3. POSTORDER');
    writeln('4. EXIT');
    write('Masukkan pilihan: ');
    readln(c);

    case c of
      1:
        begin
          write('INORDER   : ');
          inorder(t);
          writeln;
        end;

      2:
        begin
          write('PREORDER  : ');
          preorder(t);
          writeln;
        end;

      3:
        begin
          write('POSTORDER : ');
          postorder(t);
          writeln;
        end;

      4:
        writeln('Program selesai.');

    else
      writeln('Pilihan tidak valid!');
    end;

  until c = 4;

  hapus(t);
  readln;
end.
