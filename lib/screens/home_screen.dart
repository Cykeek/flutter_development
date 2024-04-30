import 'package:demo/utils/apps_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      body: Column(
        children: [
          Row(
            children: [
              _mainButton(() => null, 'New File'),
            ],
          )
        ],
      ),
    );
  }

  ElevatedButton _mainButton(Function()? onPressed, String text ) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text)
    );
  }
}