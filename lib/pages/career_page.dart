import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Source { Asset, Network }

class CareerPage extends StatefulWidget {
  const CareerPage({Key? key}) : super(key: key);

  @override
  State<CareerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<CareerPage> {
  late CustomVideoPlayerController _customVideoPlayerController;

  Source currentSource = Source.Asset;

  String videoUri =
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('career'.tr),
      ),
      body: isLoading
          ? const Center(
        child: CircularProgressIndicator(
          color: Colors.red,
        ),
      )
          : Center(
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'career'.tr, // Your video title here
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomVideoPlayer(
              customVideoPlayerController: _customVideoPlayerController,
            ),
                    ],
                  ),
          ),
    );
  }


  void initializeVideoPlayer(Source source) {
    setState(() {
      isLoading = true;
    });
    CachedVideoPlayerController _videoPlayerController;

    _videoPlayerController = CachedVideoPlayerController.network(videoUri)
      ..initialize().then((value) {
        setState(() {
          isLoading = false;
        });
      });

    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: _videoPlayerController);
  }
}
