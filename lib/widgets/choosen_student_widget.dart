import 'package:flutter/material.dart';
import 'package:inherited_widget_app/additional_classes/student.dart';
import 'package:inherited_widget_app/widgets/inherited_student_widget.dart';

class ChoosenStudentWidget extends StatefulWidget {
  const ChoosenStudentWidget({Key? key}) : super(key: key);

  @override
  _ChoosenStudentWidgetState createState() => _ChoosenStudentWidgetState();
}

class _ChoosenStudentWidgetState extends State<ChoosenStudentWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<Student>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  snapshot.data!.iconData,
                  size: 35,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  snapshot.data!.name + " " + snapshot.data!.surname,
                  style: const TextStyle(fontSize: 24),
                )
              ],
            );
          }
          return const Text(
            "Choose the student",
            style: TextStyle(fontSize: 20),
          );
        },
        stream: InheritedStudents.of(context).currentStudent,
      ),
    );
  }
}
