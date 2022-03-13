// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';
import 'package:flutter_utils/flutter_utils.dart';

void main() {
  test('Counter increments smoke test', () async {
    final test = await DialCodes().getDialCodesList();
    print(test);
    expect(2 + 1, 3);
  });
}
