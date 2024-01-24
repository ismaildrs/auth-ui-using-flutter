import 'package:ecommerce_app/view/widgets/button_style_auth.dart';
import 'package:ecommerce_app/view/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

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
                  height: 50,
                ),
                const Text(
                  "Create new \n Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Fill in the form",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 30,
                ),
                MyTextField(
                    hint: "Enter your full name",
                    label: "Name",
                    icon: "person"),
                const SizedBox(
                  height: 15,
                ),
                MyTextField(
                    hint: "Enter your email", label: "Email", icon: "email"),
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
                MyAuthButton(label: "sign up"),
              ],
            ),
          )),
    );
  }
}
