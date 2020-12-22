import 'package:flutter/material.dart'; //Tiene todo el material design de flutter
import 'package:flutter/services.dart';
import 'lib/home_trips.dart';
import 'lib/platzi_trips_cupertino.dart';
import 'lib/platzi_trips.dart';

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
