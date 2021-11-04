import 'package:flutter/cupertino.dart';

class Student {
  late final int _id;
  late final String _name;
  late final String _surname;
  late final IconData _iconData;
  int get id => _id;
  String get name => _name;
  String get surname => _surname;
  IconData get iconData => _iconData;
  Student(int id, String name, String surname, IconData icon)
      : _name = name,
        _surname = surname,
        _id = id,
        _iconData = icon;
}
