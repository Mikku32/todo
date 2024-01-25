import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoCard extends StatefulWidget {
  const ToDoCard({
    required this.toDoMessage,
    super.key,
  });
   
  final String toDoMessage;
   
  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  

bool isChecked=false;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
           
            children: [
              Expanded(child:
              CheckboxListTile(
                value: isChecked,
                activeColor: Color.fromARGB(255, 0, 0, 0),
                onChanged: (newvalue) {
                  setState(() {
                    isChecked = newvalue!;
                  });
                },
                title: Text(widget.toDoMessage,style: GoogleFonts.actor(
                  decoration: isChecked? TextDecoration.lineThrough : null,
                  fontSize: 20,
                )),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.delete),
              )
              ),
              )
               
            ],
          )
          )
        ),
    );
  }
}
