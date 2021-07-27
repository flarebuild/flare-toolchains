# Flare toolchains

## How to update configs for new image

```
bazel run dockerfiles/ubuntu2004-rbe:push
bazel run :ubuntu2004_config
git add ubuntu2004
git commit
```
