import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String anthoTime2 = 'loading';

  void setupWorldTime() async {
    WorldTime anthoInstance = WorldTime(anthoLocation: 'Berlin', anthoFlag: 'germany.png', anthoUrl: 'Europe/Berlin');
    await anthoInstance.getTime();
    print(anthoInstance.anthoTime);
    setState(() {
      anthoTime2 = anthoInstance.anthoTime;
    });
  }

  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(anthoTime2),
      ),
    );
  }
}

