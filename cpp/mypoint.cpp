#include "mypoint.hpp"

MyPoint::MyPoint(int x, int y) : x{x}, y{y} {}
int MyPoint::getx() const { return x; }
void MyPoint::setx(int val) { x = val; }
int MyPoint::gety() const { return y; }
void MyPoint::sety(int val) { y = val; }

MyPoint moveXY(MyPoint p, int x, int y)
{
  return MyPoint(p.getx() + x, p.gety() + y);
}
