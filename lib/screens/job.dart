import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_app/screens/home_screen.dart';

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {
  RangeValues rangeValues = RangeValues(25000, 100000);
  bool isjob = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: back,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            centerTitle: true,
            actions: [
              PopupMenuButton(
                itemBuilder: (context) =>
                [
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("Help")),
                  PopupMenuItem(child: Text("Profile")),
                ],
              )
            ],
            title: Text("Job"),
          ),
          body: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "IT Field",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Switch(
                  value: isjob,
                  onChanged: (value) {
                    setState(() {
                      isjob = value;
                    });
                  },
                  activeColor: Colors.pink,
                ),
                tileColor: Colors.red.shade200,
              ),
              Visibility(
                visible: isjob,
                child: RangeSlider(
                  values: rangeValues,
                  labels: RangeLabels(
                      "${rangeValues.start.round()}",
                      "${rangeValues.end.round()}"),
                  onChanged: (value) {
                    setState(() {
                      rangeValues = value;
                    });
                  },
                  divisions: 20,
                  max: 100000,
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("succsecfully"),
                  ),
                );
                data.add(rangeValues);
                Navigator.pop(context);
                }, child: Text("Save & Back"),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade400),)
            ],
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
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green
                    ),
                  ),
                  SizedBox(width: 40,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("No",),
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