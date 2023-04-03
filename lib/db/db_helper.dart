import 'package:my_tasks/models/task.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database? _db;
  static const String _tableName = "tasks";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String path = await getDatabasesPath() + 'tasks.db';
      _db = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
        print("creating a new one");
        return db.execute(
            'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title STRING, note TEXT, date STRING,startTime STRING, endTime STRING,remind INTEGER, repeat STRING,color INTEGER, isCompleted INTEGER)');
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insert(Task? task) async {
    return await _db?.insert(_tableName, task!.toJson()) ?? 1;
  }

  static Future<List<Map<String, dynamic>>?> query() async {
    return await _db?.query(_tableName);
  }

  static delete(Task task) async {
    return await _db!.delete(_tableName, where: 'id=?', whereArgs: [task.id]);
  }

  static update(int id) async {
    return await _db!.rawUpdate('''
    UPDATE tasks SET isCompleted =? WHERE id =?
''', [1, id]);
  }
}
