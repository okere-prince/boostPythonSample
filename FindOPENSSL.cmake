find_package(PkgConfig REQUIRED)
pkg_search_module(OPENSSL REQUIRED openssl)
message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")

#if( OPENSSL_FOUND )
#    #include_directories(${OPENSSL_INCLUDE_DIRS})a
 #   message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
#else()
    # Error; with REQUIRED, pkg_search_module() will throw an error by it's own
#endif()
