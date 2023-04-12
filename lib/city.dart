

class City {
  final String name;

  const City({required this.name});
  //Array for the list of cities
  static List<City> fetchCities() {
    return [
      City(name: 'London'),
      City(name: 'New York'),
      City(name: 'Paris'),
      City(name: 'Berlin'),
      City(name: 'Tokyo'),
      City(name: 'Sydney'),
    ];
  }
}