PROGRAM td_ackermann
  IMPLICIT NONE

  INTEGER :: n,m

  PRINT *, "Ackermann:"
  PRINT *, "Donnez m:"
  READ *, m
  PRINT *, "Donnez n:"
  READ *, n


  PRINT *, "ackermann(n)=", ackermann(m,n)
CONTAINS
  INTEGER RECURSIVE FUNCTION ackermann (m,n) RESULT (res)
    IMPLICIT NONE
    INTEGER :: m,n
    IF(n==0) THEN
       res = ackermann(m-1, 1)

    ELSE
       IF(m==0) THEN
          res = n +1
       ELSE
          res = ackermann(m-1, ackermann(m,n-1))
       END IF
    END IF

  END FUNCTION ackermann


END PROGRAM td_ackermann
