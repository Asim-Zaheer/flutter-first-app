import 'package:flutter/material.dart';
import 'package:my_app/contact.dart';
import 'package:my_app/home_page.dart';
import 'package:my_app/person_Data.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch:Colors.purple
      ),
      home: const RootPage(

      ),
    );
  }
}  
 
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    // LearnPage(),
    PersonPage(),
    ContactPart(),
  ] ;
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar: AppBar(
        title: const Text('First App'),

         
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('clicked');
        },
        child:const Icon(Icons.add_circle_outline_rounded)
        ),
        bottomNavigationBar: NavigationBar(destinations:const  [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons  .contact_emergency), label: 'Contact'),
          NavigationDestination(icon: Icon(Icons  .person), label: 'Person'),

 
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage=index;
          });
        },
          selectedIndex: currentPage,
        ),
    );
  }
}