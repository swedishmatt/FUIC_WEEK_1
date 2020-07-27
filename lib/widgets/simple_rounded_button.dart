import 'package:flutter/material.dart';

class SimpleRoundedButton extends StatelessWidget {
  final double width;
  final Color color;
  final String text;
  final double yPadding;
  final Function onPressed;

  const SimpleRoundedButton({
    this.width,
    @required this.color,
    @required this.text,
    @required this.yPadding,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      child: RaisedButton(
        onPressed: () => onPressed(),
        color: color,
        shape: StadiumBorder(),
        padding: EdgeInsets.only(
          top: yPadding,
          bottom: yPadding,
        ),
        child: Text(
          "$text",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
