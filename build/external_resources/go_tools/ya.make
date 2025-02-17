

RESOURCES_LIBRARY()

IF (NOT HOST_OS_DARWIN AND NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS)
    MESSAGE(FATAL_ERROR Unsupported host platform for GO_TOOLS)
ELSEIF(GOSTD_VERSION == 1.17.8)
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        GO_TOOLS
        sbr:2975779965 FOR DARWIN-ARM64
        sbr:2975799383 FOR DARWIN
        sbr:2970904402 FOR LINUX
        sbr:2975819554 FOR WIN32
    )
ELSEIF(GOSTD_VERSION == 1.18rc1)
    DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
        GO_TOOLS
        sbr:2976284462 FOR DARWIN-ARM64
        sbr:2976221586 FOR DARWIN
        sbr:2976074134 FOR LINUX
        sbr:2976176321 FOR WIN32
    )
ELSE()
    MESSAGE(FATAL_ERROR Unsupported version [${GOSTD_VERSION}] of Go Standard Library)
ENDIF()

END()
