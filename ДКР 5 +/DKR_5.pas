uses
  ABCObjects;

const
  MaxArraySize = 10000;

type
  TArray = array of Integer;

type
  TComparatorFunc = function(A, B: Integer): Boolean;

function GetMaxValue(const A: TArray): Integer;
var
  i, MaxValue: Integer;
begin
  if Length(A) = 0 then
    Result := 0
  else
  begin
    MaxValue := A[0];
    for i := 1 to High(A) do
      if A[i] >= MaxValue then
        MaxValue := A[i];
    Result := MaxValue;
  end;
end;

function MyCompareFunc(A, B: Integer): Boolean;
begin
  // Реализуйте ваше сравнение здесь
  Result := A < B;
end;

procedure CountingSort(var A: TArray; Exp: Integer; Comparator: TComparatorFunc);
var
  Count, Output: array of Integer;
  i: Integer;
begin
  SetLength(Count, 100);
  SetLength(Output, Length(A));

  for i := 0 to High(A) do
    Inc(Count[(A[i] div Exp) mod 100]);

  for i := 1 to High(Count) do
    Count[i] := Count[i] + Count[i - 1];

  for i := High(A) downto 0 do
  begin
    Output[Count[(A[i] div Exp) mod 100] - 1] := A[i];
    Dec(Count[(A[i] div Exp) mod 100]);
  end;

  A := Output;
end;

procedure RadixSort(var A: TArray; Comparator: TComparatorFunc);
var
  MaxValue, Exp: Integer;
begin
  MaxValue := GetMaxValue(A);

  for Exp := 1 to MaxValue * 100 do
    CountingSort(A, Exp, Comparator);
end;

var
  InputFileName, OutputFileName: string;

procedure ProcessData;
var
  InputFile, OutputFile: Text;
  InputData: TArray;
  InputValue: Integer;
  i, SortOption: Integer;
begin
  Assign(InputFile, InputFileName);
  Reset(InputFile);

  Assign(OutputFile, OutputFileName);
  Rewrite(OutputFile);

  SetLength(InputData, 0);
  while not Eof(InputFile) do
  begin
    ReadLn(InputFile, InputValue);
    SetLength(InputData, Length(InputData) + 1);
    InputData[High(InputData)] := InputValue;
  end;

  Close(InputFile);

  WriteLn('Входные данные:');
  for i := 0 to High(InputData) do
    WriteLn(InputData[i]);

  WriteLn('Выберите вид сортировки:');
  WriteLn('1. Сортировка подсчетом');
  WriteLn('2. Сортировка поразрядного алгоритма');
  ReadLn(SortOption);

  case SortOption of
    1:
    begin
      CountingSort(InputData, 1, MyCompareFunc);
      WriteLn('Sorted data (Counting Sort):');
    end;
    2:
    begin
      RadixSort(InputData, MyCompareFunc);
      WriteLn('Sorted data (Radix Sort):');
    end;
  else
    WriteLn('Invalid option. Sorting option not recognized.');
    Exit;
  end;

  for i := 0 to High(InputData) do
    WriteLn(OutputFile, InputData[i]);

  Close(OutputFile);

  WriteLn('Сортировка завершена и сохранена в файл ', OutputFileName);
end;


begin
  InputFileName := 'input.txt';
  OutputFileName := 'output.txt';

  ProcessData;
end.


