function(im_find_qt
        IM_QT_CORE_LIB
        IM_QT_WIDGETS_LIB)
    find_package(QT NAMES Qt6 Qt5 QUIET COMPONENTS Core)
    if (NOT QT_FOUND)
        message(FATAL_ERROR "Qt6 or Qt5 Not Found")
    endif()
    message(STATUS "Found Qt Version: ${QT_VERSION_MAJOR}")

    if(QT_VERSION_MAJOR EQUAL 6)
        find_package(Qt6 REQUIRED COMPONENTS Core Widgets)
        set(IM_QT_CORE_LIB Qt6::Core PARENT_SCOPE)
        set(IM_QT_WIDGETS_LIB Qt6::Widgets PARENT_SCOPE)
    elseif(QT_VERSION_MAJOR EQUAL 5)
        find_package(Qt5 REQUIRED COMPONENTS Core Widgets)
        set(IM_QT_CORE_LIB Qt5::Core PARENT_SCOPE)
        set(IM_QT_WIDGETS_LIB Qt5::Widgets PARENT_SCOPE)
    endif()
endfunction()