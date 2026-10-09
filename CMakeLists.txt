cmake_minimum_required(VERSION 3.21)

project(MyApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Quick
    QuickControls2
)

qt_standard_project_setup()

qt_add_executable(MyApp
    src/main.cpp
    src/Backend.cpp
    src/Backend.h
)

qt_add_qml_module(MyApp
    URI MyApp
    VERSION 1.0

    QML_FILES
        qml/Main.qml
)

target_link_libraries(MyApp
    PRIVATE
        Qt6::Quick
        Qt6::QuickControls2
)