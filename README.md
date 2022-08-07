# vika.bash

![vika.bash](https://socialify.git.ci/vikadata/vika.bash/image?description=1&forks=1&issues=1&language=1&logo=https%3A%2F%2Fs1.vika.cn%2Fspace%2F2021%2F05%2F06%2Fed51e73eae8340639793bfe95fe3c669&name=1&owner=1&pulls=1&stargazers=1&theme=Light)

[![open source license](https://img.shields.io/github/license/vikadata/vika.bash)](https://github.com/vikadata/vika.bash)
[![gitpod](https://img.shields.io/badge/gitpod-vika.bash-orange)](https://gitpod.io/#https://github.com/vikadata/vika.bash)
[![docker registry](https://img.shields.io/docker/v/vikadata/vika.bash?color=blue&label=docker)](https://hub.docker.com/r/vikadata/vika.bash)
[![docker pull](https://img.shields.io/docker/pulls/vikadata/vika.bash)](https://hub.docker.com/r/vikadata/vika.bash)
[![github action workflow](https://img.shields.io/github/workflow/status/vikadata/vika.bash/docker)](https://github.com/vikadata/vika.bash/actions/workflows/build.yml)

vika.bash is a CLI-tool which make your access [vika.cn](https://vika.cn) easily.

## Quick Start

Copy these to your terminal and run it.

And see what happen.



```
# alias the docker run
alias vika='docker run -it -v ~/:/root --rm vikadata/vika.bash'

# use your token to login, from UI: Profile -> My Settings -> Developers -> API Token
vika login _YOUR_TOKEN_HERE_

# Get data
vika get dstXXXXX  viwYYYYY
```
> Recommend you use docker to run `vika.bash`.
> for `jq` and some tools pre-installed.




Also, you can download and run `vika.bash` in your local:
```bash
# download vika.bash cli tool
curl -fsSL https://raw.githubusercontent.com/vikadata/vika.bash/main/vika > vika
chmod +x ./vika
./vika login _YOUR_TOKEN_HERE_
./vika get dstXXXXX viwYYYYY
```

What's more?

```bash
./vika -h
```


## Container Images

`vika.bash` published to the container registry below:

- [Docker Hub](https://hub.docker.com/r/vikadata/vika.bash)
- [Github Container Registry](https://github.com/orgs/vikadata/packages/container/package/vika.bash)
