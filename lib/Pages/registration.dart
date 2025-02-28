import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/rounded_buttons.dart';
import 'package:flutter_application_1/widgets/rounded_text_form_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  @override
  State<RegistrationPage> createState()=> _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body:_buildUI(context)
    );
  }
  Widget _buildUI(BuildContext context){
    return Column(children: [
      _header(context),
       Expanded(child: _registrationform(context)),
    ],);
  }
  Widget _header(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.05 ,
        color: Color.fromRGBO(230, 253, 253, 1),
        child: Center(child: Text("SIGN UP",style:TextStyle(color:Colors.green,fontSize: 30.0,fontWeight:FontWeight.w800,fontStyle: FontStyle.italic))),
      
      ),
    );
  }
  Widget _registrationform(BuildContext context){
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
              _formField(context),
              _footer(context),
            ],),
          ),
        ),
      ),
    );
  }
  Widget _formField(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: SizedBox(
        height:MediaQuery.of(context).size.height * 0.50,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundedTextFormField(prefixIcon: Icons.person,hintText: "First Name",),
          RoundedTextFormField(prefixIcon: Icons.person,hintText: "Last Name",),
          RoundedTextFormField(prefixIcon: Icons.person,hintText: "Other Name",),
          RoundedTextFormField(prefixIcon: Icons.email_outlined,hintText: "Email",),
          RoundedTextFormField(prefixIcon: Icons.lock,hintText: "Password",obsecureText: true,),
          RoundedTextFormField(prefixIcon: Icons.lock,hintText: "Confirm Password",obsecureText: true,),
        ],
      )
      ,),
    );

    
  }
  Widget _footer(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height:MediaQuery.of(context).size.height * 0.05,
        child: const RoundedButtons(text: "SIGN UP",),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
        child: Text("Already have an account? Sign In",style: TextStyle(color: const Color.fromARGB(255, 168, 106, 83),fontSize: 15),),
      ),
    ],);
  }
}





