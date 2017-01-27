program kalkulator_kesehatan;
uses crt;
label menu,footer,pria,wanita;
 var berat,tinggi,hasil,x,z,j,k,l:real;
     opt,ket:string;
     nav,grade,main:char;
begin
textbackground(9);
clrscr;

 {*  menu *}
 menu:
 textcolor(14);
 writeln;
 writeln(' ++++++++++++++++++++++++++++++++++++++++++++++++++++++');
 writeln(' ````````:/:::://-`````````````````````````````````````');
 writeln(' ``````.o-       :+```````````  _   _ __   ___   ___ ``');
 writeln(' `.:/:::-  +ooo/  ::::/:.````` /_\ | |\ \ / \ \ / /_\ `');
 writeln(' -+.       syyyo       .+-``` / _ \| |_\ V / \ V / _ \`');
 writeln(' s`   :++++syyys++++-   .o`` /_/ \_|____\_/   \_/_/ \_\');
 writeln(' +:   /yyyyyyyyyyyyy:   :+``                           ');
 writeln(' `//- .::::syyyo::::.`-//````` +-+-+-+-+-+-+-+-+-+-+ ``');
 writeln(' ``-o      syyyo     `o-`````` |K|a|l|k|u|l|a|t|o|r| ``');
 writeln(' ``-o      ////:      o-`````` +-+-+-+-+-+-+-+-+-+-+ ``');
 writeln(' ```//`     `-      `//``````` ----- APP  V.0.1----- ``');
 writeln(' ````.://:://-//:::/:.```````` +-+-+-+-+-+-+-+-+-+-+ ``');
 writeln(' ++++++++++++++++++++++++++++++++++++++++++++++++++++++');
 writeln;
textcolor(15);
 writeln(' MENU :');
 writeln;
textcolor(10);
 write(' >');
textcolor(15);
 writeln(' [1] Kalkulator BMI ');
textcolor(10);
 write(' >');
textcolor(15);
 writeln(' [2] Documentation ');
textcolor(10);
 write(' >');
textcolor(15);
 writeln(' [3] About ');
 writeln;
textcolor(12);
 write(' >');
textcolor(7);
 writeln(' [0] Exit ');
 writeln;
textcolor(15);
 write(' Pilih Menu : '); textcolor(12); ;readln(nav);

 {* navigasi *}
  case nav of
   '1' : begin
   clrscr;
         {* program kalkulator bmi  *}
        textcolor(15);
         writeln;
         writeln(' +-+-+-+-+-+-+-+-+-+-+    ');
         writeln(' |K|a|l|k|u|l|a|t|o|r|    ');
         writeln(' +-+-+-+-+-+-+-+-+-+-+    ');
         writeln(' -------- BMI --------    ');
         writeln(' +-+-+-+-+-+-+-+-+-+-+    ');
         writeln;
         writeln;
         writeln(' Pilih jenis kelamin ');
         writeln;
         textcolor(10);
         write(' >');
        textcolor(15);
         writeln(' [1] Pria ');
        textcolor(10);
         write(' >');
        textcolor(15);
         writeln(' [2] Wanita ');
         writeln;
        textcolor(12);
         write(' >');
        textcolor(7);
         writeln(' [0] Kembali ');
         writeln;
        textcolor(15);
         write(' Pilih : '); textcolor(12); readln(main);
         writeln;
         {* navgasi bmi *}
          case main of
          {* Pria *}
           '1' : begin
           pria:
           clrscr;
           gotoxy(1,3);
                textcolor(11);
                 writeln(' ++++++++++++++++++++++++++++++++++++++++++++++++++++++');
                 writeln(' ````````:/:::://-`````````````````````````````````````');
                 writeln(' ``````.o-       :+```````````  _   _ __   ___   ___ ``');
                 writeln(' `.:/:::-  +ooo/  ::::/:.````` /_\ | |\ \ / \ \ / /_\ `');
                 writeln(' -+.       syyyo       .+-``` / _ \| |_\ V / \ V / _ \`');
                 writeln(' s`   :++++syyys++++-   .o`` /_/ \_|____\_/   \_/_/ \_\');
                 writeln(' +:   /yyyyyyyyyyyyy:   :+``                           ');
                 writeln(' `//- .::::syyyo::::.`-//````` +-+-+-+-+-+-+-+-+-+-+ ``');
                 writeln(' ``-o      syyyo     `o-`````` |K|a|l|k|u|l|a|t|o|r| ``');
                 writeln(' ``-o      ////:      o-`````` +-+-+-+-+-+-+-+-+-+-+ ``');
                 writeln(' ```//`     `-      `//``````` ------ BMI PRIA ----- ``');
                 writeln(' ````.://:://-//:::/:.```````` +-+-+-+-+-+-+-+-+-+-+ ``');
                 writeln(' ++++++++++++++++++++++++++++++++++++++++++++++++++++++');
                 writeln;
                textcolor(7);
                 writeln(' | Body Mass Index adalah perhitungan kalkulasi ');
                 writeln(' | yang mendasarkan pada tinggi dan berat badan ');
                 writeln(' | anda yang pada akhirnya digunakan untuk mendeteksi');
                 writeln(' | derajat badan anda apakah tergolong kurus, berat');
                 writeln(' | badan ideal, gemuk maupun obesitas.');
                 writeln;
                textcolor(12);
                 write(' #');
                textcolor(15);
                 writeln(' NOTE : Tinggi dlm format Meter Exp : 170cm = 1.70M');
                 writeln;
                textcolor(12);
                 write(' =>');
                textcolor(15);
                 write(' Masukkan tinggi badan (M) : '); textcolor(14); readln(tinggi);
                textcolor(12);
                 write(' =>');
                textcolor(15);
                 write(' Masukkan berat badan (KG) : ');textcolor(14); readln(berat);
                 hasil:=berat / sqr(tinggi);

                 if ( hasil >= 2.70000000000000E+001 ) then
                 grade:='A'
                 else if ( hasil >= 2.30000000000000E+001 ) and ( hasil <= 2.60000000000000E+001 )  then
                 grade:='B'
                 else if ( hasil >= 1.80000000000000E+001 ) and ( hasil <= 2.20000000000000E+001 )  then
                 grade:='C'
                 else if ( hasil >= 0  ) and ( hasil <= 1.70000000000000E+001 )  then
                 grade:='D';
                 case grade of
                 'A': ket:='Tubuh Obesitas';
                 'B': ket:='Tubuh Kegemukan';
                 'C': ket:='Tubuh Ideal';
                 'D': ket:='Tubuh Kurus';
                 end;
                 {* output *}
                 Delay(1000);
                textcolor(10);
                 writeln;
                 write(' =>');
                textcolor(15);
                 writeln(' RESULT ');
                textcolor(10);
                 write('  >');
                textcolor(15);
                 write(' Perhitungan BMI           : '); textcolor(14); writeln(hasil:2:1);
                textcolor(10);
                 write('  >');
                textcolor(15);
                 write(' Hasil                     : '); textcolor(14); writeln(ket);
                 writeln;
                textcolor(10);
                 write('  ~');
                 writeln(' NILAI BMI    | KATEGORI      ');
                 writeln;
                textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' <17          | Kurus         ');
                 textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' 17-23        | Normal        ');
                 textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' 23-27        | Kegemukan     ');
                 textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' >27          | Obesitas      ');
                 {* end output *}
                 {* warning option *}
                  writeln;
                textcolor(15);
                  writeln(' * Menghitung Ulang ?');
                  write(' | [ iya ] = Y | [ exit ] = T : ');textcolor(12);readln(opt);
                  if ( opt = 'y') or ( opt = 'Y') then
                   begin
                   clrscr;
                   goto pria;
                   end
                   else
                   begin
                   clrscr;
                   goto menu;
                   end;
                 {* end warning option *}
                 readln;
           end;
           {* Wanita *}
           '2' : begin
           clrscr;
           wanita:
           gotoxy(1,3);
                textcolor(13);
                 writeln(' ++++++++++++++++++++++++++++++++++++++++++++++++++++++');
                 writeln(' ````````:/:::://-`````````````````````````````````````');
                 writeln(' ``````.o-       :+```````````  _   _ __   ___   ___ ``');
                 writeln(' `.:/:::-  +ooo/  ::::/:.````` /_\ | |\ \ / \ \ / /_\ `');
                 writeln(' -+.       syyyo       .+-``` / _ \| |_\ V / \ V / _ \`');
                 writeln(' s`   :++++syyys++++-   .o`` /_/ \_|____\_/   \_/_/ \_\');
                 writeln(' +:   /yyyyyyyyyyyyy:   :+``                           ');
                 writeln(' `//- .::::syyyo::::.`-//````` +-+-+-+-+-+-+-+-+-+-+ ``');
                 writeln(' ``-o      syyyo     `o-`````` |K|a|l|k|u|l|a|t|o|r| ``');
                 writeln(' ``-o      ////:      o-`````` +-+-+-+-+-+-+-+-+-+-+ ``');
                 writeln(' ```//`     `-      `//``````` ----- BMI WANITA ---- ``');
                 writeln(' ````.://:://-//:::/:.```````` +-+-+-+-+-+-+-+-+-+-+ ``');
                 writeln(' ++++++++++++++++++++++++++++++++++++++++++++++++++++++');
                 writeln;
                textcolor(7);
                 writeln(' | Body Mass Index adalah perhitungan kalkulasi ');
                 writeln(' | yang mendasarkan pada tinggi dan berat badan ');
                 writeln(' | anda yang pada akhirnya digunakan untuk mendeteksi');
                 writeln(' | derajat badan anda apakah tergolong kurus, berat');
                 writeln(' | badan ideal, gemuk maupun obesitas.');
                 writeln;
                textcolor(12);
                 write(' #');
                textcolor(15);
                 writeln(' NOTE : Tinggi dlm format Meter Exp : 170cm = 1.70M');
                 writeln;
                textcolor(12);
                 write(' =>');
                textcolor(15);
                 write(' Masukkan tinggi badan (M) : '); textcolor(14); readln(tinggi);
                textcolor(12);
                 write(' =>');
                textcolor(15);
                 write(' Masukkan berat badan (KG) : ');textcolor(14); readln(berat);
                 hasil:=berat / sqr(tinggi);

                 if ( hasil >= 2.70000000000000E+001 ) then
                 grade:='A'
                 else if ( hasil >= 2.50000000000000E+001 ) and ( hasil <= 2.70000000000000E+001 )  then
                 grade:='B'
                 else if ( hasil >= 1.90000000000000E+001 ) and ( hasil <= 2.40000000000000E+001 )  then
                 grade:='C'
                 else if ( hasil >= 0  ) and ( hasil <= 1.80000000000000E+001 )  then
                 grade:='D';
                 case grade of
                 'A': ket:='Tubuh Obesitas';
                 'B': ket:='Tubuh Kegemukan';
                 'C': ket:='Tubuh Ideal';
                 'D': ket:='Tubuh Kurus';
                 end;
                 {* output *}
                 Delay(1000);
                textcolor(10);
                 writeln;
                 write(' =>');
                textcolor(15);
                 writeln(' RESULT ');
                textcolor(10);
                 write('  >');
                textcolor(15);
                 write(' Perhitungan BMI           : '); textcolor(14); writeln(hasil:2:1);
                textcolor(10);
                 write('  >');
                textcolor(15);
                 write(' Hasil                     : '); textcolor(14); writeln(ket);
                 writeln;
                textcolor(10);
                 write('  ~');
                 writeln(' NILAI BMI    | KATEGORI      ');
                 writeln;
                textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' <18          | Kurus         ');
                 textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' 18-25        | Normal        ');
                 textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' 25-27        | Kegemukan     ');
                 textcolor(10);
                 write('  ~');
                textcolor(15);
                 writeln(' >27          | Obesitas      ');
                 {* end output *}
                 {* warning option *}
                  writeln;
                textcolor(15);
                  writeln(' * Menghitung Ulang ?');
                  write(' | [ iya ] = Y | [ exit ] = T : ');textcolor(12);readln(opt);
                  if ( opt = 'y') or ( opt = 'Y') then
                   begin
                   clrscr;
                   goto wanita;
                   end
                   else
                   begin
                   clrscr;
                   goto menu;
                   end;
                 {* end warning option *}
                 readln;
                 end;
           {* END Wanita *}
           {* Kembali *}
           '0': begin
           clrscr;
                goto menu;
           end;
           {* END Kembali *}
           end;
           end;
           {* END BMI *}
   '3' : begin
   textbackground(cyan);
         clrscr;
         {* program kalkulator sehat  *}
         gotoxy(1,3);
        textcolor(15);
         writeln('                           _   _ __   ___   ___    ');
         writeln('                          /_\ | |\ \ / \ \ / /_\   ');
         writeln('                         / _ \| |_\ V / \ V / _ \  ');
         writeln('                        /_/ \_|____\_/   \_/_/ \_\ ');
         writeln('                          +-+-+-+-+-+-+-+-+-+-+    ');
         writeln('                          |K|a|l|k|u|l|a|t|o|r|    ');
         writeln('                          +-+-+-+-+-+-+-+-+-+-+    ');
         writeln('                          ---------------------    ');
         writeln('                          +-+-+-+-+-+-+-+-+-+-+    ');
         writeln;
         writeln('                       STMIK DUTA BANGSA SURAKARTA  ');
         writeln;
         writeln('                    Kalkulator BMI by Rifki Alfaridzi  ');
         writeln;
         writeln('                     Copyright 2017 - ALVVA Software  ');
         writeln;
         writeln;
         {* warning option *}
         writeln('                           * kembali ke menu ?');
         write('                       | [ iya ] = Y | [ exit ] = T : ');readln(opt);
         if ( opt = 'y') or ( opt = 'Y') then
          begin
         clrscr;
           goto menu;
          end
         else
          begin
          exit;
          end;
         {* end warning option *}
         readln;
   end;
   '2' : begin
         clrscr;
         {* program kalkulator sehat  *}
         writeln;
         writeln('                               DOCUMENTATION       ');
         gotoxy(1,3);
        textcolor(15);
         writeln('                           _   _ __   ___   ___    ');
         writeln('                          /_\ | |\ \ / \ \ / /_\   ');
         writeln('                         / _ \| |_\ V / \ V / _ \  ');
         writeln('                        /_/ \_|____\_/   \_/_/ \_\ ');
         writeln('                          +-+-+-+-+-+-+-+-+-+-+    ');
         writeln('                          |K|a|l|k|u|l|a|t|o|r|    ');
         writeln('                          +-+-+-+-+-+-+-+-+-+-+    ');
         writeln('                          ---------------------    ');
         writeln('                          +-+-+-+-+-+-+-+-+-+-+    ');
         writeln;
        delay(1000);
         writeln('                => Introduction        ');
         textcolor(7);
         writeln('                |  ALVVA kalkulator BMI adalah alat kesehatan');
         writeln('                |  untuk mengukur kenormalan berat badan seseorang');
         writeln('                |  berdasarkan ketinggian tubuhnya, Oleh karena itu ');
         writeln('                |  untuk mengetahui indeks BMI tubuh normal merupakan');
         writeln('                |  hal yang penting agar kita dapat menjaga berat badan');
         writeln('                |  selalu pada kondisi yang normal,seingga dapat menurunkan');
         writeln('                |  resiko timbulnya penyakit yang di karenakan  obesitas');
         writeln;
        delay(1000);
        textcolor(15);
         writeln('                => List Menu        ');
        textcolor(7);
         write('                |  Pilih ');textcolor(12);write('[1]');textcolor(7);
         writeln(' untuk aplikasi kalkulator');
         write('                |  Pilih ');textcolor(12);write('[2]');textcolor(7);
         writeln(' untuk documentation');
         write('                |  Pilih ');textcolor(12);write('[3]');textcolor(7);
         writeln(' untuk about');
         writeln;
        delay(1000);
        textcolor(15);
         writeln('                => Input        ');
        textcolor(7);
         writeln('                |  Masukkan tinggi dalam format meter ');
         write('                |  Example : ');textcolor(12);write(' 1.60 ');
         writeln(' = 160 cm');
        textcolor(7);
         writeln('                |  Masukkan berat dalam format kilogram ');
         write('                |  Example : ');textcolor(12);
         writeln(' 60 ');
         writeln;
        textcolor(15);
         {* warning option *}
         writeln('                           * kembali ke menu ?');
         write('                       | [ iya ] = Y | [ exit ] = T : ');readln(opt);

         if ( opt = 'y') or ( opt = 'Y') then
          begin
         clrscr;
           goto menu;
          end
         else
          begin
          exit;
          end;
         {* end warning option *}
         readln;

   end;
   {* EXIT *}
   '0' : begin

         halt;
   end;
   {* END EXIT *}

  end;

 {* end navigasi *}

end.












