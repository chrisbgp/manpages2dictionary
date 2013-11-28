# manpages2dictionary

----

a little script to create a mac osx dictionary from all your systems manpages...

### requirements

* Apple Dictionary Developer Kit (https://developer.apple.com/downloads/index.action?name=for%20Xcode%20-)
* man2html (available via homebrew)
* ...maybe you need to change the iconv parameters in the manpages.sh script

### usage

* cd into the directory
* run: ./manpages.sh > manpages.xml
* run: make (make install to install globally)
* the dictionary file will be in ./objects

##### Open the Dictionary.app Preferences to select the manpages package

----
a precompiled version can be downloaded via the releases.
