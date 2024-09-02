program dkr3;
function f(x: real): real;
begin
  result := 1 * Power(x, 3) + (-2) * Power(x, 2) + 4 * x + 18;
end;
function f1(x: real): real;
begin
  result :=( 1 * Power(x, 4)/4) + (-2) * (Power(x, 3)/3) + 4 * (Power(x, 2)/2) + 18*x;
end;
function left(a, b:real):real;
var
  h, x, sum:real;
begin
  left:=f1(a)-f1(b);
end;
procedure casemenu (a, b: real; var area, error: real);
var
  n, i: integer;
  x, h: real;
sum1, sum2, sum: real;
begin
  n := 100; 
  h := (b - a) / n; 

  sum1 := 0;
  sum2 := 0;

  for i := 1 to n div 2 do
  begin
    x := a + (2 * i - 2) * h; 
    sum1 := sum1 + f(x); 
    x := a + (2 * i - 1) * h; 
    sum2 := sum2 + f(x); 
  end;

  sum := h / 3 * (f(a) + 4 * sum1 + 2 * sum2 + f(b)); 

  area := sum; 
  error := abs(sum) - ABS(left(a, b)); 
end;

var
  a, b, area, error: Real;
  choice: Integer;
begin
  repeat
    Writeln('1. Вычислить площадь фигуры');
    Writeln('2. Выход');
    Write('Выберите пункт меню: ');
    Readln(choice);

    case choice of
      1:
      begin
        Write('Введите нижнюю границу интегрирования: ');
        Readln(a);
        Write('Введите верхнюю границу интегрирования: ');
        Readln(b);

        casemenu(a, b, area, error);

        Writeln('Площадь фигуры: ', area:0:2);
        Writeln('Оценка погрешности: ', error:0:2);
      end;
      2:
      begin
        Writeln('Программа завершена.');
      end;
      else
      begin
        Writeln('Неверный выбор. Попробуйте снова.');
      end;
    end;

    Writeln;
  until choice = 2;
end.