import 'package:flame/effects.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flame Effects Demo'),
        ),
        body: Center(
          child: AnimatedWidget(),
        ),
      ),
    );
  }
}

class AnimatedWidget extends StatefulWidget {
  @override
  _AnimatedWidgetState createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget> {
  late OpacityEffect customOpacityEffect;
  late ColorEffect customColorEffect;

  @override
  void initState() {
    super.initState();

    // Opacity effect
    customOpacityEffect = OpacityEffect.fadeOut(
      EffectController(
        duration: 0.6,
        reverseDuration: 0.6,
        infinite: true,
      ),
    );

    // Color effect
    customColorEffect = ColorEffect(
      Colors.blue,
      EffectController(
        duration: 0.8,
        reverseDuration: 0.8,
        infinite: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: customColorEffect.color, // Example usage of color effect
      ),
      child: Opacity(
        opacity: customOpacityEffect.opacity, // Example usage of opacity effect
        child: Center(
          child: Text(
            'Hello Flame!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

extension on OpacityEffect {
  get opacity => null;
}
