import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/custom_text.dart';

class FaceVerification extends StatelessWidget {
  const FaceVerification({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: mq.height * 0.3,
              width: mq.width * 0.45,
              decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black),
                  image: DecorationImage(
                      image: AssetImage("assets/id.jpg"), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomText(text: "Stick Your Id Photo"),
            const SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Make Scure Your Face Fit In\n The Scanner",
              size: 18,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {},
        child: const Text(
          "Need Any Help?",
          style: TextStyle(
              color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
