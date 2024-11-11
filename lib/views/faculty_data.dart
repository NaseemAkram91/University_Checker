import 'package:flutter/material.dart';
import 'package:university_checker/widgets/custom_text.dart';

class FacultyData extends StatelessWidget {
  const FacultyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Faculty Data"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  button("Report", () {}),
                  button("Leave\nDuration", () {})
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        subButton("Present", "PR"),
                        subButton("Early Dismissal", "ED"),
                        subButton("Sick Leave", "SL"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        subButton("Absent", "AB"),
                        subButton("OutSide Class", "OC"),
                        subButton("Vacation Leave", "VL")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        subButton("Early Class", "EC"),
                        subButton("Late Class", "LC"),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget button(String text, VoidCallback onTap) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff0681a0),
              ),
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              child: Text(
                textAlign: TextAlign.center,
                text,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ));
  }

  Widget subButton(String title, String btnText) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: const Color(0xff99d9ea),
              border: Border.all(width: 5, color: Colors.black54)),
          child: Text(
            btnText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
