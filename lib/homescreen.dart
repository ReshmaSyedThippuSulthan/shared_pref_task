import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharedpreference_task/main.dart';

class HomeScreen extends StatefulWidget {
  String  name;
  String emailid;
  String quali;
  String  role;
  HomeScreen({super.key,required  this.name,required this. emailid,required this. quali,required this. role });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Welcome "),
        backgroundColor: Colors.tealAccent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title:'Flutter Demo Home Page')));
              },
              icon: const Icon(Icons.logout_sharp))
        ],
      ),
      body: Center(
        child:Padding(
          padding:  const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 400,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 6, 20, 99),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: 
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // alignment: Alignment.topLeft,
                      Text("Name:${widget.name}",style: GoogleFonts.lora(fontSize: 20,color: Colors.white)),
                      const SizedBox(height: 20,),
                       Text("EmailID:${widget.emailid}",style: GoogleFonts.lora(fontSize: 20,color: Colors.white)),
                       const SizedBox(height: 20,),
                       Text("Qualification:${widget.quali}",style: GoogleFonts.lora(fontSize: 20,color: Colors.white)),
                       const SizedBox(height: 20,),
                       Text("Role:${widget.role}",style: GoogleFonts.lora(fontSize: 20,color: Colors.white)),
                      ],
                    ),
                  ),
                ),
               
              ),
            ],
          ),
        )

        
      ),
    );
  }
}
