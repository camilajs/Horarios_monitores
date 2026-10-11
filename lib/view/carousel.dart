import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget{
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Carousel(),
    );
  }
}

class Carousel extends StatefulWidget{
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 40,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 400),
          child: CarouselView.weighted(
            flexWeights: const <int>[3, 3, 3, 2, 1],
            consumeMaxWeight: false,
            children: CardInfo.values.map((CardInfo info) {
              return ColoredBox(color: info.backgroundColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: .center,
                  children: <Widget>[
                    Icon(info.icon, color: info.color, size: 32.0),
                    Text(
                      info.label,
                      style: const TextStyle(fontWeight: .bold),
                      overflow: .clip,
                      softWrap: false,
                    )
                  ],
                ),
              ),);
            }).toList(),
          ),
        ),
      ],
    );
  }
}

enum CardInfo {
  camera('Cameras', Icons.video_call, Color(0xff2354C7), Color(0xffECEFFD)),
  lighting('Lighting', Icons.lightbulb, Color(0xff806C2A), Color(0xffFAEEDF)),
  climate('Climate', Icons.thermostat, Color(0xffA44D2A), Color(0xffFAEDE7)),
  wifi('Wifi', Icons.wifi, Color(0xff417345), Color(0xffE5F4E0)),
  media('Media', Icons.library_music, Color(0xff2556C8), Color(0xffECEFFD)),
  security(
    'Security',
    Icons.crisis_alert,
    Color(0xff794C01),
    Color(0xffFAEEDF),
  ),
  safety(
    'Safety',
    Icons.medical_services,
    Color(0xff2251C5),
    Color(0xffECEFFD),
  ),
  more('', Icons.add, Color(0xff201D1C), Color(0xffE3DFD8));

  const CardInfo(this.label, this.icon, this.color, this.backgroundColor);
  final String label;
  final IconData icon;
  final Color color;
  final Color backgroundColor;
}
