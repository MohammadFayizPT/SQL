set serveroutput on;

declare 
 
 
begin
 
 
 for i in 0..10 loop
   if mod(i,2)=0 then
     insert into oddeven values(i,'EVEN');
   else
     insert into oddeven values(i,'ODD');
   end if;
 end loop;

for row in (select * from oddeven) loop
  dbms_output.put_line(row.num || ' -- '|| row.format); 
end loop;
end;
/