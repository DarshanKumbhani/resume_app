import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printing/printing.dart';
import 'package:resume_app/screens/data_model.dart';
import 'package:resume_app/screens/home_screen.dart';
import 'package:resume_app/screens/pdf_maker.dart';

class Data_screen extends StatefulWidget {
  const Data_screen({Key? key}) : super(key: key);

  @override
  _Data_screenState createState() => _Data_screenState();
}

class _Data_screenState extends State<Data_screen> {
  @override
  Widget build(BuildContext context) {
    Modal m1 = ModalRoute.of(context)!.settings.arguments as Modal;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        actions: [InkWell(onTap: () async {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("PDF Save Successfully"),),);
          await Printing.layoutPdf(onLayout: (format) => GeneratePDF(),);
        }, child: Icon(Icons.save_alt))],
        title: Text("Show All Data"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: FileImage(
                    File("${m1.path}"),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  First name              -       ${m1.f_name}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Last Name              -       ${m1.l_name}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Address                     -       ${m1.address}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Number                   -       ${m1.number}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Age                          -       ${m1.age}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Email                       -    ${m1.email}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Gender                    -       ${m1.gender}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  IT_Field                   -       ${m1.it_field}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Doctor_Field           -       ${m1.doctor_field}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Engineering             -       ${m1.engineering}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Job Experience       -       ${m1.job_experience}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Language                 -       ${m1.languages}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  Salary       -       ${m1.sal}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(String showdata) {
    return Container(
      height: 35,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.black),
      ),
      alignment: Alignment.topLeft,
      child: Text(
        "$showdata",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
