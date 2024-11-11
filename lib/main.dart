import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:user_module/user_module/change_password/change_password_model.dart';
import 'package:user_module/user_module/edit_profile/edit_profile_model.dart';
import 'package:user_module/user_module/forgot_password/forgot_password_model.dart';
import 'package:user_module/user_module/login/login.dart';
import 'package:user_module/user_module/login/login_model.dart';
import 'package:user_module/user_module/signUp/signup_model.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginModel()),
        ChangeNotifierProvider(create: (_) => SignupModel()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordModel()),
        ChangeNotifierProvider(create: (_) => ChangePasswordModel()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordModel()),
        ChangeNotifierProvider(create: (_) => EditProfileModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(375, 812),
        minTextAdapt: true,
         builder: (context, child) {
          return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme()
      
        ),
        home:  const LoginView(),
      );
         }
      // child: 
    );
  }
}

