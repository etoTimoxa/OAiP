﻿program zad16;
var n, i: integer;
begin
repeat
writeln('Введите натуральное число (n>0)');
read(n);
until n>0;
if n=1 then 
  write('Простых множителей нет')
else
 begin
  write(n,'=');
  i:=2;
  while i<=n do
   begin
    while n mod i=0 do
     begin
      if i<n then write(i,'*')
      else write(i);
      n:=n div i;
     end;
    i:=i+1;
   end;
  end;
end.