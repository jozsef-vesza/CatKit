# CatKit

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

![][1]

### What is it?

An iOS framework for downloading placeholder cat images.

Cat sources:

* [placeKitten][2] (already implemented)
* [/r/aww][3] (WIP)

### How to use it?

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