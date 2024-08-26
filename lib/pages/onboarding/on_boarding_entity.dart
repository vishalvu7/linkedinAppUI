class OnBoardingEntity {
  final String? image;
  final String title;

  OnBoardingEntity({required this.image, required this.title});

  static final List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
        image: "assets/onboarding_img/onboarding1.png",
        title: "Find and land your next job"),
    OnBoardingEntity(
        image: "assets/onboarding_img/onboarding2.png",
        title: "build your network on the go"),
    OnBoardingEntity(
        image: "assets/onboarding_img/onboarding3.png",
        title: "Stay ahead with curated content \nfor your career"),
  ];
}
