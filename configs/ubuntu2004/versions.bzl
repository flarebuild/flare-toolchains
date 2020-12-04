_TOOLCHAIN_CONFIG_SPECS = []
_DEFAULT_TOOLCHAIN_CONFIG_SPEC = ""
# A map from supported Bazel versions mapped to supported config_spec names.
_BAZEL_TO_CONFIG_SPEC_NAMES = {}
# sha256 digest of the latest version of the toolchain container.
LATEST = ""
# Map from sha256 of the toolchain container to corresponding config_spec names.
CONTAINER_TO_CONFIG_SPEC_NAMES = {}
TOOLCHAIN_CONFIG_AUTOGEN_SPEC = struct(
    bazel_to_config_spec_names_map = _BAZEL_TO_CONFIG_SPEC_NAMES,
    container_to_config_spec_names_map = CONTAINER_TO_CONFIG_SPEC_NAMES,
    default_toolchain_config_spec = _DEFAULT_TOOLCHAIN_CONFIG_SPEC,
    latest_container = LATEST,
    toolchain_config_specs = _TOOLCHAIN_CONFIG_SPECS,
)
