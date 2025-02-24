import 'package:flutter/material.dart';

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
      _registrationform(context),
    ],);
  }
  Widget _header(BuildContext context){
    return Text("This is the header");
  }
  Widget _registrationform(BuildContext context){
    return Column(children: [
      _formField(context),
      _footer(context),
    ],);
  }
  Widget _formField(BuildContext context){
    return Text("This is the form field");
  }
  Widget _footer(BuildContext context){
    return Text("This is the footer");
  }
}





