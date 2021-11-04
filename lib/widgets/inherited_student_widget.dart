import 'dart:async';
import 'package:flutter/material.dart';
import 'package:inherited_widget_app/additional_classes/student.dart';

class InheritedStudents extends InheritedWidget {
  InheritedStudents({
    Key? key,
    required Widget child,
    required List<Student> list,
  })  : listOfStudents = list,
        super(key: key, child: child);

  final StreamController<Student> streamController =
      StreamController<Student>();
  Stream<Student> get currentStudent => streamController.stream;

  final List<Student> listOfStudents;

  void choose(int ind) {
    streamController.add(listOfStudents[ind]);
  }

  static InheritedStudents of(BuildContext context) {
    final InheritedStudents? result =
        context.dependOnInheritedWidgetOfExactType<InheritedStudents>();
    assert(result != null, 'No InheritedStudents found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return this != oldWidget;
  }
}
