



with  ADA.TEXT_IO;
use   ADA.TEXT_IO;






procedure matrix  is

  -- one demensional vector
  type  VECTOR is array ( POSITIVE range <> ) of INTEGER;


  -- procedure to print vector
  procedure print_vec ( vec : VECTOR ) is   -- default is 'in'
  begin
    put_line(""); put(" [");
    for i in vec'range loop
      put( INTEGER'image(vec(i)) );
    end loop;
    put(" ]"); put_line("");
  end print_vec;


  -- set to a specific value
  procedure set_vec_to ( vec : in out VECTOR; val : INTEGER ) is
  begin
    for i in vec'range loop
      vec(i) := val;
    end loop;
  end set_vec_to;


  procedure set_vec_serial ( vec : in out VECTOR; str : INTEGER ) is
      x : INTEGER;
  begin
      x := str;
      for i in vec'range loop
        vec(i) := x;
        x := x+1; 
      end loop;
  end set_vec_serial;
    
        
    v1  : VECTOR(1..10);
begin

  set_vec_to( v1, 3 );
  print_vec( v1 );
  set_vec_serial( v1, 4 );
  print_vec( v1 );

end matrix;
