load(":boost_libraries.bzl", "BOOST_LIBRARIES")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_REPO_NAME_TEMPLATE = "org_boost_{name}"
_REPO_URL_TEMPLATE = "https://github.com/boostorg/{name}/archive/{version}.zip"
_REPO_STRIP_PREFIX_TEMPLATE = "{name}-{version}"

def _get_repo_build_file_content(lib):
    expanded_deps = []
    for dep in lib["deps"]:
        expanded_deps.append(
            ("@" + _REPO_NAME_TEMPLATE + "//:{name}").format(name=dep))
    return """package(default_visibility = ["//visibility:public"])

cc_library(
    name = "{name}",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.ipp",
        "src/**/*.hpp",
    ]),
    includes = ["include"],
    srcs = {srcs_repr},
    textual_hdrs = {textual_hdrs_repr},
    defines = {defines_repr},
    linkopts = {linkopts_repr},
    deps = {deps_repr},
)
""".format(**{
    "name": lib["name"],
    "version": lib["version"],
    "srcs_repr": repr(lib["srcs"]),
    "textual_hdrs_repr": repr(lib["textual_hdrs"]),
    "defines_repr": repr(lib["defines"]),
    "linkopts_repr": repr(lib["linkopts"]),
    "deps_repr": repr(expanded_deps),
})

def boost_deps():
    for lib in BOOST_LIBRARIES:
        if _REPO_NAME_TEMPLATE.format(**lib) not in native.existing_rules():
            http_archive(
                name = _REPO_NAME_TEMPLATE.format(**lib),
                urls = [_REPO_URL_TEMPLATE.format(**lib)],
                strip_prefix = _REPO_STRIP_PREFIX_TEMPLATE.format(**lib),
                build_file_content = _get_repo_build_file_content(lib),
            )
