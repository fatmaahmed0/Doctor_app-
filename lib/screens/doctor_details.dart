import 'package:doctor/components/rating.dart';
import 'package:doctor/models/AvailableDoctor.dart';
import 'package:doctor/models/RecommendDoctor.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  final RecommendedDoctor doctor;
  final AvailableDoctor exedoctor;
  const DoctorDetails({required this.doctor, required this.exedoctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: doc_name(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    doctor.image,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: 120,
                    child: Card(
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          Text(
                            "Voice call",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 120,
                    child: Card(
                      color: const Color.fromARGB(255, 150, 88, 185),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.white,
                          ),
                          Text(
                            "Video call",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 125,
                    child: Card(
                      color: const Color.fromARGB(255, 235, 130, 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                          Text(
                            "Massege",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                doctor.speciality,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                doctor.institute,
                style: TextStyle(fontSize: 20),
              ),
              Rating(score: 5),
              SizedBox(
                height: 25,
              ),
              Text(
                "About ${doctor.name}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s""",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Patients",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "${exedoctor.patients}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Experience",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "${exedoctor.experience}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "${doctor.reviews}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 28, 110, 177),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Book an Appoinment",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar doc_name(BuildContext context) {
    return AppBar(
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 30,
          ),
        ),
        title: Text(
          doctor.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ));
  }
}
