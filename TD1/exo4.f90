PROGRAM test
  IMPLICIT NONE

  INTEGER :: n

  PRINT *, "Harmonique:"
  PRINT *, "Donnez n:"
  READ *, n

  PRINT *, "Harmonique(n)=", harmonic_serie(n)
CONTAINS
  REAL FUNCTION harmonic_serie (n)
    IMPLICIT NONE
    INTEGER :: n
    REAL :: i = 1
    harmonic_serie = 0
    DO WHILE (i<=n)
       harmonic_serie = harmonic_serie + 1/i
       i = i +1
    END DO
  END FUNCTION harmonic_serie


END PROGRAM test
