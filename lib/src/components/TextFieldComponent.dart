import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  TextFieldComponent(
      {@required this.handleChanged,
      @required this.label,
      @required this.isPasswordField,
      this.outlined = false,
      @required this.handleValidator});
  final bool outlined;
  final bool isPasswordField;
  final String label;
  final Function handleChanged;
  final Function handleValidator;

  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: this.isPasswordField,
        validator: (String value) => this.handleValidator(value),
        decoration: InputDecoration(
          labelText: this.label,
          border: outlined == true ? OutlineInputBorder() : null,
        ),
        onChanged: (String userInput) => this.handleChanged(userInput));
  }
}
