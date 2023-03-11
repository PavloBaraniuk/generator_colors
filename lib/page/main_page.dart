import 'dart:math';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color? _color;

  @override
  void initState() {
    _generateColor();
    super.initState();
  }

  void _generateColor() {
    final Color color = _getColor();

    setState(() => _color = color);
  }

  Color _getColor() {
    final Random random = Random();
    final Color color = Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

    return color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _generateColor(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        backgroundColor: _color,
        body: const Center(
          child: Text(
            'Hello there',
          ),
        ),
      ),
    );
  }
}
