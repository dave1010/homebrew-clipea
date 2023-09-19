# [Clipea](https://github.com/dave1010/clipea)

Install:

    brew tap dave1010/clipea
    brew install clipea
    clipea setup

Update:

    brew update
    brew upgrade clipea

Run `clipea.rb` tap locally:

    brew install --build-from-source ./clipea.rb

Update process (if not automated)

1. Download the latest tag from https://github.com/dave1010/clipea/tags
2. `shasum -a 256 ~/Downloads/clipea-1.0.1.tar.gz`
3. Update the `url` and `shasum` in `clipea.rb`
