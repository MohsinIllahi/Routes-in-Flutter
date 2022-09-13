import 'package:flutter/material.dart';
import 'package:routes/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';

  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(arguments['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>  ScreenThree(
            name: arguments['name'],
            number: arguments['age'],
          )));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('Screen 2'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
