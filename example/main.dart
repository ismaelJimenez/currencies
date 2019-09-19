import 'package:currencies/currencies.dart';

void main(List<String> arguments) {
  // Print US Dollar information
  print('isoCode: ${currencies['USD'].isoCode}, '
      'fullName: ${currencies['USD'].fullName}, '
      'symbol: ${currencies['USD'].symbol}, '
      'minorUnit: ${currencies['USD'].minorUnit}, '
      'minorFraction: ${currencies['USD'].minorFraction}');
}
