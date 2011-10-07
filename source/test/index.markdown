---
layout: page
title: "Test"
date: 2011-10-07 07:34
comments: true
sharing: true
footer: true
---

## test ##

test page, not a lot to see here. 

### code ###

octopress setup:

``` bash octopress first-time setup

# RVM install
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

# centos deps
sudo yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison glibc

# RVM bash setup
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
source ~/.bash_profile

# install ruby, update
rvm install 1.9.2 && rvm use 1.9.2
rvm rubygems latest

# clone octopress, etc
git clone git://github.com/imathis/octopress.git bg7.github.com
cd bg7.github.com
gem install bundler
bundle install

# install default theme
rake install
```

hey! a local edit! nice.


