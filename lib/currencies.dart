// Copyright 2019 Ismael Jiménez. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library finance;

import 'dart:math';
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
}

final Map<String, Currency> currencies = <String, Currency>{
  'USD': const Currency(
      isoCode: 'USD',
      fullName: 'US Dollar',
      symbol: r'$',
      minorUnit: 'cent',
      minorFraction: 100),
  'EUR': const Currency(
      isoCode: 'EUR',
      fullName: 'Euro',
      symbol: r'€',
      minorUnit: 'cent',
      minorFraction: 100)
};
