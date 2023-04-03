import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:my_tasks/controllers/task_controller.dart';
import 'package:my_tasks/ui/add_class.dart';
import 'package:my_tasks/ui/theme.dart';
import 'package:my_tasks/ui/widgets/custombutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  Widget? page;
  DateTime _selectedDate = DateTime.now();
  final _taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _addTopBar(),
          _addTaskBar(),
          _addDatePicker(),
          _showTasks(),
        ],
      ),
    );
  }

  _addTopBar() {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Image(
              image: AssetImage("assets/images/profile.jpg"),
              width: 40,
            )
          ],
        ));
  }

  _addTaskBar() {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: subHeadingStyle,
                ),
                Text(
                  "Today ",
                  style: headingStyle,
                )
              ],
            ),
            CustomButton(
                label: "Add Task", onTap: () => Get.to(() => const AddClass()))
          ],
        ));
  }

  _addDatePicker() {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 65,
        initialSelectedDate: DateTime.now(),
        selectionColor: Colors.blue,
        selectedTextColor: Colors.white,
        dateTextStyle: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey)),
        dayTextStyle: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey)),
        monthTextStyle: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey)),
        onDateChange: (date) {
          _selectedDate = date;
        },
      ),
    );
  }

  _showTasks() {
    return Expanded(
      child: Obx(() {
        return ListView.builder(
            itemCount: _taskController.taskList.length,
            itemBuilder: (_, context) {
              print(_taskController.taskList.length);
              return Container(
                width: 100,
                height: 50,
                color: Colors.green,
                margin: const EdgeInsets.only(bottom: 10),
              );
            });
      }),
    );
  }
}
