CLASS zcl_trd_crs_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_trd_crs_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_course TYPE TABLE OF ztrd_course_tbl.
    lt_course = VALUE #( ( courseid = 'SAPFC1'
                           trainingid = 'TRN1'
                           title = 'SAP Training Course 1'
                           startdate = '20250101'
                           enddate = '20250331'
                           capacity = 30
                           iscomplete = abap_false
                         )
                         ( courseid = 'SAPFC1'
                           trainingid = 'TRN2'
                           title = 'SAP Training Course 2'
                           startdate = '20250201'
                           enddate = '20250331'
                           capacity = 10
                           iscomplete = abap_false
                         )
                         ( courseid = 'SAPABAP1'
                           trainingid = 'TRN3'
                           title = 'SAP Training Course ABAP 1'
                           startdate = '20250201'
                           enddate = '20250531'
                           capacity = 12
                           iscomplete = abap_false
                         )
                         ( courseid = 'SAPABAP2'
                           trainingid = 'TRN4'
                           title = 'SAP Training Course ABAP 2'
                           startdate = '20250301'
                           enddate = '20250831'
                           capacity = 15
                           iscomplete = abap_false
                         )
                      ).
    MODIFY ztrd_course_tbl FROM TABLE @lt_course.

    out->write( |Data for ztrd_course_tbl table has been initialized.| ).

  ENDMETHOD.

ENDCLASS.
