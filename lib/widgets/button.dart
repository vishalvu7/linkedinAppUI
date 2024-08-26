import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final String title;
  final Color titleColor;
  bool? isImage;
  Image? iconImage;
  Color? borderColor;

  ButtonWidget(
      {super.key,
      required this.bgColor,
      required this.title,
      required this.titleColor,
      this.isImage = true,
      this.iconImage,
      this.borderColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(width: 0.5, color: borderColor!)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isImage == true
                ? Image.asset(
                    "assets/google_icon/google.png",
                    height: 25,
                  )
                : const SizedBox.shrink(),
            SizedBox(
              width: isImage == true ? 8 : 0,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                title,
                style:
                    TextStyle(color: titleColor, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
