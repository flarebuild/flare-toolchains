load(":versions.bzl", "TOOLCHAIN_CONFIG_AUTOGEN_SPEC")

ubuntu2004_clang_toolchain_config_suite_spec = {
    "container_registry": "gcr.io",
    "container_repo": "flare-build-alpha/ubuntu2004-rbe",
    "output_base": "configs/ubuntu2004_clang",
    "repo_name": "flare_toolchains",
    "toolchain_config_suite_autogen_spec": TOOLCHAIN_CONFIG_AUTOGEN_SPEC,
}

