import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(text: "BC Mobile Pro"),
            CustomText(text: "University Checker"),
          ],
        ),
      ),
    );
  }
}
