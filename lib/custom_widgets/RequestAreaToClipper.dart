// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomClipperImage extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    path.moveTo(0, 30);
    path.quadraticBezierTo(size.width/4, 40, size.width/2, 20);
    path.quadraticBezierTo(3/4*size.width, 0, size.width, 30);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}