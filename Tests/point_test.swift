
import CppLib
import XCTest

class MyPointTests: XCTestCase {
  override func setUp() {
    super.setUp()

  }

  override func tearDown() {

    super.tearDown()
  }

  func testMyPoint() {
    let p = MyPoint(3,4)
    print( p.getx(), p.gety() )
    XCTAssertEqual( p.getx() , 3)
    XCTAssertEqual( p.gety() , 4)

  }


}

