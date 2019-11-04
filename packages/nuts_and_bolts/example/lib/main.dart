import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nuts_and_bolts/nuts_and_bolts.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Nuts and bolts package Demo',
      home: DemoList(),
    );
  }
}

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              print('onTap');
              Navigator.of(context).push(CupertinoPageRoute(
                  title: '$NutsActivityIndicator',
                  builder: (context) {
                    return ActivityIndicatorDemo();
                  }));
            },
            child: Row(
              children: [
                Container(
                  child: NutsActivityIndicator(
                    radius: 25,
                    tickCount: 14,
                    activeTickColor: Colors.red,
                    deactiveTickColor: Colors.black,
                    animationDuration: Duration(milliseconds: 500),
                    relativeWidth: 0.4,
                  ),
                  width: 100,
                  height: 100,
                ),
                Expanded(child: Text('Activity Indicators')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      navigationBar: CupertinoNavigationBar(
        middle: Text('Widgets'),
      ),
    );
  }
}

class ActivityIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: null,
        previousPageTitle: 'Widgets',
        middle: Text('Activity Indicators'),
        actionsForegroundColor: Colors.red,
      ),
      child: SafeArea(
        child: ListView(
          children: [
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
              'We also support the animating option. I guess you could use it to let the user know that your app has crapped its pants?',
              NutsActivityIndicator(
                radius: 15,
                animating: false,
              ),
            ),
            ActivityIndicatorDemoRow(
              'Now, let\'s explore the fun parts of this package. For starters, we can change the colors. Let\'s use red and... Orange?',
              NutsActivityIndicator(
                radius: 25,
                activeTickColor: Colors.amber,
                deactiveTickColor: Colors.red,
              ),
            ),
            ActivityIndicatorDemoRow(
              'BORING. Speed things up by specifying the animation duration. The animation below takes 500 milliseconds to compete (go full circle).',
              NutsActivityIndicator(
                radius: 20,
                activeTickColor: Colors.yellow,
                deactiveTickColor: Colors.black,
                animationDuration: Duration(milliseconds: 500),
              ),
            ),
            ActivityIndicatorDemoRow(
              'Two many ticks (rectangles) in the spinner? If you do not like it, change it!',
              NutsActivityIndicator(
                activeTickColor: Colors.red,
                tickCount: 3,
                radius: 30,
              ),
            ),
            ActivityIndicatorDemoRow(
              'Last thing I show you is how to make the spinner ticks thinner. For all the supported features, check out the API reference.',
              NutsActivityIndicator(
                radius: 50,
                tickCount: 16,
                activeTickColor: Colors.red,
                deactiveTickColor: Colors.black,
                animationDuration: Duration(milliseconds: 750),
                relativeWidth: 0.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActivityIndicatorDemoRow extends StatelessWidget {
  final String description;
  final NutsActivityIndicator indicator;

  const ActivityIndicatorDemoRow(this.description, this.indicator, {Key key})
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
