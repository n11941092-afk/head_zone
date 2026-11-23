
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {

  final AudioPlayer player = AudioPlayer();

  bool isPlaying = false;
  bool isShuffle = false;
  bool isRepeat = false;

  double value = 0;

  Duration position = Duration.zero;
  Duration duration = Duration.zero;
  String songPath = 'songs/song.mp3';

 // String songPath =
     // 'song/aar music bollywood punjabhi music 298969.mp3';

  @override
  void initState() {
    super.initState();

    player.onDurationChanged.listen((d) {
      setState(() => duration = d);
    });

    player.onPositionChanged.listen((p) {
      setState(() => position = p);
    });

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onPlayerComplete.listen((event) {
      setState(() => position = Duration.zero);
    });
  }

  String formatTime(Duration time) {
    String minutes =
    time.inMinutes.toString().padLeft(2, '0');

    String seconds =
    (time.inSeconds % 60).toString().padLeft(2, '0');

    return '$minutes:$seconds';
  }

  Future<void> playPause() async {
    if (isPlaying) {
      await player.pause();
    } else {
      await player.play(AssetSource(songPath));
    }
  }

  Future<void> restartSong() async {
    await player.seek(Duration.zero);

    if (!isPlaying) {
      await player.play(AssetSource(songPath));
    }
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double maxValue =
    duration.inMilliseconds > 0
        ? duration.inMilliseconds.toDouble()
        : 1;

    return Scaffold(
      backgroundColor: Color(0xffF2EDFF),
      body: Center(
        child: Container(
          width: width * 0.95,
          padding: EdgeInsets.all(width * 0.07),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withOpacity(0.15),
                blurRadius: 15,
                spreadRadius: 2,
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    InkWell(
                      onTap: (){Navigator.pop(context);},
                        child: Icon(Icons.arrow_back, size: width * 0.04)),
                    SizedBox(width: width * 0.25),
                    Text(
                      "Music",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.07),
                Container(
                  width: width * 0.65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEEE7FF),
                  ),
                  child: Center(
                    child: Container(
                      width: width * 0.40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffC58AFF),
                            Color(0xff5125CC),
                          ],
                        ),
                      ),
                      child: Icon(
                        Icons.music_note,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.035),

                Text(
                  "Dream Big",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Unknown Artist",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    color: Colors.deepPurple,
                  ),
                ),

                SizedBox(height: height * 0.025),

                Slider(
                  value: position.inMilliseconds
                      .toDouble()
                      .clamp(0, maxValue),
                  max: maxValue,
                  activeColor: Color(0xff7440F5),
                  inactiveColor: Color(0xffD8CBFF),
                  onChanged: (newValue) {
                    setState(() {
                      position = Duration(
                        milliseconds: newValue.toInt(),
                      );
                    });
                  },
                  onChangeEnd: (newValue) {
                    player.seek(
                      Duration(milliseconds: newValue.toInt()),
                    );
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatTime(position),
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                    Text(
                      formatTime(duration),
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.025),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isShuffle = !isShuffle;
                        });
                      },
                      child: Icon(
                        Icons.shuffle,
                        color: isShuffle
                            ? Colors.deepPurple
                            : Colors.grey,
                        size: width * 0.04,
                      ),
                    ),

                    GestureDetector(
                      onTap: restartSong,
                      child: Icon(
                        Icons.skip_previous,
                        size: width * 0.04,
                      ),
                    ),

                    GestureDetector(
                      onTap: playPause,
                      child: Container(
                        width: width * 0.19,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff7544F5),
                        ),
                        child: Icon(
                          isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: width * 0.04,
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: restartSong,
                      child: Icon(
                        Icons.skip_next,
                        size: width * 0.04,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isRepeat = !isRepeat;
                        });

                        player.setReleaseMode(
                          isRepeat
                              ? ReleaseMode.loop
                              : ReleaseMode.stop,
                        );
                      },
                      child: Icon(
                        Icons.repeat,
                        color: isRepeat
                            ? Colors.deepPurple
                            : Colors.grey,
                        size: width * 0.04,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
