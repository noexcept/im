cmake_minimum_required(VERSION 3.20.0)

project(im)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(IMQt)
im_find_qt(IM_QT_CORE_LIB IM_QT_WIDGETS_LIB)

add_subdirectory(src/main)
