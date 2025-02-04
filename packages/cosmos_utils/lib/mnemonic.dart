import 'package:bip39/bip39.dart' as bip39;
import 'package:flutter/foundation.dart';

String _generateMnemonic(int strength) => bip39.generateMnemonic(strength: strength);

Future<String> generateMnemonic({int strength = 256}) => compute(_generateMnemonic, strength);
