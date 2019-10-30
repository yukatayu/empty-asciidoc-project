#!/bin/bash
set -e

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y make git vim ruby

sudo gem install asciidoctor
sudo gem install --pre asciidoctor-pdf
sudo gem install asciidoctor-pdf-cjk
sudo gem install rouge

# asciidoctor-mathematical
sudo apt-get -y install bison flex libffi-dev libxml2-dev libgdk-pixbuf2.0-dev libcairo2-dev libpango1.0-dev fonts-lyx cmake ruby-dev
sudo gem install asciidoctor-mathematical

echo "Successfully installed"

