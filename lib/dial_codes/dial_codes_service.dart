import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';

class DialCodes {
  Future<List<DialCodeData>> getDialCodesList() async {
    try {
      final filePath = 'assets/dial_codes/dial_codes.json';
      return File(filePath).readAsString().then((value) {
        final jsonString = value;
        final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
        print(jsonMap);
        List data = jsonMap['dialCodes'];

        List<DialCodeData> listCodes =
            data.map((e) => DialCodeData.fromJson(e)).toList();
        return listCodes;
      }).catchError((e) {
        print('Error on getDialCodesList: ' + e.toString());
        return <DialCodeData>[];
      });
      // final jsonString = await rootBundle
      //     .loadString('assets/dial_codes/dial_codes.json')
      //     .catchError((e) {
      //   print('Error on getDialCodesList: ' + e.toString());
      // });

    } catch (e) {
      log('Error on getDialCodesList: ', error: e);
      return <DialCodeData>[];
    }
  }
}

class DialCodeData {
  String? numeric;
  String? alpha2Code;
  String? alpha3Code;
  String? name;
  String? nationality;
  String? dialCode;
  String? flag;

  DialCodeData(
      {this.numeric,
      this.alpha2Code,
      this.alpha3Code,
      this.name,
      this.nationality,
      this.dialCode,
      this.flag});

  DialCodeData.fromJson(Map<String, dynamic> json) {
    numeric = json['numeric'];
    alpha2Code = json['alpha2Code'];
    alpha3Code = json['alpha3Code'];
    name = json['name'];
    nationality = json['nationality'];
    dialCode = json['dialCode'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['numeric'] = this.numeric;
    data['alpha2Code'] = this.alpha2Code;
    data['alpha3Code'] = this.alpha3Code;
    data['name'] = this.name;
    data['nationality'] = this.nationality;
    data['dialCode'] = this.dialCode;
    data['flag'] = this.flag;
    return data;
  }
}
