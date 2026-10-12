program HitungJumlahHari;
uses crt;

var
    tahun, bulan, hari: integer;
    isKabisat: boolean;

begin
    clrscr;
    write('Masukkan tahun: ');
    readln(tahun);
    write('Masukkan nomor bulan (1-12): ');
    readln(bulan);

    if ((tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0))) then
        isKabisat := true
    else
        isKabisat := false;

    case bulan of
        1, 3, 5, 7, 8, 10, 12: hari := 31;
        4, 6, 9, 11: hari := 30;
        2: begin
            if isKabisat then
                hari := 29
            else
                hari := 28;
        end;
    else
        hari := 0;
    end;

    if hari <> 0 then
        writeln('Jumlah hari: ', hari, ' hari')
    else
        writeln('Nomor bulan tidak valid!');
end.