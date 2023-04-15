import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/screens/data_model.dart';
import 'package:resume_app/screens/home_screen.dart';

class Personal_info extends StatefulWidget {
  const Personal_info({Key? key}) : super(key: key);

  @override
  _Personal_infoState createState() => _Personal_infoState();
}

class _Personal_infoState extends State<Personal_info> {
  TextEditingController txtfirst = TextEditingController();
  TextEditingController txtlast = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtnum = TextEditingController();
  TextEditingController txtage = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  var txtkey = GlobalKey<FormState>();

  String? gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: WillPopScope(
        onWillPop: back,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.pink.shade400,
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Settings")),
                  PopupMenuItem(child: Text("Help")),
                  PopupMenuItem(child: Text("Profile")),
                ],
              )
            ],
            title: Text("Personal Information"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the name";
                      } else {
                        return null;
                      }
                    },
                    controller: txtfirst,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      label: Text("First name",
                          style: TextStyle(color: Colors.pink)),
                      suffixIcon: Icon(
                        Icons.person_add_alt,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter last name";
                      } else {
                        return null;
                      }
                    },
                    controller: txtlast,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      label: Text("Last name",
                          style: TextStyle(color: Colors.pink)),
                      suffixIcon: Icon(
                        Icons.person_add_alt,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Your address ";
                      } else {
                        return null;
                      }
                    },
                    controller: txtadd,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      label: Text("Enter Your address",
                          style: TextStyle(color: Colors.pink)),
                      suffixIcon: Icon(
                        Icons.home_outlined,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Your number";
                      } else {
                        return null;
                      }
                    },
                    controller: txtnum,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      label: Text(
                        "Enter Your number",
                        style: TextStyle(color: Colors.pink),
                      ),
                      suffixIcon: Icon(
                        Icons.phone,
                        color: Colors.pink,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Your age";
                      } else {
                        return null;
                      }
                    },

                    controller: txtage,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      label: Text("Enter Your age",
                          style: TextStyle(color: Colors.pink)),
                      suffixIcon: Icon(
                        Icons.date_range,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Email";
                      } else {
                        return null;
                      }
                    },
                    controller: txtemail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade400, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.pink),
                      ),
                      label: Text("Enter Your Email",
                          style: TextStyle(color: Colors.pink)),
                      suffixIcon: Icon(
                        Icons.mail_outline,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ExpansionTile(
                    title: Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    children: [
                      RadioListTile(
                        value: "Male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value! as String?;
                          });
                        },
                        title: Text("Male"),
                      ),
                      RadioListTile(
                        value: "Female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value! as String?;
                          });
                        },
                        title: Text("Female"),
                      ),
                      RadioListTile(
                        value: "Other",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value! as String?;
                          });
                        },
                        title: Text("Other"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      if (txtkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("succsecfully"),
                          ),
                        );
                        data.add(txtfirst.text);
                        data.add(txtlast.text);
                        data.add(txtadd.text);
                        data.add(txtnum.text);
                        data.add(txtage.text);
                        data.add(txtemail.text);
                        data.add(gender);


                        // setState(() {
                        //   m1 = Modal(
                        //     f_name: txtfirst.text,
                        //     l_name: txtlast.text,
                        //     address: txtadd.text,
                        //     number: txtnum.text,
                        //     age: txtage.text,
                        //     email: txtemail.text,
                        //     gender: gender,
                        //   );
                        // });
                        Navigator.pop(context);
                      }
                      },
                    child: Container
                      (
                      height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade400,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child: Text("Save & Back",style: TextStyle(fontSize: 18),)),
                  ),
                ],
              ),
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
