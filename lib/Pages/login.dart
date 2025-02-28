import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/rounded_buttons.dart';
import 'package:flutter_application_1/widgets/rounded_text_form_field.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset:true,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body:_buildUI(context)
    );
  }
  Widget _buildUI(BuildContext context){
    return Column(
      children: [
        _header(context),
        _loginForm(context),
      ],
    );
  }
  Widget _header(BuildContext context){
    return Container(
      width:MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Color.fromRGBO(230, 253, 253, 1),
      child: Row(children: [
        const Padding(
          padding:EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text("OPTIVEN",style:TextStyle(color:Colors.green,fontSize:50.0,fontWeight: FontWeight.w800),),
        ),
      ],)
  
      );
  }
  Widget _loginForm(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height *0.75,
      child:Form(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          _formField(context),
          _footer(context)
        ],),
      ),
      ),
    );  
  }
  Widget _formField(BuildContext context){
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          RoundedTextFormField(
            prefixIcon: Icons.email_outlined,
            hintText: "Enter your email",
            ),
          RoundedTextFormField(
            prefixIcon: Icons.lock_outlined,
            hintText:"Enter your password",
            obsecureText:true,
          ),
          Text("Forgot Password?",style: TextStyle(color:const Color.fromARGB(255, 168, 106, 83),fontSize:15),),
        ],
      ),
    );
  }
  Widget _footer(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize:MainAxisSize.max,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.05,
        child:const RoundedButtons(text:"Sign In"),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0,bottom: 20.0),
        child: Text(("Don't have an account? Sign Up"),style: TextStyle(color:Colors.green,fontSize:15,fontWeight:FontWeight.w600),),
      ),
    ],);

  }
}