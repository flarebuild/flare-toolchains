# Flare toolchains

## How to update configs for new image

```
bazel run dockerfiles/ubuntu2004-rbe:push
bazel run :ubuntu2004_config
git add ubuntu2004
git commit
```

# MacOS

`osx` config is generated manuall with rbe_config_gen from https://github.com/gorilych/bazel-toolchains/tree/macos

```
rm -rf osx
/path/to/rbe_configs_gen -exec_os=osx -target_os=osx -output_src_root . -output_config_path osx
git add osx
git commit
```
