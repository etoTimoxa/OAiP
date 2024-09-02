program zad_8;
var
  i,g,j:integer;
  a:array[1..8,1..9] of integer;
  b:array[1..8] of integer;
  begin
    for i:=1 to 8 do
      for j:=1 to 8 do
        a[i,j]:=1+random(8);
 for i:=1 to 8 do
      for j:=1 to 8 do
      begin
        if a[i,j]+a[i,j+1]=7 then write(1);
        if a[i,j]+a[i,j+1]=7 then break;
        if j=8 then write(-1);
      end;
      writeln();
      write(a);
  end.