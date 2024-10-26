import 'package:doctor/screens/routesname.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            leading: InkWell(
              onTap: () {Navigator.popAndPushNamed(context, Routesname.home);},
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 30,
              ),
            ),
            title: Text(
              "My Appointment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DataStyle(text1: "Date", text2: "18/9/2024"),
                            DataStyle(text1: "Time", text2: "10:30 Pm"),
                            DataStyle(text1: "Doctor", text2: "Dr.Adam"),
                          ]),
                      const Divider(thickness: 1, height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DataStyle(text1: "Type", text2: "Dentiest"),
                          DataStyle(text1: "Place", text2: "City Clinic"),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class DataStyle extends StatelessWidget {
  final String text1;
  final String text2;
  const DataStyle({
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1,style: TextStyle(fontSize: 17),),
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
          )
        ],
      ),
    );
  }
}
