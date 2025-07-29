import 'package:flutter/material.dart';

class Spacing {
  final BuildContext context;
  final double screenWidth;
  final double screenHeight;

  Spacing(this.context)
      : screenWidth = MediaQuery.of(context).size.width,
        screenHeight = MediaQuery.of(context).size.height;

  // Espaçamento base
  double get base => screenHeight * 0.02;

  // SizedBox vertical e horizontal
  SizedBox vSpace() => SizedBox(height: base);
  SizedBox hSpace() => SizedBox(width: base);

  // Padding padrão
  EdgeInsets get paddingAll => EdgeInsets.all(base);
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: base);
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: base);
}
