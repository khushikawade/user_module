import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.isPassword = false, // Default to false
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        prefixIcon: Icon(widget.prefixIcon),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(),
      ),
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? _obscureText : false,
    );
  }
}
