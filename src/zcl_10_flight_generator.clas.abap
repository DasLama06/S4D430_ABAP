CLASS zcl_10_flight_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_flight_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM z10_flight.
    out->write( |Deleted: { sy-dbcnt }|  ).


    DATA flight TYPE z10_flight.
    DATA flights TYPE TABLE OF z10_flight.

    flight-client = sy-mandt.
    flight-airline_id = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date = '20241117'.
    flight-flight_price = `325.88`.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    APPEND flight TO flights.


    flight-client = sy-mandt.
    flight-airline_id = 'TA'.
    flight-connection_id = '0401'.
    flight-flight_date = '20241120'.
    flight-flight_price = `335.10`.
    flight-currency_code = 'EUR'.
    flight-created_by = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    APPEND flight TO flights.


    INSERT z10_flight FROM TABLE @flights.
    out->write( |Inserted: { sy-dbcnt }| ).

  ENDMETHOD.
ENDCLASS.
