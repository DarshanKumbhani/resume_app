
import 'package:flutter/material.dart';
import 'package:resume_app/screens/home_screen.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List language = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: back,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            centerTitle: true,
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Settings"),
                    onTap: () {
                      Navigator.pushNamed(context, "setting");
                    },
                  ),
                  PopupMenuItem(child: Text("Help")),
                  PopupMenuItem(child: Text("Profile")),
                ],
              ),
            ],
            title: Text("Language"),
          ),
          body: Column(
            children: [
              ExpansionTile(
                title: Text(
                  "Language",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  CheckboxListTile(
                    value: language[0],
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        language[0] = value!;
                      });
                    },
                    title: Text("English"),
                  ),
                  CheckboxListTile(
                    value: language[1],
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        language[1] = value!;
                      });
                    },
                    title: Text("Gujrati"),
                  ),
                  CheckboxListTile(
                    value: language[2],
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        language[2] = value!;
                      });
                    },
                    title: Text("Hindi"),
                  ),
                  CheckboxListTile(
                    value: language[3],
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        language[3] = value!;
                      });
                    },
                    title: Text("Urdu"),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("succsecfully"),
                      ),
                    );
                   var Language="";
                   if(language[0])
                     {
                       Language= "$Language english";
                     }
                    if(language[1])
                    {
                      Language= "$Language gujrati ";
                    }
                    if(language[2])
                    {
                      Language= "$Language hindi";
                    }
                    if(language[3])
                    {
                      Language= "$Language urdu";
                    }
                    data.add(Language);
                    Navigator.pop(context);
                    }, child: Text("Save & Back"),
                    style: ElevatedButton.styleFrom(primary: Colors.red.shade400),)
                ],
              ),
            ],
          )),
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
