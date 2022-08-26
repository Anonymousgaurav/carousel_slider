import 'dart:ui';

import 'package:aish_flutter_test/core/media/media.dart';
import 'package:flutter/material.dart';

enum TypeFile { png, jpg, jpeg, svg, mp4, webm }

class ShowMedia extends StatelessWidget {
  const ShowMedia(
    this.image, {
    Key? key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.color,
    this.fit,
  }) : super(key: key);

  final MediaAssets image;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Image.asset(image.patch, color: color, fit: BoxFit.cover),
    );
  }
}
