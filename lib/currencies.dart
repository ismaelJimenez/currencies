// Copyright 2019 Ismael Jiménez. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library finance;

import 'package:meta/meta.dart';

@immutable
class Currency {
  final String isoCode;
  final String fullName;
  final String symbol;
  final String minorUnit;
  final int minorFraction;

  const Currency(
      {this.isoCode,
      this.fullName,
      this.symbol,
      this.minorUnit,
      this.minorFraction});

  // Implement toString to make it easier to see information about
  // each currency when using the print statement.
  @override
  String toString() {
    return 'Currency{isoCode: $isoCode, fullName: $fullName, symbol: $symbol, minorUnit: $minorUnit, minorFraction: $minorFraction}';
  }
}

enum Iso4217Code { usd, eur }

final Map<Iso4217Code, Currency> currencies = <Iso4217Code, Currency>{
  Iso4217Code.usd: const Currency(
      isoCode: 'USD',
      fullName: 'US Dollar',
      symbol: r'$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.eur: const Currency(
      isoCode: 'EUR',
      fullName: 'Euro',
      symbol: r'€',
      minorUnit: 'cent',
      minorFraction: 100)
};
