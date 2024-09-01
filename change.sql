declare 
 n number;
 square number;
 prevsquare number;

begin
 n:='&change';

 select square into prevsquare from sqcube where num=n;
  

 
 
 if sql%found then
   update sqcube set square =0 where num=n;
   dbms_output.put_line('square of ' || n || ' changed');
    dbms_output.put_line('previous value of square is '|| prevsquare);
 end if;  
for row in (select * from sqcube where num=n) loop
   dbms_output.put_line(row.num||'----'||row.square);
end loop;

 exception 
  when no_data_found then
   dbms_output.put_line('No such number present');

end;
/
