// import 'package:flutter/animation.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';

class RisingImage extends StatelessWidget {
  final int duration;
  final String imageSrc;
  const RisingImage(
      {required this.duration, required this.imageSrc, super.key});

  @override
  Widget build(BuildContext context) {
    return MirrorAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: Duration(seconds: duration),
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(imageSrc),
            opacity: value,
          )),
        );
      },
    );
  }
}
