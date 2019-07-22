cmake_minimum_required(VERSION 3.5.1)
project(pMOOSLink VERSION 0.1.0)

find_package(MOOS REQUIRED CONFIG)

add_executable(pMOOSLink
  pMOOSLinkMain.cpp
  pMOOSLink.cpp
)

target_link_libraries(
  pMOOSLink
  MOOS::MOOS
  rt
  pthread
)

include(GNUInstallDirs)
message (STATUS "install dir: ${CMAKE_INSTALL_BINDIR}")

install(TARGETS pMOOSLink
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})

