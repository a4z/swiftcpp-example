find_package(XCTest REQUIRED)

xctest_add_bundle(
    xcpoint_test
    mypoint
    point_test.swift
)
target_link_libraries(xcpoint_test PRIVATE mypoint)
target_link_libraries(xcpoint_test PRIVATE ${XCTest_LIBRARIES})
#target_include_directories(xcpoint_test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/cpp)
target_compile_options(xcpoint_test
  PRIVATE "SHELL:-enable-experimental-cxx-interop"
  "-DENABLE_TESTING_SEARCH_PATHS"
  )


xctest_add_test(
    XCTest.point xcpoint_test
)
