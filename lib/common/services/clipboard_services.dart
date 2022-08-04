import 'package:flutter/services.dart';

class ClipboardService {
  static Future<void> copyToClipboard(String text) async {
    return Clipboard.setData(ClipboardData(text: text));
  }
}
