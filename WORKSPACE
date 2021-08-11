workspace(name = "flare_toolchains")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

# BEGIN rules_docker https://github.com/bazelbuild/rules_docker#setup
http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "59d5b42ac315e7eadffa944e86e90c2990110a1c8075f1cd145f487e999d22b3",
    strip_prefix = "rules_docker-0.17.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.17.0/rules_docker-v0.17.0.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)
container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()
# END rules_docker


# Build from Dockerfile
load("@io_bazel_rules_docker//contrib:dockerfile_build.bzl", "dockerfile_image")
load("@io_bazel_rules_docker//cc:image.bzl", "cc_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_load")

dockerfile_image(
    name = "ubuntu2004-rbe-dockerfile",
    dockerfile = "//dockerfiles/ubuntu2004-rbe:Dockerfile",
)

container_load(
    name = "ubuntu2004-rbe",
    file = "@ubuntu2004-rbe-dockerfile//image:dockerfile_image.tar",
)

dockerfile_image(
    name = "ubuntu2104-rbe-dockerfile",
    dockerfile = "//dockerfiles/ubuntu2104-rbe:Dockerfile",
)

container_load(
    name = "ubuntu2104-rbe",
    file = "@ubuntu2104-rbe-dockerfile//image:dockerfile_image.tar",
)



# BEGIN rbe_configs_gen
rbe_configs_gen_version = "v5.1.0"
rbe_configs_gen_sha256 = "2cb405bf9b0b787f8bd88ee5ab8f9aa8b786a579d13470d031b24c2f614f604a"
http_file(
    name = "rbe_configs_gen",
    downloaded_file_path = "rbe_configs_gen",
    sha256 = rbe_configs_gen_sha256,
    urls = ["https://github.com/bazelbuild/bazel-toolchains/releases/download/" + rbe_configs_gen_version + "/rbe_configs_gen_linux_amd64"],
    executable = True,
)
# END rbe_configs_gen

