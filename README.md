# Flare toolchains

## How to update configs for new image

```
sudo RBE_AUTOCONF_ROOT=$(pwd) bazel build @rbe_autoconfig_autogen_ubuntu2004//...
sudo RBE_AUTOCONF_ROOT=$(pwd) bazel build @rbe_autoconfig_autogen_ubuntu2004_clang//...
```
