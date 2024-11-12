import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/common_text.dart';
import '../../constant/images.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(),
            Image.asset(CustomImages.instraLogo), // Main logo at the center
            const Spacer(), // Adds space to push content to the bottom
            Text(CustomText.from, style: TextStyle(fontSize: 10.sp),), // "From" text
            // Smaller meta image at the bottom
            Image.asset(
              CustomImages.infinityMeta,
              width: 100.w, // Adjust width as needed
              height: 30.h, // Adjust height as needed
            ),
          ],
        ),
      ),
    );
  }
}
