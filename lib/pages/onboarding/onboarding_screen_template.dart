import 'package:flutter/material.dart';
import 'package:linkedinapp/pages/onboarding/on_boarding_entity.dart';
import 'package:linkedinapp/widgets/button.dart';
import 'package:linkedinapp/widgets/linkedin_logo.dart';

class OnboardingScreenTemplate extends StatelessWidget {
  final String title;
  final String image;
  final int index;

  const OnboardingScreenTemplate(
      {super.key,
      required this.title,
      required this.image,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const LinkedinLogo(),
              const SizedBox(
                height: 10,
              ),
              Image.asset(image),
              const SizedBox(
                height: 20,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade800),
                        color: index == 0 ? Colors.black : Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade800),
                        color: index == 1 ? Colors.black : Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade800),
                        color: index == 2 ? Colors.black : Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  borderColor: Colors.transparent,
                  isImage: false,
                  bgColor: Color(0xFF0077B5),
                  title: "Join now",
                  titleColor: Colors.white),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  bgColor: Colors.white,
                  title: "Join with Google",
                  titleColor: Colors.black),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sign In",
                style: TextStyle(
                    color: Color(0xFF0077B5),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
