import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:  const AppBarTheme(
          color: Color.fromARGB(255, 247, 200, 230),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) =>  const HomePage(),
      },
    );
  }
}
