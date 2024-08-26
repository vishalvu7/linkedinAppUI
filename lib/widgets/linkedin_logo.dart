import 'package:flutter/material.dart';

class LinkedinLogo extends StatelessWidget {
  const LinkedinLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 15,
          ),
          const Text(
            "Linked",
            style: TextStyle(
                color: Color(0xFF0077B5),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            "assets/logo/linkedin.png",
            height: 30,
          ),
        ],
      ),
    );
  }
}
