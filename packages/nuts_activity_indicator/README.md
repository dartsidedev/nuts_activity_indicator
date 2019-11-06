# `nuts_activity_indicator`

> [`dartsidedev`](https://github.com/dartsidedev)

[![Pub](https://img.shields.io/pub/v/nuts_activity_indicator.svg)](https://pub.dev/packages/nuts_activity_indicator)


**The `nuts_activity_indicator` package is based on the [`cupertino` library](https://api.flutter.dev/flutter/cupertino/cupertino-library.html)'s [`CupertinoActivityIndicator`](https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html) widget and it offers great customizability. You can customize, for example, the color, the width and the number of the rectangles that make up the activity indicator, the speed of spinning, etc...**

```dart
NutsActivityIndicator(
    radius: 33,
    activeColor: Colors.indigo,
    inactiveColor: Colors.red,
    tickCount: 11,
    startRatio: 0.55,
    animationDuration: Duration(milliseconds: 123),
),
```

<img src="https://github.com/dartsidedev/nuts_and_bolts/blob/master/assets/nuts_activity_indicator/nuts_activity_indicator_example_app.png?raw=true" alt="Flutter package nuts_activity_indicator" height="600"/>

[**The video is much more interesting than the screenshot. Download it here ~1.7 MB.**](https://github.com/dartsidedev/nuts_and_bolts/blob/master/assets/nuts_activity_indicator/nuts_activity_indicator_example_app.mp4?raw=true)

**Do you like this package?**

* ⭐️ Star it on [GitHub](https://github.com/dartsidedev/nuts_and_bolts)


This package is also part of the [`nuts_and_bolts`](https://pub.dev/packages/nuts_and_bolts) package.

The "Nuts and bolts" packages include highly customizable widgets that are based on the official [`cupertino`](https://flutter.dev/docs/development/ui/widgets/cupertino) and/or [`material`](https://flutter.dev/docs/development/ui/widgets/material). `Nuts*` widgets expose the nuts and bolts of the original widgets (I'm great at naming things, I know).

Even though the official `material` and `cupertino` libraries are great and they are a safe and sane default option, in some cases, you might want to change and tweak them for your app. In most cases, these tweaks are not exposed to you, so you cannot change much about their widgets (which is, again, fine for 95% of the developers). [`nuts_and_bolts`](https://pub.dev/packages/nuts_and_bolts) widgets aim to be the customizable versions of the official widgets.


## Usage

1. Add `nuts_activity_indicator` as dependency in your `pubspec.yaml`.
2. Import the package in the file where you would like to use the activity indicator.

    ```dart
    import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';
    ```

3. Use the widget. [Read the API reference](https://pub.dev/documentation/nuts_activity_indicator) to see all currently supported parameters.

```dart
NutsActivityIndicator(
    activeColor: Colors.indigo,
    inactiveColor: Colors.blueGrey,
    tickCount: 24,
    relativeWidth: 0.4,
    radius: 60,
    startRatio: 0.7,
    animationDuration: Duration(milliseconds: 500),
),
```

## Resources

* [Read the source code](https://github.com/dartsidedev/nuts_and_bolts/tree/master/packages/nuts_activity_indicator)
* [Report an issue](https://github.com/dartsidedev/nuts_and_bolts/issues/new)
* [Read the API reference](https://pub.dev/documentation/nuts_activity_indicator)
* [Check out the Flutter example app](https://github.com/dartsidedev/nuts_and_bolts/tree/master/packages/nuts_activity_indicator/example)
* [Learn more about the package on pub.dev](https://pub.dev/packages/nuts_activity_indicator)
* [Ask a question](https://github.com/dartsidedev/nuts_and_bolts/issues/new)

For help getting started with Flutter, view the [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.
