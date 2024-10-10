CLASS zcl_10_table_type DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

* Task 1: Simple Table Type
**********************************************************************
    TYPES tt_addresses TYPE SORTED TABLE OF /lrn/s_address
                       WITH NON-UNIQUE KEY country city.

* Task 2: Deep Structure
**********************************************************************
    TYPES:
      BEGIN OF st_person_deep,
        first_name TYPE /dmo/first_name,
        last_name  TYPE /dmo/last_name,
        addresses  TYPE z00_addresses,
      END OF st_person_deep.

*Task 3: Nested Table Type
**********************************************************************
    TYPES tt_persons TYPE HASHED TABLE OF z00_person_deep
                     WITH UNIQUE KEY last_name first_name.
ENDCLASS.


CLASS zcl_10_table_type IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  ENDMETHOD.

ENDCLASS.
