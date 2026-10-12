program NilaiMahasiswa;
uses crt;

var 
  M,N,i,j,lulus,tidak_lulus: integer;
  nilai,total_nilai,rata_rata: real;

begin  
  clrscr;
  write('masukkan jumlah mahasiswa: ');readln(M);
write('masukkan jumlah tugas: ');readln(N);

lulus:= 0;
tidak_lulus:= 0;
writeln;

for i := 1 to M do 
begin
   writeln('mahasiswa ke-', i);
   total_nilai:= 0;

for j:= 1 to N do
 begin
   write('masukkan nilai tugas ke-', j, ': ');readln(nilai);
   total_nilai:= total_nilai + nilai;
end;

rata_rata:= total_nilai / N;
writeln('rata-rata nilai: ', rata_rata:0:2);

if rata_rata >= 65 then
begin
   writeln('status: LULUS');  
   lulus:= lulus + 1;
end
else 
begin
   writeln('status: TIDAK LULUS');
   tidak_lulus:= tidak_lulus + 1;
end;
writeln;
end;

 writeln('');
 writeln('Total Mahasiswa LULUS: ', lulus);
 writeln('Total Mahasiswa TIDAK LULUS: ', tidak_lulus);
 readln;
end.