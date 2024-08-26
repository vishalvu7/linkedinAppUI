import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedinapp/pages/onboarding/on_boarding_entity.dart';
import 'package:linkedinapp/pages/onboarding/onboarding_screen_template.dart';
import 'package:linkedinapp/widgets/button.dart';
import 'package:linkedinapp/widgets/linkedin_logo.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingEntity> onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return OnboardingScreenTemplate(
                title: onBoardingData[index].title,
                image: onBoardingData[index].image.toString(),
                index: index);
          }),
    );
  }
}
