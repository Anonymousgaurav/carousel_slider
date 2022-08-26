import 'package:aish_flutter_test/core/media/media.dart';
import 'package:aish_flutter_test/core/media/widgets/show_image.dart';
import 'package:aish_flutter_test/core/slider/slide_model.dart';
import 'package:aish_flutter_test/presentation/styles/slider_styles.dart';
import 'package:aish_flutter_test/utils/DeviceUtils.dart';
import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key, required this.sliders, bool? autoPlay})
      : autoPlay = autoPlay ?? false,
        super(key: key);
  final SlideList sliders;
  final bool autoPlay;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget>
    with SingleTickerProviderStateMixin {
  int indexPage = 0;
  bool b = false;

  late AnimationController animateControllerTitle;

  @override
  initState() {
    animateControllerTitle = AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: widget.sliders.length,
            itemBuilder: (BuildContext context, int index, i) {
              var slider = widget.sliders[index];

              if (slider.assets.type.name == "webm" ||
                  slider.assets.type.name == "mp4") {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: DeviceUtils.fractionHeight(context, fraction: 0.1),
                    width: DeviceUtils.fractionWidth(context, fraction: 1),
                    child: VideoPlayerWidget(
                        change: (controller) {
                          if (indexPage == index) controller.play();
                          if (controller.value.isPlaying &&
                              indexPage != index) {
                            controller.pause();
                          }
                        },
                        media: Videos.bear,
                        isLooping: true),
                  ),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 500,
                    width: 350,
                    color: Colors.black,
                    child: ShowMedia(
                      slider.assets,
                      width: DeviceUtils.fractionWidth(context, fraction: 1),
                      fit: BoxFit.fill,
                    )),
              );
            },
            options: CarouselOptions(
                height: DeviceUtils.fractionHeight(context, fraction: 1.8),
                aspectRatio: 16 / 12,
                viewportFraction: 0.7,
                padEnds: false,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: widget.autoPlay,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                onPageChanged: (i, c) => {
                      setState(
                        () => indexPage = i,
                      ),
                      animateControllerTitle.reset()
                    },
                scrollDirection: Axis.horizontal)),
        FadeInUp(
            from: 10,
            manualTrigger: true,
            controller: (c) => animateControllerTitle = c,
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.sliders[indexPage].name,
                    style: SliderStyles.title,
                  ),
                  SizedBox(
                    height: DeviceUtils.fractionHeight(context, fraction: 60),
                  ),
                  Text(
                    widget.sliders[indexPage].description,
                    style: SliderStyles.description,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
