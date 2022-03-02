      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. projet.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
                select fca assign to "chiffreAffaire.dat"
                organization indexed
                access mode is dynamic
                record key is fca_date
                alternate record key is fca_vendeurM WITH DUPLICATES
                file status is cr_fca.

      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD fca.

                01 tamp_fca.
                        02 fca_date PIC 9(8).
                        02 fca_ca PIC 9(7).
                        02 fca_vendeurM PIC A(4).
                        02 fca_vetM PIC 9(10).

      *-----------------------
       WORKING-STORAGE SECTION.
           77 cr_fca PIC 9(2).

      *-----------------------
       PROCEDURE DIVISION.

       OPEN I-O fca
                IF cr_fca=35 THEN
                OPEN OUTPUT fca
                END-IF
       CLOSE fca.
     
            STOP RUN.
      ** add other procedures here
       END PROGRAM projet.
