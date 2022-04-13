import 'package:flutter/material.dart';
import 'package:flutterforms/manageprofile/profiledetailsmain.dart';
import 'package:flutterforms/manageprofile/profileprimarydetails.dart';
import 'package:flutterforms/reeler_data/reelerprofileedit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const ReelerProfileEdit(),
      ),
    );
  }
}

