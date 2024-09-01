declare 
 a number:=0;
 b number:=1;
 c number;
 i number:=0;
 n number;
 function fibo (n in number) return number is
   begin
     dbms_output.put_line(a);
     dbms_output.put_line(b);
     while i<n loop
       
       c:=a+b;
       a:=b;
       b:=c;
       
       dbms_output.put_line(c);
      i:=i+1;
    end loop;
  return i;
  end;

begin
  n:=&limit;
  i:=fibo(n);
 end;
/ 
     