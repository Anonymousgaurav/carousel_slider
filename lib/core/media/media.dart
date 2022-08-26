library images;

import 'package:aish_flutter_test/core/enums/app_enum.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

part 'widgets/video_player_widget.dart';

enum TypeFile { png, jpg, jpeg, svg, mp4, webm }

class MediaAssets {
  final String suffix;
  final AssetEnum asset;
  final TypeFile type;

  const MediaAssets(this.suffix, {required this.asset, required this.type});

  String get patch => "${asset.patch}$suffix.${type.name}";
}

class Images {
  Images._();

  static const MediaAssets world =
      MediaAssets("world", asset: AssetEnum.images, type: TypeFile.jpeg);
  static const MediaAssets books =
      MediaAssets("books", asset: AssetEnum.images, type: TypeFile.jpeg);
}

class Videos {
  Videos._();

  static const MediaAssets bear =
      MediaAssets("bear", asset: AssetEnum.videos, type: TypeFile.mp4);
}
