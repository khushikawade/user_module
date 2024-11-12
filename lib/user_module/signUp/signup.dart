import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_module/common_widgets/custom_button.dart';
import 'package:user_module/common_widgets/custom_input_fields.dart';
import 'package:user_module/common_widgets/navigation.dart';
import 'package:user_module/common_widgets/text.dart';
import 'package:user_module/constant/colors.dart';
import 'package:user_module/constant/images.dart';

import '../../constant/custom_sizedbox.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg44.jpg'), // Replace with your image asset path
            fit: BoxFit.cover, // Adjusts how the image should fit the container
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSizedBox32,
              MainHeadingText(text: "What's your mobile number ?",fontSize: 12.sp,),
              vSizedBox4,
              ParagraphText(
                fontSize: 8.sp,
                  text:
                  "Enter the mobile number on which you can be contacted. No one will see this on your profile."),
              vSizedBox16,
              CustomTextField(labelText: "Mobile Number", prefixIcon: Icons.call),
              vSizedBox8,
              ParagraphText(
                  fontSize: 8.sp,
                  text:
                  "Enter the mobile number on which you can be contacted. No one will see this on your profile."),
              vSizedBox32,
              CustomButton(
                label: "Next",
                onPressed: () {
                  print("Button Pressed!");
                  push(context: context, screen: SignupView());
                },


              ),
              vSizedBox16,
              CustomButton(
                label: "Signup with email address",
                onPressed: () {
                  print("Button Pressed!");
                  push(context: context, screen: SignupView());
                },
                backgroundColor: Colors.transparent,
                borderColor: CustomColor.bordercolor,
                textColor: Colors.grey,

              ),
            ],
          ),
        ),
      ),
    );

  }
}
