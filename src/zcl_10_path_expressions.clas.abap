CLASS zcl_10_path_expressions DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_10_path_expressions IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT FROM Z10_C_EmployeeQuery
      FIELDS employeeid,
             firstname,
             lastname,
             departmentid,
             DepartmentDescription,
             AssistantName,
             \_Department\_Head-LastName AS HeadName
      INTO TABLE @FINAL(result).

    out->write( result ).
  ENDMETHOD.
ENDCLASS.
