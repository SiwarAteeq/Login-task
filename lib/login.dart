// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

String out = "";

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController password = new TextEditingController();
    TextEditingController email = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "LogIn",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.add_alert,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.search, color: Colors.white),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "name@gmail.com",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "your password",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        if (email.text == "tariq@gmail.com" &&
                            password.text == "112233")
                          out = "Welcome";
                        else
                          out = "Your password or email is invalid";
                      },
                    );
                  },
                  child: Text("Submit")),
              SizedBox(
                height: 20,
              ),
              Text(out),
            ],
          ),
        ),
      ),
    );
  }
}
