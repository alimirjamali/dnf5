set(DEFAULT_PROJECT_VERSION_MAJOR 5)
set(DEFAULT_PROJECT_VERSION_MINOR 1)
set(DEFAULT_PROJECT_VERSION_PATCH 12)

if(DEFINED PROJECT_VERSION_MAJOR)
  if(NOT ${DEFAULT_PROJECT_VERSION_MAJOR} STREQUAL ${PROJECT_VERSION_MAJOR})
    message(FATAL_ERROR "Variable DEFAULT_PROJECT_VERSION_MAJOR=" ${DEFAULT_PROJECT_VERSION_MAJOR} " in VERSION.cmake differs from PROJECT_VERSION_MAJOR=" ${PROJECT_VERSION_MAJOR} " in spec")
  endif()
else()
  set (PROJECT_VERSION_MAJOR ${DEFAULT_PROJECT_VERSION_MAJOR})
endif()

if(DEFINED PROJECT_VERSION_MINOR)
  if(NOT ${DEFAULT_PROJECT_VERSION_MINOR} STREQUAL ${PROJECT_VERSION_MINOR})
    message(FATAL_ERROR "Variable DEFAULT_PROJECT_VERSION_MINOR=" ${DEFAULT_PROJECT_VERSION_MINOR} " in VERSION.cmake differs from PROJECT_VERSION_MINOR=" ${PROJECT_VERSION_MINOR} " in spec")
  endif()
else()
  set (PROJECT_VERSION_MINOR ${DEFAULT_PROJECT_VERSION_MINOR})
endif()

if(DEFINED PROJECT_VERSION_PATCH)
  if(NOT ${DEFAULT_PROJECT_VERSION_PATCH} STREQUAL ${PROJECT_VERSION_PATCH})
    message(FATAL_ERROR "Variable DEFAULT_PROJECT_VERSION_PATCH=" ${DEFAULT_PROJECT_VERSION_PATCH} " in VERSION.cmake differs from PROJECT_VERSION_PATCH=" ${PROJECT_VERSION_PATCH} " in spec")
  endif()
else()
  set (PROJECT_VERSION_PATCH ${DEFAULT_PROJECT_VERSION_PATCH})
endif()
