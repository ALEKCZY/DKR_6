uses Crt;
const
MAX = 100;
type
tInf = Integer;
tStack = array [1..MAX] of tInf;

var
top: Integer;
Stack: tStack;

procedure Push(var Stack : tStack; data : tInf);
begin
if top = MAX then
Writeln('Ошибка')
else begin
inc(top);
Stack[top] := data;
end;
end;

function Pop(var Stack : tStack) : tInf;
var
Res: tInf;
begin
if top = 0 then
Writeln('Ошибка')
else begin
Res := Stack[top];
dec(top);
Clrscr;
end;
Pop := Res;
Writeln('Элемент: ', Res);
end;

procedure Print(Stack : tStack);
var
i: Integer;
begin
if top = 0 then
WriteLn('Стек пуст.')
else begin
for i := 1 to top do
Write(Stack[i], ' ');
WriteLn;
end;
WriteLn;
end;

procedure addToStack(var Stack : tStack);
var
data : tInf;
begin
Clrscr;
textcolor(LightGreen);
Write('Введите значение добавляемого элемента: '); ReadLn(data);
Push(Stack, data);
WriteLn;
end;

procedure clearStack(var Stack : tStack);
begin
top := 0;
Clrscr;
textcolor(LightMagenta);
WriteLn('Стек очищен');
end;

var
ch : char;

begin
top := 0;
repeat
textcolor(green);
Writeln('Программа для работы со стеком ');
Writeln('Выберите желаемое действие:');
textcolor(red);
Writeln('1) Добавить элемент.');
textcolor(yellow);
Writeln('2) Вывод стека.');
textcolor(blue);
Writeln('3) Проверка стека на пустоту');
textcolor(brown);
Writeln('4) Очистить стек');
textcolor(cyan);
Writeln('5) Взять элемент из Стека.');
textcolor(red);
Writeln('6) Выход.');
writeln;
readln(ch);
case ch of 
  '1' : addToStack(Stack);
  '2' : begin
          Clrscr;
          textcolor(LightRed);
          Write('Cодержимое стека = ');
          Print(Stack);
        end; 
  '3' : begin
          Clrscr;
          textcolor(White);
          WriteLn('Стек пуст = ', top = 0);
        end;
  '4' : clearStack(Stack);
  '5' : Pop(Stack);
end;
until ch='6';

clearStack(Stack);
end.