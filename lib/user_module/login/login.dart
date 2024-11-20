import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:user_module/common_widgets/custom_sizedbox.dart';
import 'package:user_module/common_widgets/navigation.dart';
import 'package:user_module/common_widgets/text.dart';
import 'package:user_module/constant/colors.dart';
import 'package:user_module/constant/images.dart';
import 'package:user_module/user_module/signUp/signup.dart';

import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_input_fields.dart';
import '../../constant/common_text.dart';
import '../../constant/custom_sizedbox.dart';
// import '../../common_widgets/custom_sizedbox.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32.h),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(CustomImages.logoImage),
                  CustomTextField(
                    labelText: CustomText.email,
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  vSizedBox16,
                  // Password TextField
                  CustomTextField(
                    labelText: CustomText.password,
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    isPassword: true, // Set this to true to show visibility toggle
                  ),
                  vSizedBox16,
                  CustomButton(
                    label: CustomText.login,
                    onPressed: () {
                      print("Button Pressed!");
                      push(context: context, screen: SignupView());

                    },
                  ),
                  vSizedBox8,
                  ParagraphText(text: "Forgotten Password ?",color: Colors.black,)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0), // Padding for spacing from the bottom
              child: Column(
                children: [
                  CustomButton(
                    label: "Create a new account",
                    onPressed: () {
                      print("Bottom Button Pressed!");
                    },
                    backgroundColor: CustomColor.primaryColor.withAlpha(40),
                    borderColor: CustomColor.primaryColor,
                    textColor: CustomColor.primaryColor,
                  ),
                  Image.asset(CustomImages.metaImg,height: 30.h,)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
