import 'package:doctor/screens/appointment_page.dart';
import 'package:doctor/screens/doctor_details.dart';
import 'package:doctor/screens/doctors_page.dart';
import 'package:doctor/screens/home.dart';
import 'package:doctor/screens/profile_page.dart';
import 'package:doctor/screens/routesname.dart';
import 'package:doctor/screens/sign_in.dart';
import 'package:doctor/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings? setting) {
    switch (setting?.name) {
      case Routesname.splash:
        {
          return MaterialPageRoute(builder: (_) => SplashScreen());
        }
      case Routesname.SignIn:
        {
          return MaterialPageRoute(builder: (_) => SignIn());
        }
      case Routesname.home:
        {
          return MaterialPageRoute(builder: (_) => Home());
        }
      case Routesname.Appointment:
        {
          return MaterialPageRoute(builder: (_) => AppointmentPage());
        }
      case Routesname.DoctorsPage:
        {
          return MaterialPageRoute(builder: (_) => DoctorsPage());
        }
      case Routesname.ProfilePage:
        {
          return MaterialPageRoute(builder: (_) => ProfilePage());
        }
      // case Routesname.DoctorDetails:
      //   {
      //
      //     return MaterialPageRoute(
      //         builder: (_) =>
      //             DoctorDetails(doctor:, exedoctor:));
      //   }
    }
    return null;
  }
}
