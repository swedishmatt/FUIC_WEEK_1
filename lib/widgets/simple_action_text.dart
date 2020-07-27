import 'package:flutter/material.dart';

class SimpleActionText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final Function onTap;

  const SimpleActionText({
    @required this.text,
    @required this.fontSize,
    @required this.color,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GestureDetector(
      onTap: () => onTap(),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
