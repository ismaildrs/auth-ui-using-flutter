import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAuthButton extends StatelessWidget {
  String label;
  MyAuthButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double devicewidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: Colors.white)),
        width: devicewidth - 30,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        )),
      ),
    );
  }
}
