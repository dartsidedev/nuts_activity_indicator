## `nuts_activity_indicator`

> Highly customizable activity indicator (spinner) for your Flutter apps based on the cupertino package.

The `nuts_activity_indicator` package is based on the [`cupertino` library](https://api.flutter.dev/flutter/cupertino/cupertino-library.html)'s
[`CupertinoActivityIndicator`](https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html) widget
and it offers great customizability. You can customize:

* the colors 🧡❤️
* the width, size and the number of tickers 📏
* the speed of the spinning 🏃‍♂️💨

[![nuts_activity_indicator](https://img.shields.io/pub/v/nuts_activity_indicator?label=nuts_activity_indicator&logo=dart)](https://pub.dev/packages/nuts_activity_indicator 'See nuts_activity_indicator package info on pub.dev') [![Published by dartside.dev](https://img.shields.io/static/v1?label=Published%20by&message=dartside.dev&logo=dart&logoWidth=30&color=40C4FF&labelColor=1d599b&labelWidth=100)](https://pub.dev/publishers/dartside.dev/packages) [![GitHub Stars Count](https://img.shields.io/github/stars/dartsidedev/nuts_activity_indicator?logo=github)](https://github.com/dartsidedev/nuts_activity_indicator 'Star me on GitHub!')

<img src="https://github.com/dartsidedev/nuts_and_bolts/blob/master/assets/nuts_activity_indicator/nuts_activity_indicator_example_app.gif?raw=true" alt="Flutter package nuts_activity_indicator" height="600"/>

## Important links

* [Read the source code and **star the repo** on GitHub](https://github.com/dartsidedev/nuts_activity_indicator)
* [Open an issue on GitHub](https://github.com/dartsidedev/nuts_activity_indicator/issues)
* [See package on pub.dev](https://pub.dev/packages/nuts_activity_indicator)
* [Read the docs on pub.dev](https://pub.dev/documentation/nuts_activity_indicator/latest/)

**If you enjoy using this package, a thumbs-up on [pub.dev](https://pub.dev/packages/nuts_activity_indicator) would be highly appreciated! 👍💙**

## Usage

[Read the API reference](https://pub.dev/documentation/nuts_activity_indicator) to see all currently supported parameters.

```dart
// Add nuts_activity_indicator as dependency in your pubspec.
// flutter pub add nuts_activity_indicator

// Then import the package:
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

// And use the widget:
final spinner = NutsActivityIndicator(
    activeColor: Colors.indigo,
    inactiveColor: Colors.blueGrey,
    tickCount: 24,
    relativeWidth: 0.4,
    radius: 60,
    startRatio: 0.7,
    animationDuration: Duration(milliseconds: 500),
);
```
