import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'model.dart';

class CountryDetailsScreen extends StatelessWidget {
  final Country country;

  CountryDetailsScreen(this.country);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(country.name),
        backgroundColor: Colors.teal[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.network(
                country.flag,
                width: 150,
                height: 160,
              ),
            ),
            const SizedBox(height: 16.0),
            ListTile(
              title: Text(
                'Capital: ${country.capital}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: Text(
                'Region: ${country.region}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: Text(
                'Subregion: ${country.subregion}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: Text(
                'Population: ${country.population}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
