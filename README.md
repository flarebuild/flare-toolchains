# Flare toolchains

## How to update configs for new image

```
RBE_AUTOCONF_ROOT=$(pwd) bazel build @rbe_autoconfig_autogen_ubuntu2004//...
RBE_AUTOCONF_ROOT=$(pwd) bazel build @rbe_autoconfig_autogen_ubuntu2004_clang//...
```
