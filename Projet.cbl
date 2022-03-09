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

            select fvet assign to "vetements.dat"
            organization indexed
            access mode is dynamic
            record key is fvet_nom
            alternate record key is fvet_type WITH DUPLICATES
            alternate record key is fvet_categ WITH DUPLICATES
            alternate record key is fvet_taille WITH DUPLICATES
            alternate record key is fvet_saison WITH DUPLICATES
            file status is cr_fvet.

            select fventes assign to "ventes.dat"
            organization indexed
            access mode is dynamic
            record key is fvent_refVente
            alternate record key is fvent_refVet WITH DUPLICATES
            alternate record key is fvent_idVendeur WITH DUPLICATES
            alternate record key is fvent_dateV WITH DUPLICATES
            file status is cr_fvent.
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

        FD fvet.
            01 tamp_fvet.
                02 fvet_nom PIC A(50).
                02 fvet_type PIC A(20).
                02 fvet_categ PIC A(1).
                02 fvet_taille PIC A(4).
                02 fvet_saison PIC A(10).
                02 fvet_prix PIC 9(3,2).
                02 fvet_quantite PIC 9(3).
        
        FD fventes.
            01 tamp_fventes.
                02 fvent_refVente PIC A(10).
                02 fvent_prix PIC 9(3,2).
                02 fvent_refVet PIC 9(6).
                02 fvent_idVendeur PIC A(4).
                02 fvent_dateV PIC X(10).

        *-----------------------
        WORKING-STORAGE SECTION.
            77 cr_fca PIC 9(2).
            77 cr_fvet PIC A(2).
            77 cr_fvent PIC 9(2).

        *-----------------------
        PROCEDURE DIVISION.
        *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
        MAIN-PROCEDURE.
        **
        * The main procedure of the program
        **
            OPEN I-O fca
                IF cr_fca=35 THEN
                OPEN OUTPUT fca
                END-IF
            CLOSE fca

            OPEN I-O fvet
                IF cr_fvet = 35 THEN
                    OPEN OUTPUT fvet
                END-IF
            CLOSE fvet

            OPEN I-O fventes
                IF cr_fventes = 35 THEN
                    OPEN OUTPUT fventes
                END-IF
            CLOSE fventes
     
            STOP RUN.

        END PROGRAM projet.
