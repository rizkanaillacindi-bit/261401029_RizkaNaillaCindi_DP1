program TampilkanNamaHari;
uses crt;

var
    hari: integer;

begin
    clrscr;
    write('Input: ');
    readln(hari);
    write('Output: ');
    case hari of
        1: write('Hari Senin');
        2: write('Hari Selasa');
        3: write('Hari Rabu');
        4: write('Hari Kamis');
        5: write('Hari Jumat');
        6: write('Hari Sabtu');
        7: write('Hari Minggu');
    else
        write('Input Tidak Valid!');
    end;

    writeln('');
    readln;
end.