import 'package:flutter/material.dart';
import 'package:resume_app/screens/home_screen.dart';

class Qualification extends StatefulWidget {
  const Qualification({Key? key}) : super(key: key);

  @override
  _QualificationState createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  List quait = [
    "Web development",
    "Flutter developement",
    "Animation",
    "Web design",
    "IOS developemen",
    "Android developement",
    "Game design",
  ];
  List doc = [
    "No One",
    "MBBS",
    "Cardiologists",
    "audiologists",
    "dentists",
    " radiologists",
    "oncologists",
    "pulmonologists"
  ];
  List eng=[
    "No One",
        "Civil engineering ",
    "mechanical engineering",
    "computer engineering",
    "aeronutical engineering",
    "Softvare engineering",
    "Electric engineering",
    "Tele Communication",
  ];
  String? j;
  String? k;
  String? p;
  bool isexp = false;
  bool isdoc = false;
  bool iseng = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Your Qualification"),
      ),
      body: WillPopScope(onWillPop: back,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "IT Field",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: isexp,
                  onChanged: (value) {
                    setState(() {
                      isexp = value;
                    });
                  },
                  activeColor: Colors.pink,
                ),
                tileColor: Colors.red.shade200,
              ),
              Visibility(
                visible: isexp,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    items: quait
                        .map((e) => DropdownMenuItem(
                              child: Text("$e"),
                              value: e,
                            ))
                        .toList(),
                    value: j,
                    hint: Center(
                        child: Text(
                      "Select",
                      style: TextStyle(color: Colors.pink.shade400),
                    )),
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        j = value as String;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Doctor Field",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: isdoc,
                  onChanged: (value) {
                    setState(() {
                      isdoc = value;
                    });
                  },
                  activeColor: Colors.pink,
                ),
                tileColor: Colors.red.shade200,
              ),
              Visibility(
                visible: isdoc,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    items: doc
                        .map((e) => DropdownMenuItem(
                              child: Text("$e"),
                              value: e,
                            ))
                        .toList(),
                    value: k,
                    hint: Center(
                        child: Text(
                      "Select",
                      style: TextStyle(color: Colors.pink),
                    )),
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        k = value as String;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Engineering",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: iseng,
                  onChanged: (value) {
                    setState(() {
                      iseng = value;
                    });
                  },
                  activeColor: Colors.pink,
                ),
                tileColor: Colors.red.shade200,
              ),


              Visibility(
                visible: iseng,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    items: eng
                        .map((e) => DropdownMenuItem(
                      child: Text("$e"),
                      value: e,
                    ))
                        .toList(),
                    value: p,
                    hint: Center(
                        child: Text(
                          "Select",
                          style: TextStyle(color: Colors.pink),
                        )),
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        p = value as String;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("succsecfully"),
                  ),
                );
                data.add(j);
                data.add(k);
                data.add(p);

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
