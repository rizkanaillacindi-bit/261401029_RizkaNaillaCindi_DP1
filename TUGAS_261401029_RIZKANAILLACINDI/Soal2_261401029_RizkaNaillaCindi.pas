program SistemLogin;
uses crt; 

   var 
     sandi_rahasia,input_sandi: string;
     kesempatan: integer;

   begin  
  clrscr;
  sandi_rahasia:= 'Rizka118';
  kesempatan:= 0;

  repeat
    write('masukkan kata sandi: ');readln(input_sandi);
    kesempatan:= kesempatan + 1;

    if input_sandi = sandi_rahasia then
begin
    writeln('Login Berhasil! Selamat Datang');
    break;
  end;

   if kesempatan = 3 then
begin  
   writeln('Akses Ditolak! Akun Terkunci. ');
end;
until kesempatan = 3; 
readln;  
end.