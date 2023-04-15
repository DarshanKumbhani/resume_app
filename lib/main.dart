import 'package:flutter/material.dart';
import 'package:resume_app/screens/data_screen.dart';
import 'package:resume_app/screens/expirence.dart';
import 'package:resume_app/screens/home_screen.dart';
import 'package:resume_app/screens/job.dart';
import 'package:resume_app/screens/language.dart';
import 'package:resume_app/screens/personal_info.dart';
import 'package:resume_app/screens/qualification_screen.dart';
import 'package:resume_app/screens/start_screen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Start(),
        "home":(context) => Home(),
       "personal":(context) => Personal_info(),
        "qualification":(context) => Qualification(),
        "exp":(context) => Exp(),
        "lan":(context) => Language(),
        "job":(context) => Job(),
        "data":(context)=>Data_screen(),

      },
    )
  );
}