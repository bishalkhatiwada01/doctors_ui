import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthapp/home_page.dart';
import 'package:healthapp/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:healthapp/signup_page.dart';

void main() => runApp(MyApp());
//   DevicePreview(
//     enabled: true,
//     builder: (context) => const MyApp(),
//   ),
// );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1290, 2796),
      // minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            colorSchemeSeed: const Color(0xff5a73d8),
            textTheme: GoogleFonts.plusJakartaSansTextTheme(
                Theme.of(context).textTheme),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      // child: const HomePage(),
      // child: const SignupPage(),
      child: const LoginPage(),
    );
  }
}
