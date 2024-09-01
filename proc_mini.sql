create or replace procedure mini (a in int,b in int,c in int) is

 minv number; 

begin
  if(a<b) then
    if(a<c) then
      minv:=a;
    else
      minv:=c;
    end if;
  elsif (b<c) then
     minv:=b;
  else
    minv:=c;
  end if;
  dbms_output.put_line('the minimum is '|| minv);
 end;
/
      
      