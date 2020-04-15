project(${PROJECT})

#add source files, assume ${PROJECT}.cpp
add_executable(${PROJECT} ${PROJECT}.cpp)

#add torch package
find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")
target_link_libraries(${PROJECT} "${TORCH_LIBRARIES}")

#set some properties
set_property(TARGET ${PROJECT} PROPERTY CXX_STANDARD 14)

if (MSVC)
  #disable some library warnings
  set(CMAKE_CXX_FLAGS "/W4 /wd4273 /wd4819 /wd4018 /wd4244 /wd4251 /wd4275 /wd4305 /wd4267 /wd4522 ${CMAKE_CXX_FLAGS}")
  
  #just copy libiomp5md.dll other than all dlls
  file(GLOB TORCH_DLLS "${TORCH_INSTALL_PREFIX}/lib/libiomp5md.dll")
  add_custom_command(TARGET ${PROJECT}
                     POST_BUILD
                     COMMAND ${CMAKE_COMMAND} -E copy_if_different
                     ${TORCH_DLLS}
                     $<TARGET_FILE_DIR:${PROJECT}>)
endif (MSVC)