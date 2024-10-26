import 'package:doctor/screens/home.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: const Color.fromARGB(255, 208, 216, 238),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account?     ",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                      children: const <TextSpan>[
                    TextSpan(
                      text: "Sign Up!",
                      style: TextStyle(color: Colors.blue),
                    )
                  ])),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email*", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password*", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Forgot your Password?",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                         
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 53, 124, 182),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
