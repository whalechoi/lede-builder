# lede-builder
build [lede](https://github.com/coolsnowwolf/lede) in docker

```shell
# clone project
git clone https://github.com/whalechoi/lede-builder.git
# build image
cd lede-builder && docker build -t lede-builder:ubuntu ./
# create work dir
mkdir ~/work
# run container
docker run \
    -itd \
    --name lede-builder \
    -h whalechoi \
    -p 10022:22 \
    -v ~/work:/home/builder/work \
    lede-builder:ubuntu
# connet to container via ssh
# password is password
ssh builder@localhost -p 10022
# start your build reference lede's README
```
