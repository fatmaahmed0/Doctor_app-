import 'package:doctor/screens/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/splash.jpg'),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            "Gerda",
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 17, 6, 78)),
          ),
          Spacer(),
          MaterialButton(
              onPressed: () {},
              color: const Color.fromARGB(255, 74, 144, 201),
              minWidth: 300,
              height: 40,
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
              SizedBox(height: 30,),

              MaterialButton(
              onPressed: () {
                setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                });
              },
              color:  const Color.fromARGB(255, 74, 144, 201),
              minWidth: 300,
              height: 40,
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),

             SizedBox(height: 70,)
        ],
      ),
    ));
  }
}
