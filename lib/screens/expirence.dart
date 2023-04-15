import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_app/screens/home_screen.dart';

class Exp extends StatefulWidget {
  const Exp({Key? key}) : super(key: key);

  @override
  _ExpState createState() => _ExpState();
}

class _ExpState extends State<Exp> {
  // List data=[];

  List year = [
    "No Experience",
    "1 Year",
    "2 Year",
    "3 Year",
    "4 Year",
    "5 Year",
    "6 Year",
    "7 Year",
  ];
  String? q;
  bool isyear = false;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: back,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            centerTitle: true,
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("Help")),
                  PopupMenuItem(child: Text("Profile")),
                ],
              )
            ],
            title: Text("Job"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Job Experience",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Switch(
                    value: isyear,
                    onChanged: (value) {
                      setState(() {
                        isyear = value;
                      });
                    },
                    activeColor: Colors.pink,
                  ),
                  tileColor: Colors.red.shade200,
                ),
                Visibility(
                  visible: isyear,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      items: year
                          .map((e) => DropdownMenuItem(
                                child: Text("$e"),
                                value: e,
                              ))
                          .toList(),
                      value: q,
                      hint: Center(
                        child: Text(
                          "Select",
                          style: TextStyle(color: Colors.pink.shade400),
                        ),
                      ),
                      isExpanded: true,
                      onChanged: (value) {
                        setState(() {
                          q = value as String;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  data.add(q);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("succsecfully"),
                    ),
                  );
                 Navigator.pop(context);
                 }, child: Text("Save & Back"),
                  style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ExitDilog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("Exit!"),
              content: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);

                    },
                    child: Text(
                      "Yes",
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      },
                    child: Text(
                      "No",
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  )
                ],
              ));
        });
  }
  Future<bool> back() async {
    ExitDilog();
    return await false;
  }
}
