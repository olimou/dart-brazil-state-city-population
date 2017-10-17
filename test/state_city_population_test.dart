// Copyright (c) 2017, emersonmoura. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:state_city_population/state_city_population.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    StateCity awesome;

    setUp(() {
      awesome = new StateCity();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
