
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IntraCollege extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return WebviewScaffold(
     url: "https://en.wikipedia.org/wiki/National_Institute_of_Technology_Calicut",
     withZoom: true,
   );
  }

}