program zad2;

var
  x, y, a: real;

begin
  x := -10;
  while x <= 2 do
  begin
    if x < -8 then
      y := 56 + Exp((0.1 * x) * ln(x))
    else if (x >= -8) and (x < 0) then
      y := sqr(x) + (-x)
    else
      y := 38 / Exp(3 * ln(x)) + tan(x);
    if y = y then a := 1
    else a := 0; 
    if a = 1 then 
      writeln('x = ', x:0:1, ' y = ', y:0:2) 
    else writeln('x = ', x:0:1, ' Нет решений');
    x := x + 0.2;
  end;
end.