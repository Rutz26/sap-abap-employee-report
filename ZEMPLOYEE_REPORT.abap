REPORT ZEMPLOYEE_REPORT.

TABLES: ZEMPR.

DATA: IT_EMPR TYPE STANDARD TABLE OF ZEMPR,
      WA_EMPR TYPE ZEMPR.

START-OF-SELECTION.

  SELECT * FROM ZEMPR INTO TABLE IT_EMPR.

  IF SY-SUBRC = 0.

WRITE: / 'EMPLOYEE REPORT'.
    ULINE.
    WRITE: / 'EmpID', 10 'Name', 40 'Dept', 60 'Desig', 80 'Salary', 100 'DOJ'.
    ULINE.

    LOOP AT IT_EMPR INTO WA_EMPR.
      WRITE: / WA_EMPR-EMP_ID,
               10 WA_EMPR-EMP_NAME,
               40 WA_EMPR-DEPT,
               60 WA_EMPR-DESIGNATION,
               80 WA_EMPR-SALARY,
               100 WA_EMPR-DOJ.
    ENDLOOP.

  ELSE.
    WRITE: / 'No employee data found.'.
  ENDIF.