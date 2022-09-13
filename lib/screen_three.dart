import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';
  final String name;
  final int number;
  const ScreenThree({Key? key, required this.name, required this.number}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name.toString()+ ' '+  widget.number.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context)=> const ScreenThree()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('Screen 3'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
