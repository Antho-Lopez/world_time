import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  // void getData() async {
  //   // SIMULATE NETWORK REQUEST FOR USERNAME
  //   // LE AWAIT ICI DIT AU CODE : "OK JE VEUX QUE TU ATTENDES ICI AVANT DE
  //   // CONTINUER DANS LE CODE
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return 'Anthony';
  //   });
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return 'Normalement après';
  //   });
  //   print('$username - $bio');
  // }
  //
  // @override
  // void initState(){
  //   super.initState();
  //   print('initState function ran');
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Choose a location'),
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter+= 1;
          });
        }, child: Text('counter is $counter'),
      ),
    );
  }
}
