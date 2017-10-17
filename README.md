# state_city_population

A library for Dart developers. It is awesome.

## Usage

A simple usage example:

```dart
  var stateCity = new StateCity();

  stateCity.init("BR").then((data) {
    print(stateCity.listStates());

    print(stateCity.listCities("SP"));

    stateCity.listCities("SP").forEach((city) {
      print("${city.name}: ${city.population}");
    });
  });
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
