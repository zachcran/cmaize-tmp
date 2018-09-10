################################################################################
#            Functions for delcaring unit tests in various languages           #
################################################################################
include(cpp_print) #For debug printing

function(cpp_cmake_unit_test _ccut_name)
    get_filename_component(_ccut_test_file test_${_ccut_name}.cmake REALPATH)
    add_test(
            NAME ${_ccut_name}
            COMMAND ${CMAKE_COMMAND}
            "-DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}"
            -P ${_ccut_test_file}
    )
    _cpp_debug_print("Added CMake Unit Test:")
    _cpp_debug_print("  Name: ${_ccut_name}")
    _cpp_debug_print("  File: ${_ccut_test_file}")
endfunction()