import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';


class MainHeadingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final double? height;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  const MainHeadingText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily = 'medium',
    this.textAlign,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color??Colors.black,
        // fontWeight:fontWeight??FontWeight.w500,
        fontSize: fontSize??12.sp,
        // fontFamily:
        fontWeight: fontWeight?? FontWeight.bold,
        fontFamily: fontFamily,
        height: height,
      ),
    );
  }
}



class AppBarHeadingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  const AppBarHeadingText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color??Colors.black,
          fontWeight:fontWeight??FontWeight.w500,
          fontSize: fontSize??10.sp,
          // fontFamily:
          fontFamily: fontFamily
      ),
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign textAlign;
  final bool underlined;
  const SubHeadingText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.textAlign=TextAlign.start,
    this.underlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color??Colors.black,
          fontWeight:fontWeight??FontWeight.w500,
          fontSize: fontSize??10.sp,
          // fontFamily:
          fontFamily: fontFamily,
        decoration:underlined? TextDecoration.underline:null,
      ),
    );
  }
}

class ParagraphText extends StatelessWidget {
  final String text;
  final double? letterspaceing;
  final double? height;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool underlined;
  const ParagraphText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.letterspaceing,
    this.height,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.underlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
          // height: 1.5,
          color: color??CustomColor.paragraphcolor,
          // fontWeight:fontWeight??FontWeight.w400,
          fontSize: fontSize??8.sp,
          height: height,
          // fontFamily:
          fontFamily: fontFamily,
          decoration:underlined? TextDecoration.underline:null,
          letterSpacing: letterspaceing?? 0,
      ),
    );
  }
}

class headingText extends StatelessWidget {
  final String text;
  final double? letterspaceing;
  final double? height;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;
  final bool underlined;
  const headingText({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 16,
    this.letterspaceing,
    this.height,
    this.fontWeight,
    this.fontFamily = 'semibold',
    this.textAlign,
    this.underlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign??TextAlign.start,
      style: TextStyle(
        // height: 1.5,
          color: color??Colors.black,
          fontWeight:fontWeight??FontWeight.w400,
          fontSize: fontSize??12.sp,
          height: height,
          // fontFamily:
          fontFamily: fontFamily,
          decoration:underlined? TextDecoration.underline:null,
          letterSpacing: letterspaceing?? 0
      ),
    );
  }
}

class CustomDivider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Divider(
      height: 40,
      thickness: 3,
      color: Color(0xFFF2F4FF),
    );
  }
}