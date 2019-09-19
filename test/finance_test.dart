// Copyright 2019 Ismael Jiménez. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:currencies/currencies.dart';
import 'package:test/test.dart';

void main() {
  group('currencies [Curencies]', () {
    test('USD', () {
      expect(currencies['USD'].isoCode, 'USD');
      expect(currencies['USD'].fullName, 'US Dollar');
      expect(currencies['USD'].symbol, r'$');
      expect(currencies['USD'].minorUnit, 'cent');
      expect(currencies['USD'].minorFraction, 100);
    });

    test('EUR', () {
      expect(currencies['EUR'].isoCode, 'EUR');
      expect(currencies['EUR'].fullName, 'Euro');
      expect(currencies['EUR'].symbol, r'€');
      expect(currencies['EUR'].minorUnit, 'cent');
      expect(currencies['EUR'].minorFraction, 100);
    });
  });
}
