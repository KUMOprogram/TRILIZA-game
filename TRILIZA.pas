program triliza;
uses wincrt;
var a:array[1..3,1..3] of char;
    b:array[1..3,1..3] of char;
    z,t,i,j,r:integer;
    sec,start:char;

{a: pinakas me X kai O kai sun8ikh nikhs
b: eikonikos pinakas me pables p antika8istountai apo ton a
z: 9 koutia exei h triliza
t: metriths pou ballame gia na doume ama 8a dwsei NIKH alliws xrhsh gia ISOPALIA
start: paixths p paizei 1os dialegmenos apo thn RANDOM
sec: paixths pou paizei 2os dialegmenos apo thn RANDOM
r: random 0-1 gia na doume poios 8a pai3ei 1os. Einai RANDOM(2) gt pianei ta 0 kai 1 mono
i,j metrites grammwn,stylwn pinakwn a kai b}


BEGIN
randomize;
 for i:=1 to 3 do
 begin
  for j:=1 to 3 do
  begin
   b[i,j]:='-';
  end;
 end;

 for i:=1 to 3 do
    begin
     for j:=1 to 3 do
     begin
      if j=1 then
      begin
       write('                           ');
      end;
      write(' ',b[i,j]);
     end;
    writeln;
    end;

 writeln('         TO PROGRAMMA UPO8ETEI OTI TA ATOMA POU PAIZOUN');
 writeln('EXOUN NOHMOSUNH NA KRATH8OUN STO PAIXNIDI GIA 6 TOULAXISTON KINHSEIS');
 writeln('          AMA DEN THN EXOUN NA PANE NA AKOUSOUN BIBER._');

 r:=random(2);
 if r=0 then
  begin
  start:='X';
  sec:='O';
  end
 else
  begin
  start:='O';
  sec:='X';
  end;

 writeln('                  Prwtos paizei tuxaia o ',start);

 t:=0;
 for z:=1 to 9 do
 begin
  writeln;
  write('                          seira: ');
  read(i);
  write('                          stylh: ');
  read(j);  
      if z=1 then
      begin
       a[i,j]:=start;
       b[i,j]:=a[i,j];
      end
      else if z=2 then
      begin
       a[i,j]:=sec;
       b[i,j]:=a[i,j];
      end
      else if z=3 then
      begin
       a[i,j]:=start;
       b[i,j]:=a[i,j];
      end
      else if z=4 then
      begin
       a[i,j]:=sec;
       b[i,j]:=a[i,j];
      end
      else if z=5 then
      begin
       a[i,j]:=start;
       b[i,j]:=a[i,j];
      end
      else if z=6 then
      begin
       a[i,j]:=sec;
       b[i,j]:=a[i,j];
      end
      else if z=7 then
      begin
       a[i,j]:=start;
       b[i,j]:=a[i,j];
      end
      else if z=8 then
      begin
       a[i,j]:=sec;
       b[i,j]:=a[i,j];
      end
      else if z=9 then
      begin
       a[i,j]:=start;
       b[i,j]:=a[i,j];
      end;
    for i:=1 to 3 do
    begin
     for j:=1 to 3 do
     begin
      if j=1 then
      begin
       write('                           ');
      end;
      write(' ',b[i,j]);
     end;
    writeln;
    end;

  if z>6 then
  BEGIN
    if a[1,1]=a[1,2] then
    begin
     if a[1,2]=a[1,3] then
     begin
      writeln('                    NIKAEI O ',a[1,1]);
      z:=9;
      t:=1;
     end;
    end;
    if a[2,1]=a[2,2] then
    begin
     if a[2,2]=a[2,3] then
     begin
      writeln('                    NIKAEI O ',a[2,1]);
      z:=9;
      t:=1;
     end;
    end;
    if a[3,1]=a[3,2] then
    begin
     if a[3,2]=a[3,3] then
     begin
      writeln('                    NIKAEI O ',a[3,1]);
      z:=9;
      t:=1;
     end;
    end;
    if a[1,1]=a[2,1] then
    begin
     if a[2,1]=a[3,1] then
     begin
      writeln('                    NIKAEI O ',a[1,1]);
      z:=9;
      t:=1;
     end;
    end;
    if a[1,2]=a[2,2] then
    begin
     if a[2,2]=a[3,2] then
     begin
      writeln('                    NIKAEI O ',a[2,2]);
      z:=9;
      t:=1;
     end;
    end;
    if a[1,3]=a[2,3] then
    begin
     if a[2,3]=a[3,3] then
     begin
      writeln('                    NIKAEI O ',a[3,3]);
      z:=9;
      t:=1;
     end;
    end;
    if a[1,1]=a[2,2] then
    begin
     if a[2,2]=a[3,3] then
     begin
      writeln('                    NIKAEI O ',a[1,1]);
      z:=9;
      t:=1;
     end;
    end;
    if a[3,1]=a[2,2] then
    begin
     if a[2,2]=a[1,3] then
     begin
      writeln('                    NIKAEI O ',a[2,2]);
      z:=9;
      t:=1;
     end;
  END;
 end;
   
    end;
    if t=0 then
    begin
     writeln('                     ISOPALIA');
    end;

END.
