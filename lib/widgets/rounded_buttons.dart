import 'package:flutter/material.dart';

class RoundedButtons extends StatelessWidget {
  final String text;

  const RoundedButtons({super.key,required this.text});
  
  @override
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
    ),
    child: Text(text,style: TextStyle(color: const Color.fromARGB(255, 168, 106, 83),fontSize:20,fontWeight: FontWeight.w600),),
    

    );
     
    
  }
    

 

}