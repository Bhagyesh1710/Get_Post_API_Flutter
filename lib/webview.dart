import 'package:flutter/material.dart';
import 'package:flutter_task/homepage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  String websiteUrl;
  WebViewPage({Key? key, required this.websiteUrl}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    print(widget.websiteUrl);
    return Scaffold(
      appBar: AppBar(
        title: Text('webpage'),
      ),
      body: Center(
        child: WebView(
          initialUrl: widget.websiteUrl,
        ),
      ),
    );
  }
}
