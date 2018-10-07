def boost_library(
    name,
    srcs = None,
    textual_hdrs = None,
    defines = None,
    linkopts = None,
    deps = None):

    return native.cc_library(
        name = name,
        hdrs = native.glob([
            "upstream/" + name + "/include/**/*.h",
            "upstream/" + name + "/include/**/*.hpp",
            "upstream/" + name + "/include/**/*.ipp",
            "upstream/" + name + "/src/**/*.hpp",
        ]),
        includes = ["upstream/" + name + "/include"],
        srcs = srcs,
        textual_hdrs = textual_hdrs,
        defines = (defines or []) + ["BOOST_ALL_NO_LIB"],
        linkopts = linkopts,
        deps = deps,
    )
