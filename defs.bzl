
def rbe_configs_gen(name, path, image, **kwargs):
    native.sh_binary(
        name = name,
        srcs = ["generate_config.sh"],
        args = [
            "$(location @rbe_configs_gen//file)",
            "-toolchain_container", image,
            "-exec_os", "linux",
            "-target_os", "linux",
            "-output_config_path", path,
        ],
        data = [
            "@rbe_configs_gen//file",
        ],
        tags = [
            "manual",
            "local",
        ],
        **kwargs,
    )
