package(default_visibility = ["//visibility:public"])

load("@bazel_tools//tools/osx/crosstool:osx_archs.bzl", "OSX_TOOLS_ARCHS")
load("@rules_cc//cc:defs.bzl", "cc_toolchain_suite", "cc_library")
load(":cc_toolchain_config.bzl", "cc_toolchain_config")

# Reexporting osx_arch.bzl for backwards compatibility
# Originally this file was present in @local_config_cc, but with the split in
# https://github.com/bazelbuild/bazel/pull/8459 we had to move the file to
# @local_config_cc_toolchains. This alias is there to keep the code backwards
# compatible (and serves no other purpose).
alias(name = "osx_archs.bzl", actual = "@bazel_tools//tools/osx/crosstool:osx_archs.bzl")

CC_TOOLCHAINS = [(
    cpu + "|compiler",
    ":cc-compiler-" + cpu,
) for cpu in OSX_TOOLS_ARCHS] + [(
    cpu,
    ":cc-compiler-" + cpu,
) for cpu in OSX_TOOLS_ARCHS] + [
    ("k8|compiler", ":cc-compiler-darwin_x86_64"),
    ("darwin|compiler", ":cc-compiler-darwin_x86_64"),
    ("k8", ":cc-compiler-darwin_x86_64"),
    ("darwin", ":cc-compiler-darwin_x86_64"),
]

cc_library(
    name = "malloc",
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "cc_wrapper",
    srcs = ["cc_wrapper.sh"],
)

cc_toolchain_suite(
    name = "toolchain",
    toolchains = dict(CC_TOOLCHAINS),
)

[
    filegroup(
        name = "osx_tools_" + arch,
        srcs = [
            ":cc_wrapper",
            ":libtool",
            ":libtool_check_unique",
            ":make_hashed_objlist.py",
            ":wrapped_clang",
            ":wrapped_clang_pp",
            ":xcrunwrapper.sh",
        ],
    )
    for arch in OSX_TOOLS_ARCHS
]

[
    apple_cc_toolchain(
        name = "cc-compiler-" + arch,
        all_files = ":osx_tools_" + arch,
        ar_files = ":osx_tools_" + arch,
        as_files = ":osx_tools_" + arch,
        compiler_files = ":osx_tools_" + arch,
        dwp_files = ":empty",
        linker_files = ":osx_tools_" + arch,
        objcopy_files = ":empty",
        strip_files = ":osx_tools_" + arch,
        supports_param_files = 1,
        toolchain_config = ":" + (
            arch if arch != "armeabi-v7a" else "stub_armeabi-v7a"
        ),
        toolchain_identifier = (
            arch if arch != "armeabi-v7a" else "stub_armeabi-v7a"
        ),
    )
    for arch in OSX_TOOLS_ARCHS
]

[
    cc_toolchain_config(
        extra_env = { 
            "DEVELOPER_DIR": "/Applications/Xcode.app/Contents/Developer",
            "SDKROOT": "/Applications/Xcode.app/Contents/Developer/Platforms/%{apple_sdk_platform_value}.platform/Developer/SDKs/%{apple_sdk_platform_value}%{apple_sdk_version_override_value}.sdk",
        },
        name = (arch if arch != "armeabi-v7a" else "stub_armeabi-v7a"),
        compiler = "compiler",
        cpu = arch,
        cxx_builtin_include_directories = [
            "/Applications/",
            "/Library/",
            "/Users/me/Library/",
            "/Applications/Xcode.app/Contents/Developer",
            "/Applications/Xcode.12.4.app/Contents/Developer",
        ],
        tool_paths_overrides = {},
    )
    for arch in OSX_TOOLS_ARCHS
]
