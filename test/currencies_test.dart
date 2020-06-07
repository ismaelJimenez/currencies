// Copyright 2019 Ismael Jiménez. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:currencies/currencies.dart';
import 'package:test/test.dart';

void main() {
  group('currencies [Currencies]', () {
    test('USD', () {
      expect(currencies[Iso4217Code.usd].isoCode, 'USD');
      expect(currencies[Iso4217Code.usd].fullName, 'US Dollar');
      expect(currencies[Iso4217Code.usd].symbol, r'$');
      expect(currencies[Iso4217Code.usd].minorUnit, 'cent');
      expect(currencies[Iso4217Code.usd].minorFraction, 100);
    });

    test('EUR', () {
      expect(currencies[Iso4217Code.eur].isoCode, 'EUR');
      expect(currencies[Iso4217Code.eur].fullName, 'Euro');
      expect(currencies[Iso4217Code.eur].symbol, r'€');
      expect(currencies[Iso4217Code.eur].minorUnit, 'cent');
      expect(currencies[Iso4217Code.eur].minorFraction, 100);
    });

    test('CHF', () {
      expect(currencies[Iso4217Code.chf].isoCode, 'CHF');
      expect(currencies[Iso4217Code.chf].fullName, 'Swiss Franc');
      expect(currencies[Iso4217Code.chf].symbol, r'CHF');
      expect(currencies[Iso4217Code.chf].minorUnit, 'rappen');
      expect(currencies[Iso4217Code.chf].minorFraction, 100);
    });

  });

  group('getIsoCode [Currencies]', () {
    test('getIsoCode with valid string', () {
      expect(isoCodeFromStr('EUR'), Iso4217Code.eur);
    });

    test('getIsoCode with valid lower case string', () {
      expect(isoCodeFromStr('eur'), Iso4217Code.eur);
    });

    test('getIsoCode with invalid string', () {
      expect(isoCodeFromStr('WWWW'), Iso4217Code.usd);
    });
  });
}
