﻿program zad11;
var a,c,b: string;
k, i: integer;
begin
  writeln('Введите набор символов');
  readln(a);
  b:=a;
  c:='o';
  if length(a)>10 then
    for i:=1 to length(a) do 
      delete(a, 1, length(a)-6);
    write(a:2);
    if length(b)<=10 then
      for i:= length(b) to 11 do 
    b:=b+c;
    if length(b)=12 then
    write(b:2);
    end.