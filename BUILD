licenses(["notice"])

package(default_visibility = ["//visibility:public"])

load(":build_rules.bzl", "boost_library")

boost_library(
    name = "algorithm",
    deps = [
        ":array",
        ":assert",
        ":core",
        ":range",
        ":static_assert",
    ],
)

boost_library(
    name = "any",
    deps = [
        ":throw_exception",
        ":type_index",
    ],
)

boost_library(
    name = "array",
    deps = [":throw_exception"],
)

boost_library(
    name = "asio",
    deps = [
        ":bind",
        ":config",
        ":date_time",
        ":regex",
        ":system",
        ":throw_exception",
    ],
)

boost_library(
    name = "assert",
)

boost_library(
    name = "atomic",
)

boost_library(
    name = "beast",
    deps = [
        ":intrusive",
        ":move",
        ":optional",
    ],
)

boost_library(
    name = "bind",
)

boost_library(
    name = "chrono",
    deps = [":ratio"],
)

boost_library(
    name = "circular_buffer",
)

boost_library(
    name = "concept_check",
)

boost_library(
    name = "config",
)

boost_library(
    name = "container",
)

boost_library(
    name = "container_hash",
    deps = [
        ":assert",
        ":core",
        ":detail",
        ":integer",
        ":type_traits",
    ],
)

boost_library(
    name = "core",
)

