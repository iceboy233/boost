def boost_library(
    name,
    srcs = None,
    textual_hdrs = None,
    defines = None,
    linkopts = None,
    deps = None):
    return {
        'name': name,
        'version': 'boost-1.79.0',
        'srcs': srcs,
        'textual_hdrs': textual_hdrs,
        'defines': (defines or []) + ["BOOST_ALL_NO_LIB"],
        'linkopts': linkopts,
        'deps': deps or [],
    }

BOOST_LIBRARIES = [
    boost_library(
        name = "algorithm",
        deps = [
            "array",
            "assert",
            "core",
            "function",
            "range",
            "static_assert",
        ],
    ),

    boost_library(
        name = "align",
        deps = [
            "assert",
            "config",
            "core",
            "static_assert",
            "throw_exception",
        ],
    ),

    boost_library(
        name = "any",
        deps = [
            "throw_exception",
            "type_index",
        ],
    ),

    boost_library(
        name = "array",
        deps = ["throw_exception"],
    ),

    boost_library(
        name = "asio",
        deps = [
            "align",
            "bind",
            "config",
            "date_time",
            "regex",
            "system",
            "throw_exception",
        ],
        linkopts = select({
            "@bazel_tools//src/conditions:windows": [],
            "//conditions:default": ["-pthread"],
        }),
    ),

    boost_library(
        name = "assert",
    ),

    boost_library(
        name = "atomic",
        deps = [
            "assert",
            "config",
            "type_traits",
        ],
    ),

    boost_library(
        name = "beast",
        deps = [
            "intrusive",
            "logic",
            "move",
            "mp11",
            "optional",
        ],
        defines = ["BOOST_BEAST_USE_STD_STRING_VIEW"],
    ),

    boost_library(
        name = "bind",
    ),

    boost_library(
        name = "chrono",
        deps = ["ratio"],
    ),

    boost_library(
        name = "circular_buffer",
        deps = [
            "concept_check",
            "config",
            "core",
            "move",
            "preprocessor",
            "static_assert",
            "throw_exception",
            "type_traits",
        ],
    ),

    boost_library(
        name = "concept_check",
    ),

    boost_library(
        name = "config",
    ),
    

    boost_library(
        name = "container",
        deps = [
            "assert",
            "config",
            "container_hash",
            "core",
            "intrusive",
            "move",
            "static_assert",
            "type_traits",
        ],
    ),

    boost_library(
        name = "container_hash",
        deps = [
            "assert",
            "core",
            "detail",
            "integer",
            "type_traits",
        ],
    ),

    boost_library(
        name = "conversion",
        deps = [
            "assert",
            "config",
            "core",
            "smart_ptr",
            "throw_exception",
            "type_traits",
            "typeof",
        ],
    ),

    boost_library(
        name = "core",
        deps = ["config"],
    ),

    boost_library(
        name = "date_time",
        srcs = [
            "src/gregorian/greg_month.cpp",
        ],
        deps = [
            "io",
            "lexical_cast",
            "mpl",
            "numeric_conversion",
            "smart_ptr",
            "static_assert",
            "throw_exception",
            "tokenizer",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "detail",
    ),

    boost_library(
        name = "endian",
        deps = [
            "config",
            "core",
            "type_traits",
        ],
    ),

    boost_library(
        name = "exception",
    ),

    boost_library(
        name = "filesystem",
        srcs = [
            "src/codecvt_error_category.cpp",
            "src/directory.cpp",
            "src/exception.cpp",
            "src/operations.cpp",
            "src/path_traits.cpp",
            "src/path.cpp",
            "src/portability.cpp",
            "src/unique_path.cpp",
            "src/utf8_codecvt_facet.cpp",
            "src/windows_file_codecvt.cpp",
        ],
        defines = ["BOOST_FILESYSTEM_NO_CXX20_ATOMIC_REF"],
        deps = [
            "atomic",
            "config",
            "container_hash",
            "io",
            "iterator",
            "range",
            "smart_ptr",
            "system",
            "type_traits",
        ],
    ),

    boost_library(
        name = "foreach",
    ),

    boost_library(
        name = "format",
    ),

    boost_library(
        name = "function",
        deps = [
            "bind",
            "move",
            "type_index",
        ],
    ),

    boost_library(
        name = "function_types",
    ),

    boost_library(
        name = "functional",
        deps = [
            "config",
            "utility",
        ],
    ),

    boost_library(
        name = "fusion",
        deps = [
            "typeof",
        ],
    ),

    boost_library(
        name = "hana",
        deps = [
            "config",
            "core",
            "fusion",
            "mpl",
            "tuple",
        ],
    ),

    boost_library(
        name = "icl",
        deps = [
            "assert",
            "config",
            "iterator",
            "move",
            "range",
        ],
    ),

    boost_library(
        name = "integer",
        deps = [
            "config",
            "static_assert",
        ],
    ),

    boost_library(
        name = "io",
    ),

    boost_library(
        name = "interprocess",
        deps = [
            "config",
            "date_time",
            "detail",
            "unordered",
            "winapi",
        ],
    ),

    boost_library(
        name = "intrusive",
    ),

    boost_library(
        name = "iterator",
        deps = [
            "detail",
            "mpl",
            "type_traits",
        ],
    ),

    boost_library(
        name = "lexical_cast",
        deps = [
            "array",
            "container",
            "integer",
            "numeric_conversion",
            "math",
            "range",
        ],
    ),

    boost_library(
        name = "locale",
    ),

    boost_library(
        name = "lockfree",
        deps = [
            "align",
            "array",
            "assert",
            "atomic",
            "config",
            "core",
            "integer",
            "mpl",
            "parameter",
            "predef",
            "static_assert",
            "tuple",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "log",
        srcs = [
            "src/attribute_name.cpp",
            "src/attribute_set.cpp",
            "src/attribute_value_set.cpp",
            "src/code_conversion.cpp",
            "src/core.cpp",
            "src/date_time_format_parser.cpp",
            "src/default_attribute_names.cpp",
            "src/default_sink.cpp",
            "src/dump.cpp",
            "src/exceptions.cpp",
            "src/global_logger_storage.cpp",
            "src/once_block.cpp",
            "src/process_id.cpp",
            "src/record_ostream.cpp",
            "src/severity_level.cpp",
            "src/text_ostream_backend.cpp",
            "src/thread_id.cpp",
            "src/thread_specific.cpp",
            "src/trivial.cpp",
        ],
        deps = [
            "config",
            "filesystem",
            "function_types",
            "intrusive",
            "locale",
            "mp11",
            "parameter",
            "phoenix",
            "predef",
            "random",
            "spirit",
            "thread",
        ],
    ),

    boost_library(
        name = "logic",
    ),

    boost_library(
        name = "math",
        deps = ["predef"],
    ),

    boost_library(
        name = "move",
        deps = [
            "core",
            "static_assert",
        ],
    ),

    boost_library(
        name = "mp11",
    ),

    boost_library(
        name = "mpl",
        deps = [
            "config",
            "preprocessor",
        ],
    ),

    boost_library(
        name = "multi_index",
        deps = ["serialization"],
    ),

    boost_library(
        name = "multiprecision",
        deps = [
            "assert",
            "config",
            "core",
            "functional",
            "lexical_cast",
            "math",
            "mpl",
            "rational",
            "smart_ptr",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "numeric_conversion",
    ),

    boost_library(
        name = "optional",
        deps = [
            "assert",
            "core",
            "move",
            "static_assert",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "parameter",
    ),

    boost_library(
        name = "phoenix",
        deps = [
            "fusion",
            "proto",
        ],
    ),

    boost_library(
        name = "predef",
    ),

    boost_library(
        name = "preprocessor",
    ),

    boost_library(
        name = "process",
        deps = [
            "algorithm",
            "filesystem",
        ],
    ),

    boost_library(
        name = "program_options",
        srcs = [
            "src/cmdline.cpp",
            "src/convert.cpp",
            "src/options_description.cpp",
            "src/positional_options.cpp",
            "src/split.cpp",
            "src/utf8_codecvt_facet.cpp",
            "src/value_semantic.cpp",
            "src/variables_map.cpp",
        ],
        deps = [
            "any",
            "config",
            "function",
            "lexical_cast",
            "smart_ptr",
            "tokenizer",
        ],
    ),

    boost_library(
        name = "property_tree",
        deps = [
            "any",
            "format",
            "multi_index",
        ],
    ),

    boost_library(
        name = "proto",
    ),

    boost_library(
        name = "range",
        deps = [
            "array",
            "assert",
            "concept_check",
            "config",
            "container_hash",
            "core",
            "detail",
            "iterator",
            "mpl",
            "numeric_conversion",
            "optional",
            "preprocessor",
            "regex",
            "static_assert",
            "tuple",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "ratio",
        deps = ["integer"],
    ),

    boost_library(
        name = "rational",
        deps = [
            "assert",
            "integer",
            "static_assert",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "random",
        srcs = [
            "src/random_device.cpp",
        ],
        deps = [
            "assert",
            "config",
            "core",
            "integer",
            "io",
            "iterator",
            "math",
            "mpl",
            "predef",
            "range",
            "system",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "regex",
    ),

    boost_library(
        name = "serialization",
    ),

    boost_library(
        name = "signals2",
        deps = [
            "assert",
            "bind",
            "config",
            "core",
            "function",
            "iterator",
            "mpl",
            "optional",
            "parameter",
            "predef",
            "preprocessor",
            "smart_ptr",
            "throw_exception",
            "tuple",
            "type_traits",
            "variant",
        ],
    ),

    boost_library(
        name = "smart_ptr",
        deps = [
            "core",
            "predef",
            "throw_exception",
        ],
    ),

    boost_library(
        name = "spirit",
        deps = [
            "assert",
            "core",
            "foreach",
            "fusion",
            "math",
            "mpl",
            "optional",
            "range",
            "regex",
            "smart_ptr",
            "tti",
            "type_traits",
            "utility",
            "variant",
        ],
    ),

    boost_library(
        name = "statechart",
        deps = [
            "assert",
            "bind",
            "config",
            "conversion",
            "core",
            "detail",
            "function",
            "mpl",
            "smart_ptr",
            "static_assert",
            "thread",
            "type_traits",
        ],
    ),

    boost_library(
        name = "static_assert",
        deps = ["config"]
    ),

    boost_library(
        name = "system",
        srcs = [
            "src/error_code.cpp",
        ],
        deps = [
            "assert",
            "config",
            "core",
            "predef",
            "winapi",
        ],
    ),

    boost_library(
        name = "thread",
        srcs = ["src/future.cpp"] + select({
            "@bazel_tools//src/conditions:windows": [
                "src/win32/thread.cpp",
                "src/win32/thread_primitives.cpp",
                "src/win32/tss_pe.cpp",
            ],
            "//conditions:default": [
                "src/pthread/thread.cpp",
                "src/pthread/once.cpp",
            ],
        }),
        textual_hdrs = select({
            "@bazel_tools//src/conditions:windows": [],
            "//conditions:default": [
                "src/pthread/once_atomic.cpp",
            ],
        }),
        defines = ["BOOST_THREAD_BUILD_LIB"],
        linkopts = select({
            "@bazel_tools//src/conditions:windows": [],
            "//conditions:default": ["-pthread"],
        }),
        deps = [
            "algorithm",
            "atomic",
            "bind",
            "chrono",
            "config",
            "container_hash",
            "core",
            "date_time",
            "exception",
            "function",
            "io",
            "iterator",
            "lexical_cast",
            "move",
            "mpl",
            "optional",
            "system",
            "tuple",
            "type_traits",
            "winapi",
        ],
    ),

    boost_library(
        name = "throw_exception",
        deps = [
            "assert",
            "config",
        ],
    ),

    boost_library(
        name = "tokenizer",
    ),

    boost_library(
        name = "tti",
    ),

    boost_library(
        name = "tuple",
    ),

    boost_library(
        name = "type_index",
        deps = [
            "container_hash",
            "mpl",
            "static_assert",
            "throw_exception",
        ],
    ),

    boost_library(
        name = "type_traits",
        deps = ["static_assert"],
    ),

    boost_library(
        name = "typeof",
    ),

    boost_library(
        name = "unordered",
    ),

    boost_library(
        name = "utility",
        deps = [
            "config",
            "core",
            "preprocessor",
            "type_traits",
        ],
    ),

    boost_library(
        name = "variant",
        deps = [
            "move",
            "type_index",
            "utility",
        ],
    ),

    boost_library(
        name = "winapi",
    ),
]

def define_wrapper_libraries():
    for lib in BOOST_LIBRARIES:
        native.cc_library(
            name = lib["name"],
            deps = ["@org_boost_{name}//:{name}".format(**lib)],
        )
