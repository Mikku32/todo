import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoCard extends StatelessWidget {
  const ToDoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
           
            children: [
              Expanded(child:
              CheckboxListTile(
                value: false,
                activeColor: Color.fromARGB(255, 0, 0, 0),
                onChanged: (newvalue) {
                  
                },
                title: Text('Task 1',style: GoogleFonts.actor(
                  fontSize: 20,
                )),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: Icon(Icons.delete),
              )),
              
               
            ],
          )
          ),
        )
      );
  }
}
