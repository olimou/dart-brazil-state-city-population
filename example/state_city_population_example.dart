// Copyright (c) 2017, emersonmoura. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:state_city_population/state_city_population.dart';

main() {
  var stateCity = new StateCity();

  stateCity.init("BR").then((data) {
    print(stateCity.listStates());

    print(stateCity.listCities("SP"));

    stateCity.listCities("SP").forEach((city) {
      print("${city.name}: ${city.population}");
    });
  });
}
