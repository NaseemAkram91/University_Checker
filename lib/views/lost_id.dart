import 'package:flutter/material.dart';
import 'package:university_checker/main.dart';
import '../widgets/custom_text.dart';

class LostId extends StatelessWidget {
  const LostId({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(text: "Lost Id"),
          SizedBox(
            height: mq.height * 0.02,
          ),
          CustomText(
            text: "In Case Of Lost Id Please\nUse Voice Recognition",
            fontWeight: FontWeight.w400,
            size: 18,
          ),
          SizedBox(
            height: mq.height * 0.08,
          ),
          SizedBox(
            width: double.infinity,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset("assets/voice.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
