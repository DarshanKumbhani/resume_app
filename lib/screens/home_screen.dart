import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/screens/data_model.dart';

List data=[];
Modal m1 = Modal();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? path;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
      onWillPop: back,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text(
            "Resume App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("Help")),
                PopupMenuItem(child: Text("Profile")),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color: Colors.black12
              ),
              child: path==null?CircleAvatar(
                backgroundImage: AssetImage("assets/Images/person.jpg"),
              )
                  :CircleAvatar(
                backgroundImage: FileImage(File("$path")),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  ImagePicker picker = ImagePicker();
                  XFile? photo = await picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    path=photo!.path;
                  });
                },
                child: Icon(Icons.camera_alt),
              ),
                  SizedBox(width: 80,),
                  InkWell(
                    onTap:() async {
                      ImagePicker picker = ImagePicker();
                      XFile? image = await picker.pickImage(source: ImageSource.gallery);
                      setState(() {
                        path=image!.path;
                      });
                    },
                    child: Icon(Icons.photo_album,color: Colors.black,),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "personal");
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.red.shade200,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 3, color: Colors.red)),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                                child: Icon(
                              Icons.person_add_alt,
                              size: 30,
                            )),
                            Text(
                              "Personal Info",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "qualification");
                      },
                      child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red.shade200,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 3,
                              color: Colors.red,
                            ),
                          ),
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                  child: Icon(
                                Icons.book,
                                size: 30,
                              )),
                              Text(
                                " Qualification",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "exp");
                          },
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.red, width: 3)),
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.shopping_bag,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    " Experience",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "lan");
                          },
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.red.shade200,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: Colors.red),
                              ),
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.language,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    " Language",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "job");
                          },
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.red, width: 3)),
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.monetization_on_outlined,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    " Job & Salaary",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(onTap:(){
                  print("====${data.length} $data");
                  Modal m1 = Modal(
                    f_name: data[0],
                    path: path,
                    l_name:data [1],
                    address:data [2],
                    number: data[3],
                    age: data[4],
                    email: data[5],
                    gender: data[6],
                    it_field: data[7],
                    doctor_field: data[8],
                    engineering: data[9],
                    job_experience: data[10],
                    languages: data[11],
                    sal: data[12],
                  );

                  Navigator.pushNamed(context, "data",arguments: m1);
                } ,
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      color: Colors.red.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "Show All Data",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),


    )
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
                      exit(0);
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
