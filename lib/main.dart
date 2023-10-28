import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospitalx/app/pages/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HospitalX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 240, 238, 105),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.notoSansTextTheme(
          const TextTheme(
            displaySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            headlineSmall: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
            titleLarge: TextStyle(
              fontSize: 20,
            ),
            bodyMedium: TextStyle(),
          ),
        ),
      ),
      home: const LoginPageProvider(),
    );
  }
}
