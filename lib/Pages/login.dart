import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/rounded_buttons.dart';
import 'package:flutter_application_1/widgets/rounded_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _header(context),
          Expanded(child: _loginForm(context)), // Ensure it takes only needed space
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3, // Reduce header size
      color: const Color.fromRGBO(230, 253, 253, 1),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
        child: Text(
          "OPTIVEN",
          style: TextStyle(
            color: Colors.green,
            fontSize: 40.0, // Reduce font size
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _formField(context),
            const SizedBox(height: 50), // Add spacing to prevent overlaps
            _footer(context),
          ],
        ),
      ),
    );
  }

  Widget _formField(BuildContext context) {
    return Column(
      children: [
        Text("Sign In Your Account", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800,color:Color.fromARGB(255,168,106,83))),
        const SizedBox(height: 20), // Add spacing
        RoundedTextFormField(
          prefixIcon: Icons.email_outlined,
          hintText: "Enter your email",
        ),
        const SizedBox(height: 45), // Add spacing
        RoundedTextFormField(
          prefixIcon: Icons.lock_outlined,
          hintText: "Enter your password",
          obsecureText: true,
        ),
        const SizedBox(height: 30),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: Color.fromARGB(255, 168, 106, 83),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _footer(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: 45, // Use a fixed height
          child: const RoundedButtons(text: "Sign In"),
        ),
        const SizedBox(height: 20),
        const Text(
          "Don't have an account? Sign Up",
          style: TextStyle(
            color: Colors.green,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
