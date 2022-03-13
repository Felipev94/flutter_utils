import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_utils/dial_codes/dial_codes_service.dart';

void main() {
  test('get dial list', () async {
    List<DialCodeData> list = await DialCodes().getDialCodesList();
    print(list);
    expect(list, isNotEmpty);
  });
}
