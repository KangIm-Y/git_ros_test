# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_cppros_git_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED cppros_git_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(cppros_git_FOUND FALSE)
  elseif(NOT cppros_git_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(cppros_git_FOUND FALSE)
  endif()
  return()
endif()
set(_cppros_git_CONFIG_INCLUDED TRUE)

# output package information
if(NOT cppros_git_FIND_QUIETLY)
  message(STATUS "Found cppros_git: 0.0.0 (${cppros_git_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'cppros_git' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${cppros_git_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(cppros_git_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${cppros_git_DIR}/${_extra}")
endforeach()
