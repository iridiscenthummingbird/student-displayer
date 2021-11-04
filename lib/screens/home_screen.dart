import 'package:flutter/material.dart';
import 'package:inherited_widget_app/additional_classes/student.dart';
import 'package:inherited_widget_app/widgets/choosen_student_widget.dart';
import 'package:inherited_widget_app/widgets/inherited_student_widget.dart';
import 'package:inherited_widget_app/widgets/list_of_students_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Student> listInit() {
    return [
      Student(1, "Hamza", "Jeffery", Icons.favorite),
      Student(2, "Omar", "Clemons", Icons.cloud),
      Student(3, "Patience", "Foreman", Icons.surfing),
      Student(4, "Ajwa", "Brock", Icons.wb_sunny),
      Student(5, "Selena", "Rush", Icons.mood_outlined),
      Student(6, "Bevan", "Dean", Icons.house),
      Student(7, "Hayleigh", "Bravo", Icons.attach_money),
      Student(8, "Alfred", "Nicholls", Icons.ac_unit),
      Student(9, "Bayley", "Begum", Icons.wine_bar),
      Student(10, "Gabrielle", "Gibson", Icons.music_note),
      Student(11, "Raphael", "Foster", Icons.flutter_dash),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InheritedStudents(
        list: listInit(),
        child: Column(
          children: const [
            Expanded(
              child: ChoosenStudentWidget(),
            ),
            Expanded(
              child: ListOfStudentsWidget(),
            )
          ],
        ),
      ),
    );
  }
}
