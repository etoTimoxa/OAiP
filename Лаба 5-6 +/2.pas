program zad2;

var
  
  n: array [1..20] of integer;
  i, g, f, r, t, sum: integer;

begin
  f := 1; 
  for i := 1 to 20 do
  begin
    n[i] := -22 + random(116);
    if (n[i] mod 2 = 0) and (i mod 2 <> 0) then g := g + 1;
    if n[i] mod 2 = 1 then  f := f * n[i];
 end;
write('Введите диапозон ');
 read(r,t);
 sum:=0;
for i := 1 to 20 do begin
  if (i >=r) and (i <=t) then
    sum:= sum + n[i];
  end;
  writeln('Исходрный массив: ',n);
  writeln('Количество четных элементов на не четных местах: ',g);
  writeln('Произведение не четных элементов: ',f);
  writeln('Сумма элементов в диапозоне введенном пользователем ',sum);
end.
