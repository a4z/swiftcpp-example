#ifndef __CPP_IOP_EX_MYPOINT
#define __CPP_IOP_EX_MYPOINT

class MyPoint
{
public:
  MyPoint(int x, int y);
  int getx() const;
  void setx(int val);
  int gety() const;
  void sety(int val);

private:
  int x;
  int y;
};

MyPoint moveXY(MyPoint, int, int) ;

#endif
