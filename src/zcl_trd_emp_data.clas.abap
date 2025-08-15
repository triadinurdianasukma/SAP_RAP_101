CLASS zcl_trd_emp_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_trd_emp_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_emp TYPE TABLE OF ztrd_emp_tbl.
    lt_emp = VALUE #(
                        ( emp_id = 0001
                        first_name = 'John'
                        last_name = 'Doe'
                        email = 'johndoe@gmail.com'
                        birth_date = '19850515'
                        gender = 'M'
                        )
                        ( emp_id = 0002
                        first_name = 'Rita'
                        last_name = 'Smith'
                        email = 'rsmith@gmail.com'
                        birth_date = '19900220'
                        gender = 'F'
                        )
                        ( emp_id = 0003
                        first_name = 'Sam'
                        last_name = 'Brown'
                        email = 'smrown@gmail.com'
                        birth_date = '19951230'
                        gender = 'M'
                        )
                        ( emp_id = 0004
                        first_name = 'Lisa'
                        last_name = 'White'
                        email = 'lwhite@gmail.com'
                        birth_date = '19880305'
                        gender = 'F'
                        )
                     ).

    MODIFY ztrd_emp_tbl FROM TABLE @lt_emp.

    IF sy-subrc = 0.
      out->write( |Employee data successfully modified.| ).
    ELSE.
      out->write( |Error in modifying employee data.| ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
