import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  task2().then((value) => task3(value));
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);
  String result = 'none';
  await Future.delayed(duration, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String taskData) {
  String result = 'task 3 data';
  print('Task 3 complete $taskData');
}
