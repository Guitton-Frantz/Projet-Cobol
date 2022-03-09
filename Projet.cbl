      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           select fventes assign to "ventes.dat"
           organization indexed
           access mode is dynamic
           record key is fvent_refVente
           alternate record key is fvent_refVet WITH DUPLICATES
           alternate record key is fvent_idVendeur WITH DUPLICATES
           alternate record key is fvent_dateV WITH DUPLICATES
           file status is cr_fvent.
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD fventes.
       01 tamp_fventes.
               02 fvent_refVente PIC A(10).
               02 fvent_prix PIC 9(3,2).
               02 fvent_refVet PIC 9(6).
               02 fvent_idVendeur PIC A(4).
               02 fvent_dateV PIC X(10).
       WORKING-STORAGE SECTION.
      *-----------------------
       77 cr_fvent PIC 9(2).
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY "Hello world"
            STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.
