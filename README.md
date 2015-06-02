# CatKit

[![Build Status](https://travis-ci.org/jozsef-vesza/CatKit.svg?branch=master)](http://travis-ci.org/jozsef-vesza/CatKit) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) ![Version status](https://img.shields.io/cocoapods/v/CatKit.svg) [![license MIT](http://img.shields.io/badge/license-MIT-orange.png)][mitLink]

![][1]

### What is it?

An iOS framework for downloading placeholder cat images.

Cat sources:

* [placeKitten][2] (already implemented)
* [/r/aww][3] (Work in progress)

### Installation

#### Carthage

````bash
github "jozsef-vesza/CatKit"
````

#### CocoaPods

````ruby
use_frameworks!

pod 'CatKit'
````

### Usage

```swift
CatFetcherService.fetchCatsOfWidth(1000, height: 800, fromSource: .PlaceKitten) { image, error in
    // Display cat image
}
```

### Credits

* Development by [József Vesza][4]
* Naming by [Tamás Deme][5]

[1]: http://i.imgur.com/IP4j2Zt.png
[2]: http://placekitten.com
[3]: http://www.reddit.com/r/aww/
[4]: https://twitter.com/j_vesza
[5]: https://twitter.com/tomzorz_
[mitLink]:http://opensource.org/licenses/MIT