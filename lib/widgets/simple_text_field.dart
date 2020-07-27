import 'package:flutter/material.dart';

class SimpleTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final EdgeInsets contentPadding;
  final Function onChanged;
  final bool obscureText;
  final String hintText;

  const SimpleTextField({
    @required this.textEditingController,
    @required this.contentPadding,
    @required this.onChanged,
    @required this.obscureText,
    @required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return TextField(
      controller: textEditingController,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.only(left: 10, right: 10),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
      obscureText: obscureText,
      keyboardType:
          obscureText ? TextInputType.text : TextInputType.emailAddress,
    );
  }
}
