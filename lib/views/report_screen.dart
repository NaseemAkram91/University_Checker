import 'package:flutter/material.dart';
import 'package:university_checker/widgets/custom_text.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: "Report"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              customField("Faculty Name", "ABC"),
              customField("Position", "English Teacher"),
              customField("Scheduled Time", "10:00-10:30pm"),
              customField("Building", "B"),
              customField("Room", "103"),
              customField("Date", "04/11/2024"),
              customField("Leave & Icons", "VL"),
              customField("Work Hour Pay", "\$100"),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 30)),
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xff0681a0))),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customField(String title, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: CustomText(
            text: title,
            size: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 40,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                hintText: hint,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xff99d9ea),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xff99d9ea),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
