program TarifParkir;
uses crt;

var
    kode: char;
    lama, tarif: longint;

begin
    clrscr;
    write('Masukkan kode kendaraan (M/K/B): ');
    readln(kode);
    write('Masukkan lama parkir (jam): ');
    readln(lama);

    tarif := 0;
    case upcase(kode) of
        'M': begin
            if lama > 10 then
                tarif := 30000
            else if lama > 0 then
                tarif := 5000 + (lama - 1) * 3000;
        end;
        'K': begin
            if lama > 10 then
                tarif := 10000
            else if lama > 0 then
                tarif := 2000 + (lama - 1) * 1000;
        end;
        'B': begin
            if lama > 10 then
                tarif := 50000
            else if lama > 0 then
                tarif := 10000 + (lama - 1) * 5000;
        end
    else
        writeln('Kode kendaraan tidak valid!');
    end;

    if (upcase(kode) = 'M') or (upcase(kode) = 'K') or (upcase(kode) = 'B') then
        writeln('Total tarif parkir: Rp', tarif);

    readln;
end.