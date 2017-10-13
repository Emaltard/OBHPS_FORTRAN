PROGRAM exo1
  IMPLICIT NONE

  INTEGER :: i,j
  INTEGER, DIMENSION(10)::T1
  INTEGER, DIMENSION(10)::T2
  INTEGER, DIMENSION(10,10)::T3
  T1=(/(i,i=2,20,2)/)
  T2=(/(i,i=2,10,2),(i,i=1,10,2)/)
  T3=RESHAPE((/((i*j,j=1,10),i=1,10)/), SHAPE(T3))
  PRINT*, T1
  PRINT*, "==================================================================="
  PRINT*, T2
  PRINT*, "==================================================================="
  PRINT*, T3
END PROGRAM exo1
