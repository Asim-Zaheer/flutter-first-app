import 'package:flutter/material.dart';
import 'package:my_app/learn_flutter.dart';

class  HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          debugPrint("learn");
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return LearnPage();
          }
          ));
        },
        child: const Text("learn FLUTTER"),
        ),
    );
  }
}