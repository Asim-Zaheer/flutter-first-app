import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn here with us , Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Column(children: [
        Image.asset("images/qr_code.png"),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Color.fromARGB(255, 27, 27, 27),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: Colors.red,
          // width: double.infinity,
          height: 50,
          child: const Center(
            child:  Text(
              "hello my  ",
              style: TextStyle(
                color: Color.fromARGB(255, 20, 20, 20)
                ),
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          debugPrint("done");
          }, 
          child: const Text("helllllooooooooo evelb=vated vytt-in"),),
          OutlinedButton(onPressed: (){
          debugPrint("done");
          }, 
          child: const Text("helllllooooooooo outlined button"),),
            TextButton(onPressed: (){
          debugPrint("done");
          }, 
          child: const Text("helllllooooooooo TextButton button"),
          ),
          // GestureDetector(onTap: () {
          //   debugPrint("whats app nigga");
          // },),
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.local_activity,
              color: Colors.red,
              ),
              Text("ROW WIDGET"),
              Icon(Icons.local_activity_rounded,
              color: Colors.cyan,
              )

            ],
          )
      ]),
    );
  }
}
