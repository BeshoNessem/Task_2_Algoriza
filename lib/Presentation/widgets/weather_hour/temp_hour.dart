import 'package:flutter/material.dart';
import 'package:weather_task2/Presentation/data_resources/fonts.dart';
import 'package:weather_task2/Presentation/data_resources/style.dart';
class HourlyTemp extends StatelessWidget {
  final String temp, hour;
  const HourlyTemp({Key? key, required this.hour, required this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      child: Column(
        children: [
          Text(
            hour,
            style: getRegularStyle(),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.circle,
              color: Colors.amber,
            ),
          ),
          Text(
            temp + "°",
            style: getRegularStyle(fontSize: FontSize.s14),
          ),
        ],
      ),
    );
  }
}