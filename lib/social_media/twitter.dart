
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class telegramscreen extends StatefulWidget {
  const telegramscreen({super.key});

  @override
  State<telegramscreen> createState() => _MyWebState();
}

class _MyWebState extends State<telegramscreen> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController() 
    ////
    ..loadRequest(Uri.parse('https://x.com/i/flow/login'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Go Twitter '),centerTitle: true,),
      body: WebViewWidget(controller: controller),
    );
  }
}