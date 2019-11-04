# `nuts_activity_indicator`

> [`dartsidedev`](https://github.com/dartsidedev)

This package is part of the `nuts_and_bolt` package.

The "Nuts and bolts" packages are based on the official [`cupertino`](https://flutter.dev/docs/development/ui/widgets/cupertino) and [`material`](https://flutter.dev/docs/development/ui/widgets/material) widgets with greater customizability. It exposes the nuts and bolts of the original widgets (I'm great at naming things, I know).

The `nuts_activity_indicator` package is based on the [`cupertino` library](https://api.flutter.dev/flutter/cupertino/cupertino-library.html)'s [`CupertinoActivityIndicator`](https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html) widget.

**Do you like this package? ⭐️ Star it on [GitHub](https://github.com/dartsidedev/nuts_and_bolts). 💌 Drop me a message on [LinkedIn](https://www.linkedin.com/in/vince-varga/) 🐦 Tweet me [`@serial_dev`](https://twitter.com/serial_dev).**

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

## Example app

[**The video is much more interesting than the screenshot. Download it here ~1.7 MB.**](https://github.com/dartsidedev/nuts_and_bolts/blob/master/assets/nuts_activity_indicator/nuts_activity_indicator_example_app.mp4?raw=true)

<img src="https://github.com/dartsidedev/nuts_and_bolts/blob/master/assets/nuts_activity_indicator/nuts_activity_indicator_example_app.png?raw=true" alt="Flutter package nuts_activity_indicator" height="600"/>

## Resources

* [Read the source code](https://github.com/dartsidedev/nuts_and_bolts/tree/master/packages/nuts_activity_indicator)
* [Report an issue](https://github.com/dartsidedev/nuts_and_bolts/issues/new)
* [Read the API reference](https://pub.dev/documentation/nuts_activity_indicator)
* [Check out the Flutter example app](https://github.com/dartsidedev/nuts_and_bolts/tree/master/packages/nuts_activity_indicator/example)
* [Learn more about the package on pub.dev](https://pub.dev/packages/nuts_activity_indicator)
* [Ask a question](https://github.com/dartsidedev/nuts_and_bolts/issues/new)

For help getting started with Flutter, view the [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.
