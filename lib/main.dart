// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
    home: const MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(96, 214, 210, 210),
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              
               IconButton(onPressed: (){},
                icon: Icon(Icons.menu)) ,
                IconButton(onPressed: (){},
                icon: Icon(Icons.account_circle)),
             ],
           ) , 
           SizedBox(
            height: 30,
           ),
           Container(
          
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 0
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  prefixIcon: IconButton(onPressed: (){},
                   icon: Icon(Icons.search),
                   color: Color.fromARGB(255, 202, 201, 197),)
                ),
              ),
            ),
            
           ),
           SizedBox(
            height: 40,
           ),
          Text("All ToDo's_",
          style: GoogleFonts.aBeeZee(
            fontSize: 20,
            fontWeight: FontWeight.w700
            
          ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 0
              ),
              child: 
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: false , onChanged: (value){}),
                    Text('Hello',
                     style: GoogleFonts.actor(
            fontSize: 19,
            fontWeight: FontWeight.w700
            
          ),
          ),
          IconButton(
            onPressed: (){},
             icon: Icon(
              Icons.delete
              )),
                  ],
                )
                ),
              )
            ),
          

           ], 
          ),
        ),
      ),
    );
  }
}
