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


/// Returns the Iso4217Code for a given iso code string.
///
/// The `isoCodeStr` argument specifies the iso code string.
///
/// Note: In case of an invalid iso code string, USD is given per default.
Iso4217Code isoCodeFromStr(String isoCodeStr) {
  for (Iso4217Code isoCode in currencies.keys) {
    if (currencies[isoCode].isoCode == isoCodeStr.toUpperCase()) {
      return isoCode;
    }
  }
  return Iso4217Code.usd;
}

/// List of all Iso4217 currencies.
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
