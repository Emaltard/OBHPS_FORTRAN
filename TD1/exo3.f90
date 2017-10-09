PROGRAM test
  IMPLICIT NONE

  INTEGER :: n

  PRINT *, "Fibonacci:"
  PRINT *, "Donnez n:"
  READ *, n

  PRINT *, "F(n)=", fibonacci(n)
CONTAINS
  INTEGER FUNCTION fibonacci (n)
    IMPLICIT NONE
    INTEGER :: n, u_n, u_n_moins_un, u_n_plus_un, i

    i = 2;
    u_n_moins_un = 1
    u_n = 1

    IF(n<=1) THEN
       fibonacci = 1
    ELSE
       DO WHILE(i<n)
          u_n_plus_un = u_n + u_n_moins_un
          u_n_moins_un = u_n
          u_n = u_n_plus_un
          i = i+1
       END DO

       fibonacci = u_n
    END IF

  END FUNCTION fibonacci


END PROGRAM test
