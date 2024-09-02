program zad1;

var
  x, y: real;
  a: integer;

begin
  write('Введите x, x = ');
  readln(x);
  if x < -8 then
    y := 56 + power(x, 0.1 * x)
  else if (x >= -8) and (x < 0) then
    y := sqr(x) + (-x)
  else
    y := 38 / power(x, 3) + tan(x);
  if y = y then a := 1
  else a := 0; 
  if a = 1 then 
    writeln('x = ', x, ' y = ', y:0:2) 
  else writeln('x = ', x, ' Нет решений');
end.

