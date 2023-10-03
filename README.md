# ICIQ-DMP.github.io
Contains the documentation of the DMP projects, mainly eChempad.

## Exhaustive list of the dependencies of the github 4 pages
Here are [the dependencies of github 4 pages](https://pages.github.com/versions/). Specifically, Jekyll version is 3.9.3


## Usage
### Instructions for environment installation (apply once per machine)
#### Dependencies (Ubuntu / Debian)
```shell
sudo apt-get install -y autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev  # use libgdbm5 if the 6 is not available
```

#### Install `rbenv` ruby installation manager
```shell
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc
source ~/.bashrc # reload bashrc for next steps or start ne bash session with bash
```

#### install `ruby` build as a `rbenv` plugin
```shell
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

#### install ruby using rbenv
```shell
rbenv install -l  # List stable version
rbenv install 3.1.2  # install ruby version 3.1.2
```

#### Install ruby gems
```shell
git clone https://github.com/rubygems/rubygems ~/.rubygems
cd ~/.rubygems  # dont know if this is the folder
rbenv global 3.1.2  # set ruby version
ruby setup.rb
```

#### Install jekyll and bundler
```shell
gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)"
gem install jekyll
```

### Instructions for compiling and running project manually
#### Compile
```shell
cd ~/Desktop/ICIQ-DMP.github.io
bundle install
```

#### Serve locally
```shell
bundle exec jekyll serve
```

### Instructions for compiling and running project using docker (no dependencies needed)
```shell
sudo docker build -t iciq-dmp-docs .
sudo docker-compose up -d
```



