PROGRAM test
  IMPLICIT NONE

  CHARACTER (len=50) :: s1,s2

  PRINT *, "Concatenation:"
  PRINT *, "Donnez s1:"
  READ *, s1
  PRINT *, "Donnez s2:"
  READ *, s2
  PRINT *, occ_c(s1,'a')
CONTAINS
  SUBROUTINE concatenation (s1,s2)
    CHARACTER (len=100) :: s1,s2
    PRINT *, TRIM(s1)//TRIM(s2)
  END SUBROUTINE concatenation

  INTEGER FUNCTION occ_c (s1,c)
    CHARACTER (len=50) :: s1
    CHARACTER :: c
    INTEGER :: i, compteur = 0

    DO i = 1, 50, 1
       IF(s1(i)==c) compteur = compteur +1
    END DO

  END FUNCTION occ_c


END PROGRAM test
