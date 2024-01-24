import 'package:ecommerce_app/view/widgets/button_style_auth.dart';
import 'package:ecommerce_app/view/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff000000),
            Color(0xff03002e),
            Color(0xff02006c),
            Color(0xff3876BF),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          height: deviceHeight,
          width: deviceWidth,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyTextField(
                  hint: "Enter your email",
                  label: "Email",
                  icon: "email",
                ),
                const SizedBox(
                  height: 15,
                ),
                MyTextField(
                    hint: "Enter your password",
                    label: "Password",
                    icon: "key"),
                const SizedBox(
                  height: 30,
                ),
                MyAuthButton(label: "sign in"),
              ],
            ),
          )),
    );
  }
}
