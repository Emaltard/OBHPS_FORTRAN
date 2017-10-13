PROGRAM test
  IMPLICIT NONE

  CHARACTER (len=50) :: s1,s2

  PRINT *, "Concatenation:"
  PRINT *, "Donnez s1:"
  READ *, s1
  PRINT *, "Donnez s2:"
  READ *, s2
  CALL concatenation(s1,s2)
  PRINT *, occ_c(s1, 'c')
CONTAINS
  SUBROUTINE concatenation (s1,s2)
    CHARACTER (len=*) :: s1,s2
    PRINT *, TRIM(ADJUSTL(s1))//TRIM(s2)
  END SUBROUTINE concatenation

  INTEGER FUNCTION occ_c (s1,c)
    CHARACTER (len=*) :: s1
    CHARACTER, INTENT(in) :: c
    INTEGER :: i
    occ_c = 0

    DO i = 1, LEN(s1), 1
       IF(s1(i:i)==c) occ_c = occ_c +1
    END DO

  END FUNCTION occ_c


END PROGRAM test
