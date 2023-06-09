import 'package:get/get.dart';
import 'package:my_tasks/db/db_helper.dart';
import 'package:my_tasks/models/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    getTasks();
    super.onReady();
  }

  var taskList = <Task>[].obs;

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task!);
  }

  void getTasks() async {
    List<Map<String, dynamic>>? tasks = await DBHelper.query();
    taskList
        .assignAll(tasks?.map((data) => Task.fromJson(data)).toList() ?? []);
  }
}
