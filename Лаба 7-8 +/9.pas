program zad14;
var a,b,c: string;
k, i: integer;
begin
  c:='letter';
  b:='word';
  writeln('Введите набор символов');
  readln(a);
while pos(c,a)<>0 do
  begin
    i:=pos(c,a);
    if i>0 then Delete(a,i,6);
     if i>0 then insert(b,a,i);
      end;
      write(a);
    end.