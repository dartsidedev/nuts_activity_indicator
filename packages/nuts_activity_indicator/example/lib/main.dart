import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'NutsActivityIndicator Demo',
      home: ActivityIndicatorDemo(),
      theme: CupertinoThemeData(primaryColor: Colors.red),
    );
  }
}

class ActivityIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('nuts_activity_indicator'),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                'For all the supported features, check out the API reference.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ActivityIndicatorDemoRow(
              'Without any customization, the activity indicator will look like the "standard" activity indicator from the Flutter cupertino library.',
              NutsActivityIndicator(),
            ),
            ActivityIndicatorDemoRow(
              'We can use the "radius" named parameter make the indicators a bit bigger. So far nothing extraordinary, the cupertino activity indicator can do that too.',
              NutsActivityIndicator(
                radius: 20,
              ),
            ),
            ActivityIndicatorDemoRow(
              'We also support the animating option. Set to false to let the user know that your app has crapped its pants, I guess?',
              NutsActivityIndicator(
                radius: 15,
                animating: false,
              ),
            ),
            ActivityIndicatorDemoRow(
              'Now, let\'s explore the fun parts of this package. For starters, we can change the colors. Let\'s use red and... Orange?',
              NutsActivityIndicator(
                radius: 25,
                activeColor: Colors.amber,
                inactiveColor: Colors.red,
              ),
            ),
            ActivityIndicatorDemoRow(
              'BORING. Speed things up by specifying the animation duration. The animation below takes 300 milliseconds to compete (go full circle). By default, this duration is 1 second.',
              NutsActivityIndicator(
                radius: 20,
                activeColor: Colors.yellow,
                inactiveColor: Colors.black,
                animationDuration: Duration(milliseconds: 300),
              ),
            ),
            ActivityIndicatorDemoRow(
              'Want to make the rectangles shorter relative to the size of the widget? Use the startRatio and endRatio parameters.',
              NutsActivityIndicator(
                activeColor: Colors.indigo,
                inactiveColor: Colors.blueGrey,
                tickCount: 24,
                relativeWidth: 0.4,
                radius: 60,
                startRatio: 0.7,
              ),
            ),
            ActivityIndicatorDemoRow(
              'Two many ticks (rectangles) in the spinner? If you do not like it, change it by passing the tickCount parameter! This example uses 3 rectangles to draw the spinner. The default value is 12.',
              NutsActivityIndicator(
                activeColor: Colors.red,
                tickCount: 3,
                radius: 30,
              ),
            ),
            ActivityIndicatorDemoRow(
              'Last thing I show you is how to make the spinner ticks thinner. Use the relativeWidth parameter.',
              NutsActivityIndicator(
                radius: 50,
                tickCount: 16,
                activeColor: Colors.red,
                inactiveColor: Colors.black,
                animationDuration: Duration(milliseconds: 750),
                relativeWidth: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityIndicatorDemoRow extends StatelessWidget {
  final String description;
  final NutsActivityIndicator indicator;

  const ActivityIndicatorDemoRow(this.description, this.indicator, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Text(description),
        ),
        indicator,
        SizedBox(height: 16),
        Divider(),
      ],
    );
  }
}
