import 'package:flutter/material.dart';
import 'package:inherited_widget_app/widgets/inherited_student_widget.dart';

class ListOfStudentsWidget extends StatefulWidget {
  const ListOfStudentsWidget({Key? key}) : super(key: key);

  @override
  _ListOfStudentsWidgetState createState() => _ListOfStudentsWidgetState();
}

class _ListOfStudentsWidgetState extends State<ListOfStudentsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              InheritedStudents.of(context).choose(index);
            },
            leading: Text(
              InheritedStudents.of(context).listOfStudents[index].id.toString(),
            ),
            title: Text(InheritedStudents.of(context)
                    .listOfStudents[index]
                    .name +
                " " +
                InheritedStudents.of(context).listOfStudents[index].surname),
          ),
        );
      },
      itemCount: InheritedStudents.of(context).listOfStudents.length,
    );
  }
}
