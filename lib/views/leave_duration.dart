import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:university_checker/widgets/custom_text.dart';

class LeaveDuration extends StatelessWidget {
  const LeaveDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: "Leave Duration"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        child: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2000, 10, 05),
            lastDay: DateTime.utc(2050, 08, 12)),
      ),
    );
  }
}
