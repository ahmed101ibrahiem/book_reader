import 'package:book_reader/core/utils/assets_data.dart';
import 'package:book_reader/features/splash/presentation/widgets/splash_text_animation.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> imgAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(begin: const Offset(-0.5,8), end: Offset.zero)
        .animate(animationController);
    imgAnimation = Tween<Offset>(begin: const Offset(0.2,-2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: imgAnimation,
          builder: (context, _) =>
           SlideTransition(
            position: imgAnimation,
              child: Image.asset(AssetsData.logoImg)),
        ),
        const SizedBox(
          height: 8.0,
        ),
        SplashTextAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
