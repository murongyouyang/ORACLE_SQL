CREATE PROCEDURE HIRE_EMPLOYEES
(
    P_LAST_NAME         VARCHAR2,
    P_JOB_ID            VARCHAR2,
    P_MANAGER_ID        NUMBER,
    P_HIRE_DATE         DATE,
    P_SALARY            NUMBER,
    P_COMMISSION_PCT    NUMBER,
    P_DEPARTMENT_ID     NUMBER
)
IS
BEGIN
    INSERT INTO HIRE_EMPLOYEES
                        (
                            EMPLOYEE_ID,
                            LAST_NAME,
                            JOB_ID,
                            MANAGER_ID,
                            HIRE_DATE,
                            SALARY,
                            COMMISSION_PCT,
                            DEPARTMENT_ID
                        )
                        VALUES
                        (
                            EMP_SEQUENCE.NEXTVAL,
                            P_LAST_NAME,
                            P_JOB_ID,
                            P_MANAGER_ID,
                            P_HIRE_DATE,
                            P_SALARY,
                            P_COMMISSION_PCT,
                            P_DEPARTMENT_ID
                        );
END;
