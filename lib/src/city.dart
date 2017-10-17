class City {
  String name;
  int population;

  static City fromJson(jsonData) {
    var city = new City();

    city.name = jsonData['city'];
    city.population = jsonData['population'];

    return city;
  }
}
