# vika.bash

[![gitpod](https://img.shields.io/badge/gitpod-vika.bash-orange)](https://gitpod.io/#https://github.com/vikadata/vika.bash)

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

