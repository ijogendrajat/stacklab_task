import 'package:flutter/material.dart';

class DeviceInfo {
  static width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
