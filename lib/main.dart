import 'package:bytebank_v2/pages/contacts_form.dart';
import 'package:bytebank_v2/pages/contacts_list.dart';
import 'package:flutter/material.dart';
import 'pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[900],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const ContactsForm(),
    );
  }
}

