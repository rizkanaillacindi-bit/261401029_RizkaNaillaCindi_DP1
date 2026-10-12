program DeretAngka;
uses crt;

   var 
     n,kategori,i: integer;
begin     
    clrscr;
    write('masukkan nilai N: ');readln(n);
    write('pilih kategori (1: ganjil, 2: genap): ');readln(kategori);
    i:= 0;
    while i < n do
begin
    i:= i + 1;
    if (kategori = 1) and (i mod 2 = 0) then
        continue;
    if (i mod 5 = 0) then
        continue;
    write(i,'');
end;
readln;           
end.