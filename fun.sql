create or replace function area(l number, b  number) return number is
ar number;
begin
ar:=l*b;
return(ar);
end;

