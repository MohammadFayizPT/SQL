declare 
   n number;
   prevs number;
procedure inc_num(n in number) as
 begin
  select square into prevs from sqcube where num=n;
  if sql%found then
     update sqcube set cube = 0 where num=n;
      dbms_output.put_line('updated');
  
  end if;
  exception
    when no_data_found then
        dbms_output.put_line('No data present');
end;

begin
 n:=&n;
 inc_num(n);
end;
/