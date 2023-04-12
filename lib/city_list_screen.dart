import 'package:flutter/material.dart';
import 'city.dart';
import 'city_weather_screen.dart';

class CityListScreen extends StatelessWidget {
  const CityListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cities = City.fetchCities();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(cities[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CityWeatherScreen(cityName: cities[index].name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}