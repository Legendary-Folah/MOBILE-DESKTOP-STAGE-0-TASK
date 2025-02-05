import 'package:flutter/material.dart';
import 'package:mobile_desktop_stage_0_task/url_launcher_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width / 1.5,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    elevation: WidgetStateProperty.all(4),
                  ),
                  onPressed: () {
                    UrlLauncherService.launchWeb(
                        'https://github.com/Legendary-Folah/MOBILE-DESKTOP-STAGE-0-TASK');
                  },
                  child: Text(
                    'Github Repository',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                width: width / 1.5,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    elevation: WidgetStateProperty.all(4),
                  ),
                  onPressed: () {
                    UrlLauncherService.launchWeb(
                        'https://hng.tech/hire/flutter-developers');
                  },
                  child: Text(
                    'Hire Flutter Developers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
