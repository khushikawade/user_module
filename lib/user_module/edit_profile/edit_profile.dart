import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:user_module/common_widgets/navigation.dart';
import 'package:user_module/common_widgets/text.dart';
import 'package:user_module/constant/images.dart';
import 'package:user_module/user_module/signUp/signup.dart';

import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_input_fields.dart';
import '../../constant/common_text.dart';

class ed extends StatefulWidget {
  const ed({super.key});

  @override
  State<ed> createState() => _edState();
}

class _edState extends State<ed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(CustomImages.logoImage),
                CustomTextField(
                  labelText: CustomText.email,
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                SizedBox(height: 16.0),
                CustomTextField(
                  labelText: CustomText.password,
                  prefixIcon: Icons.lock,
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                SizedBox(height: 16.0),
                CustomButton(
                  label: CustomText.login,
                  onPressed: () {
                    print("Button Pressed!");
                    push(context: context, screen: SignupView());
                  },
                ),
                SizedBox(height: 8.0),
                ParagraphText(text: "Forgotten Password?", color: Colors.black),
              ],
            ),
          ),
          // Bottom Button
          Padding(
            padding: EdgeInsets.only(bottom: 20.0), // Padding for spacing from the bottom
            child: CustomButton(
              label: "Button at Bottom",
              onPressed: () {
                print("Bottom Button Pressed!");
              },
            ),
          ),
        ],
      ),
    ),
    );
    ;
  }
}
