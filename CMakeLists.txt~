cmake_minimum_required(VERSION 2.8)

project(boostPython)

IF(NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE "DEBUG")
  #SET(CMAKE_BUILD_TYPE "RELEASE")
  #SET(CMAKE_BUILD_TYPE "RELWITHDEBINFO")
  #SET(CMAKE_BUILD_TYPE "MINSIZEREL")
ENDIF()

#compilation configs & flags
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 11)
IF(CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "-g -Wall")
ENDIF

#custom and tricky dependency search on purpose cmake find
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR})

set(Python_INCLUDE_DIR "/usr/include/python2.7")

#add_subdirectory(src)
find_package(Boost COMPONENTS regex system filesystem  python REQUIRED)

file(GLOB SOURCES "${boostPython_SOURCE_DIR}/src/*.cpp")

include_directories(${Python_INCLUDE_DIR} ${Boost_INCLUDE_DIRS} ${boostPython_SOURCE_DIR}/include)

#dependenecies libs
set(DEPENDSLIBS ${Boost_FILESYSTEM_LIBRARY} ${Boost_SYSTEM_LIBRARY} ${Boost_REGEX_LIBRARY} ${Boost_PYTHON_LIBRARY})

#add a target (exe or lib)
add_library(boostPython SHARED ${SOURCES})

#link against dependencies
target_link_libraries(boostPython ${DEPENDSLIBS})
