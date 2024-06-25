import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String?imagePath;
  final String enName;
  final String jpName;
  final String audioPath;

  ItemModel(
      {this.imagePath,
      required this.enName,
      required this.jpName,
      required this.audioPath});

 Future<void> playSound() async {
  final player = AudioPlayer();
  await player.play(AssetSource(audioPath));
 }
}
