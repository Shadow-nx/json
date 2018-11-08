set(GOOGLETEST_ROOT googletest-bc2d0935b74917be0821bfd834472ed9cc4a3b5b/googletest-bc2d0935b74917be0821bfd834472ed9cc4a3b5b CACHE STRING "Google Test source root")

include_directories(SYSTEM
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/include
    )

set(GOOGLETEST_SOURCES
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest-all.cc
    ${PROJECT_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest_main.cc
    )

foreach(_source ${GOOGLETEST_SOURCES})
    set_source_files_properties(${_source} PROPERTIES GENERATED 1)
endforeach()

add_library(gtest ${GOOGLETEST_SOURCES})
