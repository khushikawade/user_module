import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController? controller;
  final String? errorText;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.controller,
    this.errorText, // Default to false
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      decoration: InputDecoration(
        errorText: widget.errorText,
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontSize: 8.sp,
        ),
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
