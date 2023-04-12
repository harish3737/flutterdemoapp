import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather.dart';

class WeatherApiClient {
  static const baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  static const apiKey = 'ace372ec38aaaccee9bf982db76ef9dc';
  final http.Client httpClient;

  WeatherApiClient({required this.httpClient});

  Future<Weather> getWeather(String cityName) async {
    final weatherUrl = '$baseUrl?q=$cityName&appid=$apiKey&units=metric';
    final weatherResponse = await httpClient.get(Uri.parse(weatherUrl));

    if (weatherResponse.statusCode != 200) {
      throw Exception('Error getting weather for city');
    }

    final weatherJson = jsonDecode(weatherResponse.body);
    return Weather.fromJson(weatherJson);
  }
}
