
import 'package:aish_flutter_test/core/media/media.dart';

typedef SlideList = List<SlideModel>;

class SlideModel {
  final String name;
  final String description;
  final MediaAssets assets;

  SlideModel(
      {required this.assets, required this.name, required this.description});
}