# Proctor

![Lifecycle](https://img.shields.io/osslifecycle/indeedeng/proctor.svg)

Proctor is a A/B testing framework written in Java that enables [data-driven product design](https://engineering.indeedblog.com/talks/data-driven-product-design/) at Indeed.

Proctor consists of data-model, client specification, client loader, matrix builder, java code generator.

**Build Status**
[![Build Status](https://travis-ci.org/indeedeng/proctor.svg?branch=master)](https://travis-ci.org/indeedeng/proctor)

# Features:
- consistent tests across multiple applications
- group assignment adjustments without code deploys
- rule-based group assignment: e.g. US users experience 50% A, 50% B and non-US users are 25% A, 25% B, 25% C, 25% D
- human-readable test format
- forcing of test groups for internal testing
- java code generation for A/B tests groups

# Installation
See [Quick Start](http://indeedeng.github.io/proctor/docs/quick-start) guide

# Example
See [proctor demo](http://www.github.com/indeedeng/proctor-demo)

# Documentation
http://indeedeng.github.io/proctor

## Building documentation locally

```bash
$ git checkout gh-pages
$ gem install bundler
$ bundle install
$ rake clean serve
  => open http://localhost:4000/ in browser
```

# Building

Need to use Java 11 SDK for using gradle:

List installed java JVMs on MacOS:
```bash
$ /usr/libexec/java_home -V
```

Example output:
```
Matching Java Virtual Machines (9):
    17.0.6 (arm64) "Azul Systems, Inc." - "Zulu 17.40.19" /Library/Java/JavaVirtualMachines/jdk17.0.6.jdk/Contents/Home
    11.0.18 (arm64) "Azul Systems, Inc." - "Zulu 11.62.17" /Library/Java/JavaVirtualMachines/jdk11.0.18.jdk/Contents/Home
    11.0.17 (arm64) "Azul Systems, Inc." - "Zulu 11.60.19" /Library/Java/JavaVirtualMachines/jdk11.0.17.jdk/Contents/Home
    11.0.16 (arm64) "Azul Systems, Inc." - "Zulu 11.58.15" /Library/Java/JavaVirtualMachines/jdk11.0.16_8.jdk/Contents/Home
    11.0.15 (arm64) "Azul Systems, Inc." - "Zulu 11.56.19" /Library/Java/JavaVirtualMachines/jdk11.0.15_10.jdk/Contents/Home
    1.8.0_362 (arm64) "Azul Systems, Inc." - "Zulu 8.68.0.21" /Library/Java/JavaVirtualMachines/jdk1.8.0_362.jdk/Contents/Home
    1.8.0_345 (arm64) "Azul Systems, Inc." - "Zulu 8.64.0.19" /Library/Java/JavaVirtualMachines/jdk1.8.0_345.jdk/Contents/Home
    1.8.0_332 (arm64) "Azul Systems, Inc." - "Zulu 8.62.0.19" /Library/Java/JavaVirtualMachines/jdk1.8.0_332.jdk/Contents/Home
    1.8.0_322 (arm64) "Azul Systems, Inc." - "Zulu 8.60.0.21" /Library/Java/JavaVirtualMachines/jdk1.8.0_322.jdk/Contents/Home
```

Set JVM version in MacOS:
```bash
$ export JAVA_HOME=`/usr/libexec/java_home -v 11.0.18`
```

How to Build:

```bash
$ ./gradlew build
```

# Local Install

Run the following gradle command and note the local version from the output:

```bash
$ ./gradlew publish
```

Example output:

```
Calculating version to use for publish ...
Now using version: 0.local.20230711170543

> Task :proctor-common:compileJava
```

To test with proctor-internal and other consumers of proctor OSS within Indeed run the symlink bash script to associate local maven repo with local gradle repo:

```bash
$ ./symlinkproctor.sh
```

After creating the symlink set the proctor version in the build.gradle to version from publish. Example above would be using `0.local.20230711170543`

# Discussion

Use the [indeedeng-proctor-users](https://groups.google.com/d/forum/indeedeng-proctor-users) Q&A forum to ask and answer questions about the use of Proctor.

# Deploying

# Contributing

# See Also (other A/B test frameworks)
- [seatgeek/sixpack](https://github.com/seatgeek/sixpack)
- [bitlove/rollout](https://github.com/bitlove/rollout)
- [maccman/abba](https://github.com/maccman/abba)
- [assaf/vanity](https://github.com/assaf/vanity)

# Code of Conduct
This project is governed by the [Contributor Covenant v 1.4.1](CODE_OF_CONDUCT.md)

# License

[Apache License Version 2.0](https://github.com/indeedeng/proctor/blob/master/LICENSE)
