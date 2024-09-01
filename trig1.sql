create or replace trigger cubeup
 before insert or update of square on sqcube 
for each row
  begin
  dbms_output.put_line('Old value '|| :old.square);
   dbms_output.put_line('New value '|| :new.square);
 end;
/