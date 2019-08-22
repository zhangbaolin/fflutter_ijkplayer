import 'package:flutter/material.dart';
import 'package:fflutter_ijkvideo/fflutter_ijkvideo.dart';
import 'package:ijkplayer_example/page/index.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  IjkConfig.isLog = true;
//  IjkConfig.level = LogLevel.verbose;
  await IjkManager.initIJKPlayer();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        home: IndexPage(),
      ),
    );
  }
}
