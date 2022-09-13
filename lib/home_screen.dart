import 'package:flutter/material.dart';
import 'package:routes/screen_two.dart';

class HomeScreen extends StatefulWidget {
    static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
        title: const Text('Routing Chapter'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id,
                arguments: {
                  'name' : 'Mohsin Illahi Bhutto',
                  'age' : 30,
                }
                );
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context)=>const ScreenTwo(
              //       name: 'Mohsin Illahi',
              //       num: 12,
              //     )));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('Screen 1'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
