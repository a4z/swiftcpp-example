import CppLib

var myPoint = MyPoint(3,4)
print( myPoint.getx(), myPoint.gety() )

var movedPoint = moveXY(myPoint, 2,3)
print( movedPoint.getx(), movedPoint.gety() )

