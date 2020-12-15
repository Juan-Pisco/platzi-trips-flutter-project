import 'package:flutter/material.dart'; //Tiene todo el material design de flutter
import 'package:flutter/services.dart';
import 'package:platzi_trips/home_trips.dart';
import 'platzi_trips_cupertino.dart';
import 'platzi_trips.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlatziTripsCupertino());
  }
}
