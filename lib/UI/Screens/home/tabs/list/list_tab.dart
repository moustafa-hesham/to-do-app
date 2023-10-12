import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/UI/Screens/home/tabs/list/toDoWidget.dart';
import 'package:todo_app/UI/Utilities/app_color.dart';

class ListTab extends StatelessWidget {
  const ListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      flex: 5, child: Container(color: AppColors.primiary)),
                  Expanded(flex: 5, child: Container(color: AppColors.accent)),
                ],
              ),
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: DateTime.now().add(Duration(days: 365)),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: AppColors.white,
                dayColor: AppColors.primiary,
                activeDayColor: AppColors.primiary,
                activeBackgroundDayColor: AppColors.white,
                dotsColor: AppColors.transparent,
                // selectableDayPredicate: (date) => date.weekday != 5,
                showYears: true,
                locale: 'en_ISO',
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => ToDoWidget(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
