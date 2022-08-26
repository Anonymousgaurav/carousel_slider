import 'package:aish_flutter_test/core/media/media.dart';
import 'package:aish_flutter_test/core/slider/slide_model.dart';
import 'package:aish_flutter_test/core/slider/slider_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SliderWidget(sliders: [
        SlideModel(
            assets: Images.world,
            name: "Write your Card",
            description: "Lorem Ipsum is simply dummy text of "
                "the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard"
                "scrambled it to make a type specimen book."),
        SlideModel(
            assets: Videos.coding,
            name: "Write your Card",
            description: "Lorem Ipsum is simply dummy text of "
                "the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard"
                "scrambled it to make a type specimen book."),
        SlideModel(
            assets: Images.books,
            name: "Write your Card",
            description: "Lorem Ipsum is simply dummy text of "
                "the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard"
                "scrambled it to make a type specimen book."),
        SlideModel(
            assets: Videos.scene,
            name: "Write your Card",
            description: "Lorem Ipsum is simply dummy text of "
                "the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard"
                "scrambled it to make a type specimen book."),
      ]),
    ));
  }
}
