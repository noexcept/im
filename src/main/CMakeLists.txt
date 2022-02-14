project(main)

add_executable(${PROJECT_NAME}
	main.cpp
)

target_link_libraries(main ${IM_QT_WIDGETS_LIB})
