import 'package:doctor/components/custom_app_bar.dart';
import 'package:doctor/components/rating.dart';
import 'package:doctor/components/section_title.dart';
import 'package:doctor/constants.dart';
import 'package:doctor/models/AvailableDoctor.dart';
import 'package:doctor/models/Category.dart';
import 'package:doctor/models/RecommendDoctor.dart';
import 'package:doctor/screens/appointment_page.dart';
import 'package:doctor/screens/doctor_details.dart';
import 'package:doctor/screens/doctors_page.dart';
import 'package:doctor/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> listwidget = [
    _Homepage(),
    DoctorsPage(),
    AppointmentPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            selectedItemColor: const Color.fromARGB(255, 52, 101, 185),
            unselectedItemColor: Colors.black,
            onTap: (val) {
              setState(() {
                index = val;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Doctors'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.today), label: 'Appointment'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'profile'),
            ]),
        body: listwidget.elementAt(index),
      ),
    );
  }
}

class _Homepage extends StatefulWidget {
  const _Homepage({
    super.key,
  });

  @override
  State<_Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(text: "Find Your", title: "Specialist"),
            SizedBox(
              height: 190,
              child: card_1(),
            ),
            SizedBox(
              height: 15,
            ),
            SectionTitle(title: "categories", pressOnSeeAll: () {}),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: card_2(),
            ),
            SizedBox(
              height: 15,
            ),
            SectionTitle(title: "Available Doctor", pressOnSeeAll: () {}),
            SizedBox(
              height: 15,
            ),
            SizedBox(height: 220, child: card_3())
          ],
        ),
      ),
    );
  }

  ListView card_3() {
    return ListView.builder(
        itemCount: demoAvailableDoctors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          demoAvailableDoctors[index];
          demo_recommended_doctor[index];

          return MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DoctorDetails(
                          doctor: demo_recommended_doctor[index],
                          exedoctor: demoAvailableDoctors[index])));
            },
            child: Card(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(demoAvailableDoctors[index].name!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Text(demoAvailableDoctors[index].sector!),
                        Rating(score: 5),
                        Spacer(),
                        Text(
                          "Experience",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          "${demoAvailableDoctors[index].experience!} Years",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Spacer(),
                        Text("Patients", style: TextStyle(fontSize: 17)),
                        Text("${demoAvailableDoctors[index].patients}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ],
                    ),
                    Image.asset(
                      demoAvailableDoctors[index].image!,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  ListView card_1() {
    return ListView.builder(
        itemCount: demo_recommended_doctor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          demoAvailableDoctors[index];
          demo_recommended_doctor[index];

          return SizedBox(
              // width: 340,
              child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DoctorDetails(
                          doctor: demo_recommended_doctor[index],
                          exedoctor: demoAvailableDoctors[index],
                        )),
              );
            },
            child: Card(
                color: primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Looking For Your Desire\n Specialist Doctor?",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Spacer(),
                          Text(
                            demo_recommended_doctor[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            demo_recommended_doctor[index].speciality,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            demo_recommended_doctor[index].institute,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        demo_recommended_doctor[index].image,
                        // height: 130,
                        // width: 110,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                )),
          ));
        });
  }

  ListView card_2() {
    return ListView.builder(
      itemCount: demo_categories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            margin: EdgeInsets.all(10),
            width: 100,
            child: Column(
              children: [
                SvgPicture.asset(demo_categories[index].icon),
                Spacer(),
                Text(
                  demo_categories[index].title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
