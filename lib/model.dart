// ignore: camel_case_types
// ignore_for_file: avoid_types_as_parameter_names

// ignore: camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data_number {
  final String num;
  final String char;
  data_number({required this.num, required this.char});
  static List<data_number> buttons1 = [
    data_number(num: '1', char: ''),
    data_number(num: '2', char: "ABC"),
    data_number(num: '3', char: "DEF"),
  ];
  static List<data_number> buttons2 = [
    data_number(num: '4', char: "GHI"),
    data_number(num: '5', char: "JKL"),
    data_number(num: '6', char: "MNO"),
  ];
  static List<data_number> buttons3 = [
    data_number(num: '7', char: "PQRS"),
    data_number(num: '8', char: "TUV"),
    data_number(num: '9', char: "WXYZ"),
  ];
  static List<data_number> buttons4 = [
    data_number(num: '*', char: ""),
    data_number(num: '0', char: "+"),
    data_number(num: '#', char: ""),
  ];
}

// ignore: camel_case_types
class data_contacts {
  
  String name='Hassan';
  String number;

  data_contacts( this.number );
  static List<data_contacts> c = [];
}

class Contacts {
  String cons;
  IconData icon_viwe1;
  IconData icon_viwe2;
  Contacts(this.cons, this.icon_viwe1, this.icon_viwe2);
  static List<Contacts> viwes = [
    Contacts('Contacts', Icons.view_carousel_outlined,Icons.view_agenda_outlined)
  ];
}

class data_back {
  IconData back;
  data_back(this.back);
  static List<data_back> backs = [data_back(Icons.arrow_back)];
}
