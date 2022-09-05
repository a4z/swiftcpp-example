import CppLib

let myPoint = MyPoint(3,4)
print( myPoint.getx(), myPoint.gety() )

let movedPoint = moveXY(myPoint, 2,3)
print( movedPoint.getx(), movedPoint.gety() )

