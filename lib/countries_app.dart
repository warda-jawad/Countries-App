import 'package:flutter/material.dart';

import 'countries_screen.dart';

class CountriesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CountriesScreen(),
    );
  }
}
