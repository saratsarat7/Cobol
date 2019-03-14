      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. test1.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT HELLO-FILE             ASSIGN TO "hello.txt"
                                         STATUS FILE-STATUS
                                         LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD  HELLO-FILE.
            01  FILE-REC                     PIC X(26).
       WORKING-STORAGE SECTION.
            01 n   PIC 9(1).
            01 i   PIC 9(2).
            01 isum PIC 9(5) VALUE 0.
            01 FILE-STATUS PIC 9(1).
            01 FILE-END PIC X(1) VALUE "N".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            OPEN INPUT HELLO-FILE
            PERFORM UNTIL FILE-END = "Y"
                READ HELLO-FILE
                AT END
                   MOVE "Y" TO FILE-END
                END-READ
                DISPLAY "YOUR NAME IS : " FILE-REC
                DISPLAY "STATUS :" FILE-STATUS
            END-PERFORM
            CLOSE HELLO-FILE
            STOP RUN.
       END PROGRAM test1.
