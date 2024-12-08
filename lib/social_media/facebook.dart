
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class MyWeb extends StatefulWidget {
  const MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController() 
    ////https://www.just.edu.so/
    ..loadRequest(Uri.parse('https://www.facebook.com/login/device-based/regular/login/?login_attem'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Facebook Login'),centerTitle: true,),
      body: WebViewWidget(controller: controller),
    );
  }
}