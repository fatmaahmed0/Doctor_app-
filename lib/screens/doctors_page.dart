import 'package:doctor/components/custom_app_bar.dart';

import 'package:doctor/models/AvailableDoctor.dart';
import 'package:doctor/models/RecommendDoctor.dart';
import 'package:doctor/screens/doctor_details.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorsPage extends StatelessWidget {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        CustomAppBar(text: "Find Your", title: "Specialist"),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.84,
              ),
              itemCount: demoAvailableDoctors.length,
              itemBuilder: (BuildContext context, int index) {
                demoAvailableDoctors[index];
                demo_recommended_doctor[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorDetails(
                                doctor: demo_recommended_doctor[index],
                                exedoctor: demoAvailableDoctors[index])));
                  },
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                            width: 75,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  demoAvailableDoctors[index].name!,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(demoAvailableDoctors[index].sector!),
                                Text(
                                  "Experience",
                                ),
                                Text(
                                  "${demoAvailableDoctors[index].experience!} Years",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Patients"),
                                Text("${demoAvailableDoctors[index].patients}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Image.asset(
                            demoAvailableDoctors[index].image!,
                            height: 90,
                            width: 82,
                            fit: BoxFit.contain,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ]),
    ));
  }
}
