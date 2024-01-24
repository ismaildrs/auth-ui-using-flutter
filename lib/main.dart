import 'package:ecommerce_app/view/pages/loginpage.dart';
import 'package:ecommerce_app/view/pages/signpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Ecommerce App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        shadowColor: Colors.black38,
      ),
      initialRoute: "/login",
      getPages: [
        GetPage(name: "/login", page: () => const LoginPage()),
        GetPage(name: "/sign", page: () => const SignPage()),
      ],
    );
  }
}
