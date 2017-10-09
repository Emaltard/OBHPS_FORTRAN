PROGRAM test
  IMPLICIT NONE
  INTEGER :: i = 1
  REAL :: note
  REAL :: moyenne = 0
  DO
     PRINT *, "Note ", i, " :"
     READ *, note
     IF(note==-1) EXIT
     i = i+1
     moyenne = moyenne +note
  END DO
  moyenne = moyenne / i
  PRINT *, "La moyenne de ces ", i-1, " notes est de ", moyenne
END PROGRAM test
