# jdk9-jigsaw   

Examples of some of the features of Jigsaw released in the Early Access build of JDK9.

The examples here are directly from the Project Jigsaw: Module System Quick-Start Guide,
see [http://openjdk.java.net/projects/jigsaw/quick-start](http://openjdk.java.net/projects/jigsaw/quick-start).

## Examples covered
    - Greetings
    - Greetings world
    - Multi-module compilation
    - Packaging
    - Missing requires or missing exports
    - Services
    - The linker
    - javac -Xmodule and java -Xoverride
    - JLink example
    - Modules export conflict

    Each example is enclosed in a folder of its own containing bash scripts to compile,
    package and run the respective examples. Use these scripts for each of the example.

    Note: the bash files provided should work on Linux and in theory on the MacOS as well.
    For Windows we would have to manually convert the .sh files into .bat, with minor tweaks
    should also work there. Happy to received a pull request for it.

## Download (all platforms)
Early Access build of Jigsaw JDK9 is available at [https://jdk9.java.net/jigsaw/](https://jdk9.java.net/jigsaw/).

OpenJDK Jigsaw JDK9 can also be downloaded from the [Adopt OpenJDK Cloudbees build farm](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/project-jigsaw-openjdk-1.9-linux-x86_64/lastSuccessfulBuild/artifact/). Note: the binaries may not be tested as well as the EA builds.

Please install the ```tree``` command before moving forward:

        - Linux
        sudo apt-get install tree
        sudo apt-get install wget

        - MacOSX
        install tree - http://apple.stackexchange.com/questions/128876/whats-the-equivalent-of-the-unix-tree-command-on-osx
        install wget - http://stackoverflow.com/questions/4572153/os-x-equivalent-of-linuxs-wget

        - Windows
        Manually convert the .sh files into .bat, with minor tweaks
    should also work there. Install cygwin and Git for windows. Tree command is built into the OS.

The bash script ```getJigsawJDK.sh``` helps download the latest Jigsaw JDK from Oracle. Please run this once the repo is cloned.

## Must reads
- [The State of the Module System](http://openjdk.java.net/projects/jigsaw/spec/sotms/)
- [JEP 261](http://openjdk.java.net/jeps/261)
- [http://mail.openjdk.java.net/pipermail/adoption-discuss/2015-September/001053.html](http://mail.openjdk.java.net/pipermail/adoption-discuss/2015-September/001053.html) <br/>
- [http://mail.openjdk.java.net/pipermail/adoption-discuss/2015-September/001056.html](http://mail.openjdk.java.net/pipermail/adoption-discuss/2015-September/001056.html)

## Other resources
- [Adopt OpenJDK homepage](https://adoptopenjdk.java.net/)
- [Adopt OpenJDK: Getting Started Kit](http://bit.ly/1NUkPWw)

TODO:
1. Multi Release JAR Support Example.