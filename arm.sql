declare 
  status number;
  len number;
function armstrong(n in number,len in number) return number is
  
  rem number;
  sums number:=0;
  initial number:=n;
  x number:=n;
 begin
  while x > 0 loop
   rem:=mod(x,10);
   x:=trunc(x/10);
   sums:=sums + power(rem,len);
  end loop;
  
if sums=initial then
  dbms_output.put_line('Armstrong');
else
  dbms_output.put_line('Not Armstrong');
end if;
return 0;

end;

begin
 status:=&n;
 len:=&length;
 status:=armstrong(status,len);
end;  
/
  