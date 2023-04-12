class Weather {
  final double temperature;
  final String description;

  Weather({
    required this.temperature,
    required this.description,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final main = json['main'];
    final weather = json['weather'][0];
    return Weather(
      temperature: main['temp'].toDouble(),
      description: weather['description'],
    );
  }
}
