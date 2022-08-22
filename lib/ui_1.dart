import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phone_app/model.dart';
import 'package:phone_app/ui_2.dart';

import 'main.dart';

// ignore: camel_case_types

// ignore: camel_case_types
// ignore: camel_case_types
class page_phone extends StatefulWidget {
  const page_phone({Key? key}) : super(key: key);

  @override
  State<page_phone> createState() => _page_1State();
}

// ignore: camel_case_types
class _page_1State extends State<page_phone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 70),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Transform.translate(
            offset: const Offset(0, -75),
            child: TextButton(
              onPressed: () {
                data_contacts.c.add(data_contacts(value));
                setState(() {});
              },
              child: const Text(
                '+ Add to contacts ',
                style: TextStyle(
                    color: Color.fromARGB(255, 4, 245, 129),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Transform.translate(
          offset: const Offset(0, -40),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: data_number.buttons1
                      .map((e) => TextButton(
                          onPressed: () {
                            value = value + e.num;
                            setState(() {});
                          },
                          child: My_number(
                            num: e,
                          )))
                      .toList()),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: data_number.buttons2
                      .map((e) => TextButton(
                          onPressed: () {
                            value = value + e.num;
                            setState(() {});
                          },
                          child: My_number(
                            num: e,
                          )))
                      .toList()),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: data_number.buttons3
                      .map((e) => TextButton(
                          onPressed: () {
                            value = value + e.num;
                            setState(() {});
                          },
                          child: My_number(
                            num: e,
                          )))
                      .toList()),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: data_number.buttons4
                      .map((e) => TextButton(
                          onPressed: () {
                            value = value + e.num;
                            setState(() {});
                          },
                          child: My_number(
                            num: e,
                          )))
                      .toList()),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage2()));
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.groups_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 4, 245, 129),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      value = value.substring(0, value.length - 1);
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.backspace,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class My_number extends StatefulWidget {
  const My_number({
    Key? key,
    required this.num,
  });

  final data_number num;

  @override
  State<My_number> createState() => _My_numberState();
}

// ignore: camel_case_types
class _My_numberState extends State<My_number> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.num.num,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
        Text(
          widget.num.char,
          style: const TextStyle(
              fontSize: 10, color: Color.fromARGB(255, 128, 122, 122)),
        )
      ],
    );
  }
}


// ignore: camel_case_types

