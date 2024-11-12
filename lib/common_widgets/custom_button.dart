import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

   CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = CustomColor.primaryColor,
    this.borderColor =CustomColor.transparent,
    this.textColor =CustomColor.white,
    this.borderRadius,
    this.padding ,
    this.fontSize ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding?? EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius??25.r),
          border: Border.all(
            color: borderColor, // Specify the color you want for the border
             // Set the width of the border
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize??10.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
