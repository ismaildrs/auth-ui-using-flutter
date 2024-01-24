import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  String hint;
  String label;
  String icon;
  MyTextField(
      {Key? key, required this.hint, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> iconMap = {
      "email": Icons.email,
      "key": Icons.key,
      "person": Icons.person
    };
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(color: Colors.white, fontSize: 15)),
          const SizedBox(
            height: 5,
          ),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                prefixIcon: Icon(
                  iconMap[icon],
                  color: Colors.white,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: hint,
                hintStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w100)),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
