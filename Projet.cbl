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
           select fvet assign to "vetements.dat"
           organization indexed
           access mode is dynamic
           record key is fvet_nom
           alternate record key is fvet_type WITH DUPLICATES
           alternate record key is fvet_categ WITH DUPLICATES
           alternate record key is fvet_taille WITH DUPLICATES
           alternate record key is fvet_saison WITH DUPLICATES
           file status is cr_fvet.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD fvet.
           01 tamp_fvet.
               02 fvet_nom PIC A(50).
               02 fvet_type PIC A(20).
               02 fvet_categ PIC A(1).
               02 fvet_taille PIC A(4).
               02 fvet_saison PIC A(10).
               02 fvet_prix PIC 9(3,2).
               02 fvet_quantite PIC 9(3).
      *-----------------------
       WORKING-STORAGE SECTION.
           77 cr_fvet PIC A(2).
           
           
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
           OPEN I-O fvet
               IF cr_fvet = 35 THEN
                   OPEN OUTPUT fvet
               END-IF
           CLOSE fvet
           
           DISPLAY "Hello world"
           STOP RUN.
      ** add other procedures here
       END PROGRAM YOUR-PROGRAM-NAME.

