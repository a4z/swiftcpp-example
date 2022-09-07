cmake_minimum_required(VERSION 3.21)

project(swiop LANGUAGES CXX Swift)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS OFF)

include(CTest)
enable_testing()

add_library(mypoint cpp/mypoint.cpp)
target_include_directories(mypoint PUBLIC
  ${CMAKE_SOURCE_DIR}/cpp)


add_executable(swiftcpp-example Sources/main.swift)
target_compile_options(swiftcpp-example
  PRIVATE "SHELL:-enable-experimental-cxx-interop"
  )
target_link_libraries(swiftcpp-example PRIVATE mypoint)


# point_test.swift:19:5: error: cannot find 'XCTAssertEqual' in scope
# add_subdirectory(Tests)
