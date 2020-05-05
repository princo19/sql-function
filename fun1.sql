create or replace function rev(eno number)
return number
is
s emp.sal%type;
nsal emp.sal%type;
begin
select sal into s from emp where empno=eno;
if s<1000 then
	nsal:=s+.2*s;
elsif s>=100 and s<2000 then
	nsal:=s+.3*s;
else
	nsal:=s+.15*s;
end if;
return(nsal);
end;