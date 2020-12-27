import 'package:firebase_crud_final/cotrollers/bindings/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUp extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sing Up"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              RaisedButton(
                onPressed: () {
                  controller.createUser(
                      emailController.text, passwordController.text);
                },
                child: Text(
                  "Sing Up",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
