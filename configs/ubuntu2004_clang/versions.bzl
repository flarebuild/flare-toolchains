# Generated file, do not modify by hand
# Generated by 'rbe_autoconfig_autogen_ubuntu2004_clang' rbe_autoconfig rule
"""Definitions to be used in rbe_repo attr of an rbe_autoconf rule  """
toolchain_config_spec0 = struct(config_repos = [], create_cc_configs = True, create_java_configs = True, env = {"CC": "clang"}, java_home = "/usr/lib/jvm/java-11-openjdk-amd64", name = "default_toolchain_config_spec_name")
_TOOLCHAIN_CONFIG_SPECS = [toolchain_config_spec0]
_BAZEL_TO_CONFIG_SPEC_NAMES = {"3.7.1": ["default_toolchain_config_spec_name"]}
LATEST = "sha256:92c6121554572190e09db8a5c565b6865daefcaa3070b564c87f2c2c68e262cb"
CONTAINER_TO_CONFIG_SPEC_NAMES = {"sha256:92c6121554572190e09db8a5c565b6865daefcaa3070b564c87f2c2c68e262cb": ["default_toolchain_config_spec_name"]}
_DEFAULT_TOOLCHAIN_CONFIG_SPEC = toolchain_config_spec0
TOOLCHAIN_CONFIG_AUTOGEN_SPEC = struct(
        bazel_to_config_spec_names_map = _BAZEL_TO_CONFIG_SPEC_NAMES,
        container_to_config_spec_names_map = CONTAINER_TO_CONFIG_SPEC_NAMES,
        default_toolchain_config_spec = _DEFAULT_TOOLCHAIN_CONFIG_SPEC,
        latest_container = LATEST,
        toolchain_config_specs = _TOOLCHAIN_CONFIG_SPECS,
    )