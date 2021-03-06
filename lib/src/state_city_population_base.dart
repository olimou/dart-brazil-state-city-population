// Copyright (c) 2017, emersonmoura. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:state_city_population/src/city.dart';

// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class StateCity {
  Map states = new Map();

  Future init(String iso_code) async {
    await new File('json/$iso_code/data.json')
        .readAsString()
        .then((fileContents) => JSON.decode(fileContents))
        .then((Map jsonData) {
      states = jsonData;
    });
  }

  List<String> listStates() {
    return states.keys.toList();
  }

  List<City> listCities(String UF) {
    List<City> cities = new List();

    List<Map> name = states[UF];

    name.forEach((city) {
      cities.add(City.fromJson(city));
    });

    return cities;
  }
}
