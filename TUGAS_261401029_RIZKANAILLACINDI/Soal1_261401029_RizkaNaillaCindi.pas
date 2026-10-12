program TotalBelanja;
uses crt;

   var 
     N,i: integer;
     harga,total_sebelum,besar_diskon,total_bayar: real;

begin     
     clrscr;
     writeln('Program Hitung Total Belanja');
     write('masukkan jumlah barang: ');readln(N);
     total_sebelum:= 0;

     for i:= 1 to N do 
begin
    write('masukkan harga barang ke-', i, ':Rp');readln(harga);
    total_sebelum := total_sebelum + harga;
end;

  if total_sebelum < 100000 then
     besar_diskon:= 0 
  else if (total_sebelum >= 100000) and (total_sebelum < 500000) then
     besar_diskon:= 0.10 * total_sebelum
  else besar_diskon:= 0.20 * total_sebelum;

  total_bayar := total_sebelum - besar_diskon;

  writeln;
  writeln('Rincian Belanja');   
  writeln('Total Sebelum Diskon: Rp', total_sebelum:0:2);
  writeln('Besar Diskon: Rp', besar_diskon:0:2);
  writeln('Total Bayar Akhir: Rp', total_bayar:0:2);
  readln;      
end.