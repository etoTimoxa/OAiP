program zad10;
var a: array [1..20] of integer;
b: array [1..20] of integer;
 i, j:integer;
 begin
  Writeln('Исходный массив: ');
  for i:=1 to 20 do
   begin 
a[i]:= -10 + random(21);
   write(a[i]:4);
   end;
  Writeln;
  Writeln('Массив без отрицательных элементов: ');
  j:=1;
  for i:=1 to 20 do begin
   b[j]:=a[i];
   if b[j]>=0 then
   write(b[j]:4);
   j:=j+1;
end;
 end.