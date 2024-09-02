program zad15;
var
a,c,r,t,e,r1:string;
b,i,g,w:integer;
begin
  writeln('Введите набор символов');
  read(a);
  r:='xabc';
  r1:='Xabc';
  while pos(r,a)<>0 do
  begin
    i:=pos(r,a);
    if i>0 then Delete(a,i,1);
    i:=pos(r1,a);
    if i>0 then Delete(a,i,1);
      end;
  writeln(a);
  
end.