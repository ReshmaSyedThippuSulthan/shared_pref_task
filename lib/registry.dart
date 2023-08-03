import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharedpreference_task/homescreen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'main.dart';

class RegistryScreen extends StatefulWidget {
  const RegistryScreen({super.key});

  @override
  State<RegistryScreen> createState() => _RegistryScreenState();
}

class _RegistryScreenState extends State<RegistryScreen> {
  TextEditingController usenamecontroller = TextEditingController();
  TextEditingController emailidcontroller = TextEditingController();
  TextEditingController qualificationcontroller = TextEditingController();
  List<String> role = ["select", "Admin", "User"];
  String? selectedValue;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getValue();
  // }

  // getValue()async{
  // var pref = await SharedPreferences.getInstance();
  // SharedPref();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Register Screen",
          style: GoogleFonts.lato(fontSize: 30, color: Colors.pink),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 700,
                  width: 600,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(222, 206, 167, 232),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: GoogleFonts.mukta(fontSize: 25),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: usenamecontroller,
                            decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Email ID",
                            style: GoogleFonts.mukta(fontSize: 25),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: emailidcontroller,
                            decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Role",
                            style: GoogleFonts.mukta(fontSize: 25),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // TextField(
                          //   controller: usenamecontroller,
                          //   decoration: const InputDecoration(
                          //       enabledBorder: OutlineInputBorder(
                          //           borderRadius:
                          //               BorderRadius.all(Radius.circular(20)))),
                          // ),
                          SingleChildScrollView(
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: Text(
                                "Role",
                                style: GoogleFonts.mukta(
                                  fontSize: 25,
                                ),
                              ),
                              items: role
                                  .map((String role) => DropdownMenuItem<String>(
                                      value: role,
                                      child: Text(
                                        role,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      )))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                            )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Qualification",
                            style: GoogleFonts.mukta(fontSize: 25),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: qualificationcontroller,
                            decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: SizedBox(
                              height: 50,
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen(
                                                  name: usenamecontroller.text,
                                                  emailid: emailidcontroller.text,
                                                  quali:
                                                      qualificationcontroller.text,
                                                  role: selectedValue.toString(),
                                                )));
                                  },
                                  child: Text(
                                    "Register",
                                    style: GoogleFonts.actor(fontSize: 25),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "If You already have a account?",
                                style: TextStyle(fontSize: 17),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyHomePage(
                                                title: 'Flutter Demo Home Page',
                                              )));
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
