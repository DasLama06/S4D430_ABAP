CLASS zcl_10_structure DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .


**********************************************************************
    TYPES:
      BEGIN OF st_address,
        street      TYPE /dmo/street,
        postal_code TYPE /dmo/postal_code,
        city        TYPE /dmo/city,
        country     TYPE land1,
      END OF st_address.


**********************************************************************
    TYPES:
      BEGIN OF st_name,
        first_name TYPE /dmo/first_name,
        last_name  TYPE /dmo/last_name,
      END OF st_name.

    TYPES: BEGIN OF st_person,
             name    TYPE st_name,
             address TYPE z00_address,
           END OF st_person.



*********************************************************************
    TYPES BEGIN OF st_person_inc.
    INCLUDE TYPE z00_name    AS name.
    INCLUDE TYPE z00_address AS address.
    TYPES END OF st_person_inc.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_structure IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.



  ENDMETHOD.
ENDCLASS.
