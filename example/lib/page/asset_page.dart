import 'package:flutter/material.dart';
import 'package:fflutter_ijkvideo/fflutter_ijkvideo.dart';

class AssetPage extends StatefulWidget {
  @override
  _AssetPageState createState() => _AssetPageState();
}

class _AssetPageState extends State<AssetPage> {
  IjkMediaController controller = IjkMediaController();
  @override
  void initState() {
    super.initState();
    controller.setAssetDataSource(
      "assets/video0.mp4",
      autoPlay: true,
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: 300,
            child: IjkPlayer(
            mediaController: controller,
          ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () async {
          await controller.pause();
        },
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
