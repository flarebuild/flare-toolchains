workspace(name = "flare_toolchains")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_toolchains",
    sha256 = "8c9728dc1bb3e8356b344088dfd10038984be74e1c8d6e92dbb05f21cabbb8e4",
    strip_prefix = "bazel-toolchains-3.7.1",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/3.7.1/bazel-toolchains-3.7.1.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/3.7.1/bazel-toolchains-3.7.1.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

# see https://github.com/gorilych/bazel-toolchains/blob/master/rules/rbe_repo.bzl#L177

load(
    "//configs/ubuntu2004:versions.bzl",
    toolchain_config_suite_autogen_spec = "TOOLCHAIN_CONFIG_AUTOGEN_SPEC",
)

# Automatic config generation target for RBE Ubuntu 20.04
rbe_autoconfig(
    name = "rbe_autoconfig_autogen_ubuntu2004",
    export_configs = True,
    java_home = "/usr/lib/jvm/java-11-openjdk-amd64",
    toolchain_config_suite_spec = {
        "container_registry": "gcr.io",
        "container_repo": "flare-build-alpha/ubuntu2004-rbe",
        "output_base": "configs/ubuntu2004",
        "repo_name": "flare_toolchains",
        "toolchain_config_suite_autogen_spec": toolchain_config_suite_autogen_spec,
    },
)
