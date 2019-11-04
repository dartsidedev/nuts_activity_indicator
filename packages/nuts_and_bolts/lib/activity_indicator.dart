import 'dart:math' as math;

import 'package:flutter/widgets.dart';

/// A highly customizable activity indicator (spinner)
/// based on the iOS-style activity indicator from the
/// `cupertino` package.
///
/// Key takeaways from [Apple Human Interface Guidelines on Activity Indicators](https://developer.apple.com/design/human-interface-guidelines/ios/controls/progress-indicators/#activity-indicators)
/// that are relevant to the [NutsActivityIndicator] class:
///
/// * use activity indicator only when activity cannot be quantified
/// (for example remaining time, task count, data size).
/// * keep it moving: only disable [animating] if the process stalls.
///
/// For more information, see
/// * [Flutter `cupertino` library `CupertinoActivityIndicator` class](https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html)
/// * [Apple Human Interface Guidelines on Activity Indicators](https://developer.apple.com/design/human-interface-guidelines/ios/controls/progress-indicators/#activity-indicators)
class NutsActivityIndicator extends StatefulWidget {
  /// Whether the activity indicator is running its animation.
  ///
  /// Defaults to true.
  final bool animating;

  /// Radius of the activity indicator.
  ///
  /// Defaults to 10px. Must be positive and cannot be null.
  final double radius;

  /// The count of rectangles the activity indicator has.
  ///
  /// The activity indicator (spinner) is made up of multiple small
  /// rectangles, "ticks", and this number specifies how many of
  /// these small ticks should be painted in the widget.
  ///
  /// Defaults to 12. Must be positive and cannot be null.
  final int tickCount;

  /// The active color of the small rectangles within the activity indicator.
  ///
  /// The activity indicator (spinner) contains [tickCount] stationary rectangles
  /// and these ticks' colors are animated between the [activeTickColor] and
  /// [deactiveTickColor] colors, thus creating a perceived rotation of the object.
  ///
  /// Defaults to a grey color, #XYZ??? TODO
  final Color activeTickColor;

  /// The deactive color of the small rectangles within the activity indicator.
  ///
  /// The activity indicator (spinner) contains [tickCount] stationary rectangles
  /// and these ticks' colors are animated between the [activeTickColor] and
  /// [deactiveTickColor] colors, thus creating a perceived rotation of the object.
  ///
  /// Defaults to a grey color, #XYZ??? TODO
  final Color deactiveTickColor;

  /// The time in which the activity indicator's animation finishes.
  ///
  /// The animation takes a circle by fading between the active and
  /// inactive colors for each small tick.
  ///
  /// Defaults to 1 second.
  final Duration animationDuration;

  /// TODO: what is this width value really?
  final double relativeWidth;

  /// Creates a highly customizable activity indicator.
  const NutsActivityIndicator({
    Key key,
    this.animating = true,
    this.radius = 10,
    this.tickCount = 12,
    this.activeTickColor = const Color(0xFF9D9D9D),
    this.deactiveTickColor = const Color(0xFFE5E5EA),
    this.animationDuration = const Duration(seconds: 1),
    this.relativeWidth = 1,
  }) : super(key: key);

  @override
  _NutsActivityIndicatorState createState() => _NutsActivityIndicatorState();
}

class _NutsActivityIndicatorState extends State<NutsActivityIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    if (widget.animating) {
      _animationController.repeat();
    }
  }

  @override
  void didUpdateWidget(NutsActivityIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.animating != oldWidget.animating) {
      if (widget.animating) {
        _animationController.repeat();
      } else {
        _animationController.stop();
      }
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.radius * 2,
      width: widget.radius * 2,
      child: CustomPaint(
        painter: _NutsActivityIndicatorPainter(
          animationController: _animationController,
          radius: widget.radius,
          tickCount: widget.tickCount,
          activeTickColor: widget.activeTickColor,
          deactiveTickColor: widget.deactiveTickColor,
          relativeWidth: widget.relativeWidth,
        ),
      ),
    );
  }
}

class _NutsActivityIndicatorPainter extends CustomPainter {
  final int _halfTickCount;
  final Animation<double> animationController;
  final Color activeTickColor;
  final Color deactiveTickColor;
  final double relativeWidth;
  final int tickCount;
  final double radius;
  final RRect _tickRRect;

  _NutsActivityIndicatorPainter({
    this.radius,
    this.tickCount,
    this.animationController,
    this.activeTickColor,
    this.deactiveTickColor,
    this.relativeWidth,
  })  : _halfTickCount = tickCount ~/ 2,
        _tickRRect = RRect.fromLTRBXY(
          -radius,
          relativeWidth * radius / 10,
          -radius / 2,
          -relativeWidth * radius / 10,
          1,
          1,
        ),
        super(repaint: animationController);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    canvas
      ..save()
      ..translate(size.width / 2, size.height / 2);
    final activeTick = (tickCount * animationController.value).floor();
    for (int i = 0; i < tickCount; ++i) {
      paint.color = Color.lerp(
        activeTickColor,
        deactiveTickColor,
        ((i + activeTick) % tickCount) / _halfTickCount,
      );
      canvas
        ..drawRRect(_tickRRect, paint)
        ..rotate(-math.pi * 2 / tickCount);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(_NutsActivityIndicatorPainter oldPainter) {
    return oldPainter.animationController != animationController;
  }
}
