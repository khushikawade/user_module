import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_module/common_widgets/custom_sizedbox.dart';
import 'package:user_module/constant/images.dart';

import '../../common_widgets/custom_button.dart';
import '../../common_widgets/custom_input_fields.dart';
import '../../constant/common_text.dart';
import '../../common_widgets/custom_sizedbox.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Input Fields with Icons'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(CustomImages.logoImage),
              // const SizedBox(height: 50.h),
              // Email TextField
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
                },
                backgroundColor: Colors.blue,
                textColor: Colors.white,
                borderRadius: 12.r,
                padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
                fontSize: 18.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
