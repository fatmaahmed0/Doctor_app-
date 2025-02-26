import 'package:doctor/screens/pages.dart';
import 'package:doctor/screens/routesname.dart';
import 'package:doctor/screens/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'app_theme.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Doctor App',
      theme: AppTheme.light(context),
    
      initialRoute: Routesname.splash,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