boost_library(
    name = "date_time",
    deps = [
        ":mpl",
        ":numeric_conversion",
        ":smart_ptr",
        ":static_assert",
        ":throw_exception",
        ":tokenizer",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "detail",
)

boost_library(
    name = "exception",
)

boost_library(
    name = "filesystem",
    srcs = [
        "upstream/filesystem/src/codecvt_error_category.cpp",
        "upstream/filesystem/src/operations.cpp",
        "upstream/filesystem/src/path_traits.cpp",
        "upstream/filesystem/src/path.cpp",
        "upstream/filesystem/src/portability.cpp",
        "upstream/filesystem/src/unique_path.cpp",
        "upstream/filesystem/src/utf8_codecvt_facet.cpp",
        "upstream/filesystem/src/windows_file_codecvt.cpp",
    ],
    deps = [
        ":config",
        ":container_hash",
        ":io",
        ":iterator",
        ":range",
        ":smart_ptr",
        ":system",
        ":type_traits",
    ],
)

boost_library(
    name = "foreach",
)

boost_library(
    name = "format",
)

boost_library(
    name = "function",
    deps = [
        ":bind",
        ":move",
        ":type_index",
    ],
)

boost_library(
    name = "function_types",
)

boost_library(
    name = "fusion",
    deps = [
        ":typeof",
    ],
)

boost_library(
    name = "integer",
)

boost_library(
    name = "io",
)

boost_library(
    name = "intrusive",
)

boost_library(
    name = "iterator",
    deps = [
        ":detail",
        ":mpl",
    ],
)

boost_library(
    name = "lexical_cast",
    deps = [
        ":array",
        ":container",
        ":numeric_conversion",
        ":math",
        ":range",
    ],
)

boost_library(
    name = "locale",
)

boost_library(
    name = "log",
    srcs = [
        "upstream/log/src/attribute_name.cpp",
        "upstream/log/src/attribute_set.cpp",
        "upstream/log/src/attribute_value_set.cpp",
        "upstream/log/src/code_conversion.cpp",
        "upstream/log/src/core.cpp",
        "upstream/log/src/date_time_format_parser.cpp",
        "upstream/log/src/default_attribute_names.cpp",
        "upstream/log/src/default_sink.cpp",
        "upstream/log/src/dump.cpp",
        "upstream/log/src/exceptions.cpp",
        "upstream/log/src/global_logger_storage.cpp",
        "upstream/log/src/once_block.cpp",
        "upstream/log/src/process_id.cpp",
        "upstream/log/src/record_ostream.cpp",
        "upstream/log/src/severity_level.cpp",
        "upstream/log/src/text_ostream_backend.cpp",
        "upstream/log/src/thread_id.cpp",
        "upstream/log/src/thread_specific.cpp",
        "upstream/log/src/trivial.cpp",
        "upstream/log/src/unhandled_exception_count.cpp",
    ],
    deps = [
        ":config",
        ":filesystem",
        ":function_types",
        ":intrusive",
        ":locale",
        ":parameter",
        ":phoenix",
        ":predef",
        ":random",
        ":spirit",
        ":thread",
    ],
)

boost_library(
    name = "math",
    deps = [":predef"],
)

boost_library(
    name = "move",
)

boost_library(
    name = "mpl",
    deps = [":preprocessor"],
)

boost_library(
    name = "multi_index",
    deps = [":serialization"],
)

boost_library(
    name = "numeric_conversion",
)

boost_library(
    name = "optional",
)

boost_library(
    name = "parameter",
)

boost_library(
    name = "phoenix",
    deps = [
        ":fusion",
        ":proto",
    ],
)

boost_library(
    name = "predef",
)

boost_library(
    name = "preprocessor",
)

boost_library(
    name = "process",
)

boost_library(
    name = "program_options",
    srcs = [
        "upstream/program_options/src/cmdline.cpp",
        "upstream/program_options/src/convert.cpp",
        "upstream/program_options/src/options_description.cpp",
        "upstream/program_options/src/positional_options.cpp",
        "upstream/program_options/src/utf8_codecvt_facet.cpp",
        "upstream/program_options/src/value_semantic.cpp",
        "upstream/program_options/src/variables_map.cpp",
    ],
    deps = [
        ":any",
        ":config",
        ":function",
        ":lexical_cast",
        ":smart_ptr",
        ":tokenizer",
    ],
)

boost_library(
    name = "property_tree",
    deps = [
        ":format",
        ":multi_index",
    ],
)

boost_library(
    name = "proto",
)

boost_library(
    name = "range",
    deps = [
        ":concept_check",
        ":iterator",
        ":mpl",
        ":preprocessor",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "ratio",
    deps = [":integer"],
)

boost_library(
    name = "random",
    srcs = [
        "upstream/random/src/random_device.cpp",
    ],
    deps = [
        ":assert",
        ":config",
        ":core",
        ":integer",
        ":io",
        ":iterator",
        ":math",
        ":mpl",
        ":predef",
        ":range",
        ":system",
        ":throw_exception",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "regex",
)

boost_library(
    name = "serialization",
)

boost_library(
    name = "smart_ptr",
    deps = [":throw_exception"],
)

boost_library(
    name = "spirit",
    deps = [
        ":foreach",
        ":regex",
        ":variant",
    ],
)

boost_library(
    name = "static_assert",
    deps = [":config"]
)

boost_library(
    name = "system",
    srcs = [
        "upstream/system/src/error_code.cpp",
    ],
    deps = [
        ":assert",
        ":config",
        ":core",
        ":predef",
    ] + select({
        "@bazel_tools//src/conditions:windows": [":winapi"],
        "//conditions:default": [],
    }),
)

boost_library(
    name = "thread",
    srcs = ["upstream/thread/src/future.cpp"] + select({
        "@bazel_tools//src/conditions:windows": [
            "upstream/thread/src/win32/thread.cpp",
            "upstream/thread/src/win32/thread_primitives.cpp",
            "upstream/thread/src/win32/tss_pe.cpp",
        ],
        "//conditions:default": [
            "upstream/thread/src/pthread/thread.cpp",
            "upstream/thread/src/pthread/once.cpp",
        ],
    }),
    textual_hdrs = select({
        "@bazel_tools//src/conditions:windows": [],
        "//conditions:default": [
            "upstream/thread/src/pthread/once_atomic.cpp",
        ],
    }),
    defines = ["BOOST_THREAD_BUILD_LIB"],
    linkopts = select({
        "@bazel_tools//src/conditions:windows": [],
        "//conditions:default": ["-pthread"],
    }),
    deps = [
        ":algorithm",
        ":atomic",
        ":bind",
        ":chrono",
        ":config",
        ":container_hash",
        ":core",
        ":date_time",
        ":exception",
        ":function",
        ":io",
        ":iterator",
        ":lexical_cast",
        ":move",
        ":mpl",
        ":optional",
        ":system",
        ":tuple",
        ":type_traits",
    ] + select({
        "@bazel_tools//src/conditions:windows": [":winapi"],
        "//conditions:default": [],
    }),
)

boost_library(
    name = "throw_exception",
)

boost_library(
    name = "tokenizer",
)

boost_library(
    name = "tuple",
)

boost_library(
    name = "type_index",
    deps = [
        ":container_hash",
        ":mpl",
        ":static_assert",
    ],
)

boost_library(
    name = "type_traits",
    deps = [":static_assert"],
)

boost_library(
    name = "typeof",
)

boost_library(
    name = "utility",
)

boost_library(
    name = "variant",
)

boost_library(
    name = "winapi",
)
