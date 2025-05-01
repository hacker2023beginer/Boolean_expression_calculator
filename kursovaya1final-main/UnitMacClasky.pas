unit UnitMacClasky;

interface

uses
  UnitTruthTable;

type
  TComparisonResult = Record
    Correct: Boolean;
    newEl: String;
  End;

procedure CvMacClasky(TruthTable: TTruth);
function ComapisonMinterms(FirstMinterm, SecondMinterm: String; var CounterCovering: Integer): TComparisonResult;
implementation

function ComapisonMinterms(FirstMinterm, SecondMinterm: String; var CounterCovering: Integer): TComparisonResult;
var
  CounterDiffEl: Integer;
begin
  CounterDiffEl := 0;
  for var i := 1 to length(FirstMinterm) do
  begin
    if FirstMinterm[i] = SecondMinterm[i] then
    begin
      Inc(CounterDiffEl);
      FirstMinterm[i] := '-';
      SecondMinterm[i] := '-';
    end;
  end;
  if CounterDiffEl = 1 then
  begin
    Inc(CounterCovering);
    Result.Correct := true;
    Result.newEl := FirstMinterm;
  end
  else
    Result.Correct := false;
    Result.newEl := '';
end;

procedure CvMacClasky(TruthTable: TTruth);
type
  TBinaryTable = array of String;
  TMinterms = array of array of String;
var
  BinaryTruthTable: TBinaryTable;
  Minterms: TMinterms;
  PrimeMinterms: TBinaryTable;
  BinaryCombination: String;
  CompareMinterm: String;
  TempCompareResult: TComparisonResult;
  CounterCovering: Integer;
  CounterSpecialEl: Integer;
begin
  SetLength(BinaryTruthTable, Length(TruthTable));
  SetLength(Minterms, Length(TruthTable[0]) + 1);
  for var i := 0 to Length(TruthTable) - 1 do
  begin
    if TruthTable[i][Length(TruthTable[0]) - 1] then
    begin
      BinaryCombination := '';
      CounterSpecialEl := 0;
      for var j := 0 to Length(TruthTable[0]) - 2 do //последний это результат выражения
      begin
        if TruthTable[i][j] then
        begin
          BinaryCombination := BinaryCombination + '1';
          Inc(CounterSpecialEl);
        end
        else
          BinaryCombination := BinaryCombination + '0';
      end;
      SetLength(Minterms[CounterSpecialEl], Length(Minterms[CounterSpecialEl]) + 1);
      Minterms[CounterSpecialEl][High(Minterms[CounterSpecialEl])] := BinaryCombination;
    end;
  end;

  for var i := 0 to length(Minterms) - 2 do
  begin
    for var j := 0 to length(Minterms[i]) - 1 do
    begin
      CompareMinterm := Minterms[i][j];
      CounterCovering := 1;
      for var k := 0 to length(Minterms[i + 1]) - 1 do
      begin
        TempCompareResult := ComapisonMinterms(CompareMinterm, Minterms[i + 1][k], CounterCovering);
        if TempCompareResult.Correct then

      end;
    end;
  end;
end;

end.
