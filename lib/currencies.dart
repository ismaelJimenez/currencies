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

enum Iso4217Code {
  aud,
  bgn,
  brl,
  cad,
  chf,
  czk,
  dkk,
  eur,
  gbp,
  hkd,
  hrk,
  huf,
  idr,
  ils,
  inr,
  isk,
  jpy,
  krw,
  mxn,
  myr,
  nok,
  nzd,
  php,
  pln,
  ron,
  rub,
  sek,
  sgd,
  trk,
  thb,
  usd,
  zar
}

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
  Iso4217Code.aud: const Currency(
      isoCode: 'AUD',
      fullName: 'Australian Dollar',
      symbol: r'A$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.bgn: const Currency(
      isoCode: 'BGN',
      fullName: 'Bulgarian Lev',
      symbol: r'лв',
      minorUnit: 'stotinki',
      minorFraction: 100),
  Iso4217Code.brl: const Currency(
      isoCode: 'BRL',
      fullName: 'Brazilian Real',
      symbol: r'R$',
      minorUnit: 'centavo',
      minorFraction: 100),
  Iso4217Code.cad: const Currency(
      isoCode: 'CAD',
      fullName: 'Canadian Dollar',
      symbol: r'C$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.chf: const Currency(
      isoCode: 'CHF',
      fullName: 'Swiss Franc',
      symbol: r'CHF',
      minorUnit: 'rappen',
      minorFraction: 100),
  Iso4217Code.chf: const Currency(
      isoCode: 'CNY',
      fullName: 'Chinese Yuan Renminbi',
      symbol: r'¥',
      minorUnit: 'jiao',
      minorFraction: 10),
  Iso4217Code.czk: const Currency(
      isoCode: 'CZK',
      fullName: 'Czech Koruna',
      symbol: r'Kč',
      minorUnit: 'haléru',
      minorFraction: 100),
  Iso4217Code.dkk: const Currency(
      isoCode: 'DKK',
      fullName: 'Danish Krone',
      symbol: r'Kr.',
      minorUnit: 'Øre',
      minorFraction: 100),
  Iso4217Code.eur: const Currency(
      isoCode: 'EUR',
      fullName: 'Euro',
      symbol: r'€',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.gbp: const Currency(
      isoCode: 'GBP',
      fullName: 'British Pound',
      symbol: r'£',
      minorUnit: 'penny',
      minorFraction: 100),
  Iso4217Code.hkd: const Currency(
      isoCode: 'HKD',
      fullName: 'Hong Kong Dollar',
      symbol: r'HK$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.hrk: const Currency(
      isoCode: 'HRK',
      fullName: 'Croatian Kuna',
      symbol: r'kn',
      minorUnit: 'lipa',
      minorFraction: 100),
  Iso4217Code.huf: const Currency(
      isoCode: 'HUF',
      fullName: 'Hungarian Forint',
      symbol: r'Ft',
      minorUnit: 'fillér',
      minorFraction: 100),
  Iso4217Code.idr: const Currency(
      isoCode: 'IDR',
      fullName: 'Indonesian Rupiah',
      symbol: r'Rp',
      minorUnit: 'sen',
      minorFraction: 100),
  Iso4217Code.ils: const Currency(
      isoCode: 'ILS',
      fullName: 'Israeli Shekel',
      symbol: r'₪',
      minorUnit: 'agorat',
      minorFraction: 100),
  Iso4217Code.inr: const Currency(
      isoCode: 'INR',
      fullName: 'Indian Rupee',
      symbol: r'₹',
      minorUnit: 'paisa',
      minorFraction: 100),
  Iso4217Code.isk: const Currency(
      isoCode: 'ISK',
      fullName: 'Icelandic Krona',
      symbol: r'íkr',
      minorUnit: '',
      minorFraction: 100),
  Iso4217Code.jpy: const Currency(
      isoCode: 'JPY',
      fullName: 'Japanese Yen',
      symbol: r'¥',
      minorUnit: 'sen',
      minorFraction: 100),
  Iso4217Code.krw: const Currency(
      isoCode: 'KRW',
      fullName: 'South Korean Won',
      symbol: r'₩',
      minorUnit: 'jeon',
      minorFraction: 100),
  Iso4217Code.mxn: const Currency(
      isoCode: 'MXN',
      fullName: 'Mexican Peso',
      symbol: r'Mex$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.myr: const Currency(
      isoCode: 'MYR',
      fullName: 'Malaysian Ringgit',
      symbol: r'RM',
      minorUnit: 'sen',
      minorFraction: 100),
  Iso4217Code.nok: const Currency(
      isoCode: 'NOK',
      fullName: 'Norwegian Krone',
      symbol: r'kr.',
      minorUnit: 'øre',
      minorFraction: 100),
  Iso4217Code.nzd: const Currency(
      isoCode: 'NZD',
      fullName: 'New Zealand Dollar',
      symbol: r'NZ$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.php: const Currency(
      isoCode: 'PHP',
      fullName: 'Philippine Peso',
      symbol: r'₱',
      minorUnit: 'sentimo',
      minorFraction: 100),
  Iso4217Code.pln: const Currency(
      isoCode: 'PLN',
      fullName: 'Polish Zloty',
      symbol: r'zł',
      minorUnit: 'grosze',
      minorFraction: 100),
  Iso4217Code.ron: const Currency(
      isoCode: 'RON',
      fullName: 'Romanian Leu',
      symbol: r'lei',
      minorUnit: 'bani',
      minorFraction: 100),
  Iso4217Code.rub: const Currency(
      isoCode: 'RUB',
      fullName: 'Russian Ruble',
      symbol: r'₽',
      minorUnit: 'kopek',
      minorFraction: 100),
  Iso4217Code.sek: const Currency(
      isoCode: 'SEK',
      fullName: 'Swedish Krona',
      symbol: r'kr',
      minorUnit: 'ören',
      minorFraction: 100),
  Iso4217Code.sgd: const Currency(
      isoCode: 'SGD',
      fullName: 'Singapore Dollar',
      symbol: r'S$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.trk: const Currency(
      isoCode: 'TRY',
      fullName: 'Turkish Lira',
      symbol: r'₺',
      minorUnit: 'kuruş',
      minorFraction: 100),
  Iso4217Code.thb: const Currency(
      isoCode: 'THB',
      fullName: 'Thai Baht',
      symbol: r'฿',
      minorUnit: 'satang',
      minorFraction: 100),
  Iso4217Code.usd: const Currency(
      isoCode: 'USD',
      fullName: 'US Dollar',
      symbol: r'$',
      minorUnit: 'cent',
      minorFraction: 100),
  Iso4217Code.zar: const Currency(
      isoCode: 'ZAR',
      fullName: 'South African Rand',
      symbol: r'R',
      minorUnit: 'cent',
      minorFraction: 100),
};
