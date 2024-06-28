import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool isSwitch = false;
 bool ? isCheckBox = false;
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
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.info_rounded,),
        ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline_rounded,),
        ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.medical_information_rounded,),
        )
      ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
            height: 50,
            child: const Center(
              child: Text(
                "hello my  ",
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 20, 20),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:isSwitch? Colors.amber : Color.fromARGB(255, 0, 0, 0)
            ),
            onPressed: () {
              debugPrint("done");
            },
            child: const Text("helllllooooooooo elevated button"),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("done");
            },
            child: const Text("helllllooooooooo outlined button"),
          ),
          TextButton(
            onPressed: () {
              debugPrint("done");
            },
            child: const Text("helllllooooooooo TextButton button"),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              debugPrint("Gesture detected");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_activity,
                  color: Colors.red,
                ),
                Text("ROW WIDGET"),
                Icon(
                  Icons.local_activity_rounded,
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
          Switch(
            value: isSwitch,
            onChanged: (bool  newBool) {
              setState(() {
                isSwitch = newBool;
              });
            },
          ),
          Checkbox(value: isCheckBox, onChanged: (bool  ?newBool ){
            setState(() {
              isCheckBox = newBool;
            });
          }),
          Image.asset("images/qr_code.png"),
        ]),
      ),
    );
  }
}
