part of app_enum;

enum AssetEnum { assets,images, videos }

extension AssetExtension on AssetEnum{
  String get patch {
    switch(this){
      case AssetEnum.assets :return "assets/";
      case AssetEnum.images :return "assets/images/";
      case AssetEnum.videos:return "assets/videos/";
    }
  }
}