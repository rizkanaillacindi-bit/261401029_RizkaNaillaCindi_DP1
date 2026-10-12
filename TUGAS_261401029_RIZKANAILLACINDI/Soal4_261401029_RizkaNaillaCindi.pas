program KalkulatorSederhana;
uses crt;

   var 
     pilihan,bil1,bil2,hasil: integer;
     angka1,angka2: real;
     ulang: char;

begin
  repeat        
  clrscr;
  writeln('Menu Pilihan Operasi');
  writeln('1. penjumlahan');
  writeln('2. pengurangan');
  writeln('3. perkalian');
  writeln('4. pembagian real');
  writeln('5. div & mod');
  write('pilih operasi (1-5): ');readln(pilihan);

  if (pilihan >= 1) and (pilihan <= 4) then
begin
    write('masukkan angka pertama: ');readln(angka1);
    write('masukkan angka kedua: ');readln(angka2);
    case pilihan of 
    1: writeln('hasil penjumlahan: ', (angka1 + angka2):0:2);
    2: writeln('hasil pengurangan: ', (angka1 - angka2):0:2);
    3: writeln('hasil perkalian: ', (angka1 * angka1):0:2);
    4: begin 
        if angka2 <> 0 then
            writeln('hasil pembagian real: ', (angka1 / angka2):0:2)
        else 
           writeln('error: pembagian dengan nol tidak diperbolehkan.');
      end;
    end;
  end
  else if pilihan = 5 then
  begin 
     write('masukkan bilangan bulat pertama: ');readln(bil1);
     write('masukkan bilangan bulat kedua: ');readln(bil2);
     if bil2 <> 0 then
     begin
        writeln('hasil div: ', bil1 div bil2);
        writeln('hasil mod: ', bil1 mod bil2);
    end
    else 
       writeln('error: pembagian dengan nol tidak diperbolehkan,');
end
else
   writeln('pilihan menu tidak valid.');

 writeln;
 write('apakah ingin melakukan perhitungan lagi? (Y/T): ');readln(ulang);
until (ulang = 'T') or (ulang = 't');
end.  
