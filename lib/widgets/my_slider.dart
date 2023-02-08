import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
        thumbColor: Colors.red,
        activeTrackColor: Colors.red[700],
        overlayColor: Colors.red[100],
      ),
      child: Stack(
        children: [
          Slider(
            value: _value,
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
              });
            },
          ),
          Container(
            width: _value * 150,
            height: 2,
            color: Colors.red[700],
          ),
        ],
      ),
    );
  }
}
