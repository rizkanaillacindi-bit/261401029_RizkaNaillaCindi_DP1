program NilaiAkhir;
uses crt;

var
    tugas, uts, uas, akhir, kehadiran: real;
    status: string;
    indeks: char;

begin
    clrscr;
    write('Masukkan Nilai Tugas: ');
    readln(tugas);
    write('Masukkan Nilai UTS: ');
    readln(uts);
    write('Masukkan Nilai UAS: ');
    readln(uas);
    write('Masukkan Persentase Kehadiran (0-100): ');
    readln(kehadiran);

    akhir := (0.30 * tugas) + (0.30 * uts) + (0.40 * uas);

    if (akhir >= 60) and (kehadiran >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    if akhir >= 85 then
        indeks := 'A'
    else if akhir >= 75 then
        indeks := 'B'
    else if akhir >= 60 then
        indeks := 'C'
    else if akhir >= 50 then
        indeks := 'D'
    else
        indeks := 'E';

    writeln;
    writeln('Nilai Akhir: ', akhir:0:2);
    writeln('Indeks Huruf: ', indeks);
    writeln('Status: ', status);
    readln;
end.