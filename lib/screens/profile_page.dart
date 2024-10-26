import 'package:doctor/screens/routesname.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.popAndPushNamed(context, Routesname.home);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 30,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
          child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: const Color.fromARGB(255, 19, 105, 175),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/user_pic.png",
                ),
              ],
            ),
            UserData(
              text: 'Ahmed Saeed',
            ),
            UserData(text: "ahmed@gmail.com"),
            UserData(text: "0123456789"),
            UserData(text: "Egypt, Giza"),
          ],
        ),
      ),
    );
  }
}

class UserData extends StatelessWidget {
  final String text;
  const UserData({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      height: 60,
      width: 350,
      color: Colors.white,
      child: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
      ),
    );
  }
}
