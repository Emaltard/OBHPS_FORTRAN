PROGRAM test
  IMPLICIT NONE
  REAL :: a, b, c, d, x, y, alpha, beta, det

  PRINT *, "Resolution d'un systeme à deux équations à deux inconnues de forme:"
  PRINT *, "a * x + b * y = alpha"
  PRINT *, "c * x + d * y = beta"

  PRINT *, "Donnez a:"
  READ *, a

  PRINT *, "Donnez b:"
  READ *, b

  PRINT *, "Donnez c:"
  READ *, c

  PRINT *, "Donnez d:"
  READ *, d

  PRINT *, "Donnez alpha:"
  READ *, alpha

  PRINT *, "Donnez beta:"
  READ *, beta

  y = ((-a) * beta + alpha * c) / (b*c - a*d)
  x = (alpha - b*y) / a

  PRINT *, "x = ", x
  PRINT *, "y = ", y

END PROGRAM test
