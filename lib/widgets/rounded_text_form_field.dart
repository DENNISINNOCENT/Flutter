import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool obsecureText;

  const RoundedTextFormField({super.key,required this.prefixIcon,required this.hintText,this.obsecureText=false});
  

  @override
  Widget build(BuildContext context){
    return Container(
      width:MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
        boxShadow:[BoxShadow(
          color: Color.fromRGBO(67, 71 , 77, 0.08),
          spreadRadius: 10,
          blurRadius: 40,
          offset: Offset(0, 12),
        )
      ],),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child:TextFormField(
            obscureText: obsecureText,
            decoration: InputDecoration(prefixIcon: Icon(prefixIcon,color:const Color.fromARGB(255, 168, 106, 83)),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: hintText,
            hintStyle: TextStyle(fontSize:12,
            color:Color.fromRGBO(131, 143, 160, 100)),
            ),
          )
        
        ),
      ),
    );

  }
}