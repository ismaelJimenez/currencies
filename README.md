The fundamental package for handling currencies with Dart.

[![pub package](https://img.shields.io/pub/v/currencies.svg)](https://pub.dev/packages/currencies)
[![Build Status](https://travis-ci.org/ismaelJimenez/currencies.svg?branch=master)](https://travis-ci.org/ismaelJimenez/currencies)

This package provides a set of high-level classes that make it easy to handle currencies with Dart. It's platform-independent, supports iOS and Android.

# Using
```dart
  // Print US Dollar information
  print(currencies[Iso4217Code.usd]);
```
The previous command show as output:
```dart
Currency{isoCode: USD, fullName: US Dollar, symbol: $, minorUnit: cent, minorFraction: 100}
```
