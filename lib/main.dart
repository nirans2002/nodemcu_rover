import 'package:flutter/material.dart';
import 'package:incepto_rover/controls.dart';
import 'package:incepto_rover/home.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  runApp(const MyApp());
  // get_data(context);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
