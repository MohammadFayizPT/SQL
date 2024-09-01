declare

begin
 for i in 0..10 loop
   insert into sqcube values(i,i*i,i*i*i);
 end loop;

end;
/