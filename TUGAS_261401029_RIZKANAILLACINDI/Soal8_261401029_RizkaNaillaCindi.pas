program GajiKaryawan;
uses crt;

var
    golongan: char;
    jamKerja, jamLembur: integer;
    gajiPokok, lembur, bonus, totalGaji: longint;

begin
    clrscr;
    write('Masukkan Golongan (A/B/C): ');
    readln(golongan);
    write('Masukkan Total Jam Kerja per Minggu: ');
    readln(jamKerja);

    golongan := upcase(golongan);

    case golongan of
        'A': gajiPokok := 1500000;
        'B': gajiPokok := 2000000;
        'C': gajiPokok := 2500000;
    else
        begin
            writeln('Golongan tidak valid!');
            readln;
            exit;
        end;
    end;

    if jamKerja > 40 then
    begin
        jamLembur := jamKerja - 40;
        lembur := jamLembur * 20000;
    end
    else
    begin
        lembur := 0;
    end;

    bonus := 0;
    if (golongan = 'C') and (jamKerja > 50) then
    begin
        bonus := 100000;
    end;

    totalGaji := gajiPokok + lembur + bonus;

    writeln;
    writeln('RINCIAN GAJI KARYAWAN');
    writeln('Gaji Pokok: Rp', gajiPokok);
    writeln('Lembur: Rp', lembur);
    writeln('Bonus: Rp', bonus);
    writeln('');
    writeln('Total Gaji: Rp', totalGaji);
    readln;
end.