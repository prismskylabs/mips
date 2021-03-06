set(_target_name mipsel-linux-android)
set(_target_root ${CMAKE_CURRENT_LIST_DIR}/${_target_name})

set(CMAKE_C_FLAGS_INIT "${CMAKE_C_FLAGS} -march=mips32r2 -O2")
set(CMAKE_CXX_FLAGS_INIT ${CMAKE_C_FLAGS})
set(CMAKE_EXE_LINKER_FLAGS_INIT "-static -static-libgcc -static-libstdc++")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
set(BUILD_SHARED_LIBS OFF)

set(CMAKE_C_COMPILER ${_target_root}/bin/${_target_name}-gcc CACHE PATH "C compiler")
set(CMAKE_CXX_COMPILER ${_target_root}/bin/${_target_name}-g++ CACHE PATH "C++ compiler")
set(CMAKE_NM ${_target_root}/bin/${_target_name}-nm CACHE PATH "nm")
set(CMAKE_AR ${_target_root}/bin/${_target_name}-ar CACHE PATH "archive")
set(CMAKE_STRIP ${_target_root}/bin/${_target_name}-strip CACHE PATH "strip")
set(CMAKE_RANLIB ${_target_root}/bin/${_target_name}-ranlib CACHE PATH "ranlib")
set(CMAKE_OBJDUMP ${_target_root}/bin/${_target_name}-objdump CACHE PATH "objdump")
set(CMAKE_OBJCOPY ${_target_root}/bin/${_target_name}-objcopy CACHE PATH "objcopy")
set(CMAKE_LINKER ${_target_root}/bin/${_target_name}-ld CACHE PATH "linker")

if(CCACHE)
    set(CMAKE_C_COMPILER ${CCACHE} ${CMAKE_C_COMPILER})
    set(CMAKE_CXX_COMPILER ${CCACHE} ${CMAKE_CXX_COMPILER})
endif()
