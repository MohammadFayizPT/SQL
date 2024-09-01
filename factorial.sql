set serveroutput on;

declare
 n number;
 fact number:=1;
 store number;
begin
 n:=&number;
 store:=n;
 while n>0 loop
  fact:= fact*n;
  n:= n-1;
 end loop;

dbms_output.put_line('Factorial of '||store || ' is '|| fact);

end;
/