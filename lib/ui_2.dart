// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/foundation/key.dart';
// ignore: implementation_imports
import 'package:phone_app/model.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: data_back.backs
                  .map(
                    (e) => back(back1: e),
                  )
                  .toList(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: Contacts.viwes
                  .map(
                    (e) => Contacts1(viwe: e),
                  )
                  .toList(),
            ),
            SingleChildScrollView(
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: data_contacts.c
                      .map(
                        (e) => my_contacts(cons: e),
                      )
                      .toList(),
                ),
                Transform.translate(
                  offset: Offset(0, 200),
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.groups_outlined,
                            size: 20,
                          ),
                          Icon(
                            Icons.settings,
                            size: 20,
                          )
                        ]),
                  ),
                )
              ]),
            )
          ],
        ),
      ]),
    );
  }
}
// ignore: camel_case_types
class back extends StatefulWidget {
  const back({Key? key, required, required this.back1 }) : super(key: key);
final data_back back1;
  @override
  State<back> createState() => _backState();
}

// ignore: camel_case_types
class _backState extends State<back> {
 
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            child:  Icon(
              widget.back1.back,
              color: Colors.black,
              size: 15,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

class Contacts1 extends StatelessWidget {
  const Contacts1({Key? key, required this.viwe}) : super(key: key);
  final Contacts viwe;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          viwe.cons,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none,
          ),
        ),
        Icon(
          viwe.icon_viwe1,
          color: Colors.black,
          size: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Icon(
            viwe.icon_viwe2,
            color: Colors.black,
            size: 15,
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class my_contacts extends StatelessWidget {
  const my_contacts({
    Key? key,
    required this.cons,
  }) : super(key: key);
  final data_contacts cons;

  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-5, 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
       
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          const Icon(
            Icons.image,
            size: 35,
          ),
          Transform.translate(
            offset: const Offset(-50, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(cons.name,
                    style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                Text(cons.number,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 171, 169, 169),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                    ))
              ],
            ),
          ),
          const Icon(
            Icons.phone,
            color: Color.fromARGB(255, 22, 241, 29),
            size: 25,
          )
        ],
      ),
    );
  }
}
