import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:quick_actions_practice/page1.dart';
import 'package:quick_actions_practice/page2.dart';
import 'package:quick_actions_practice/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuickActions _quickActions = QuickActions();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quickActions.initialize((String shortcut) {
      print(shortcut);
      if(shortcut != null){
        if(shortcut == 'page1'){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => Page1()));
        }
        else if(shortcut == 'page2'){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => Page2()));
        }
        else if(shortcut == 'page3'){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => Page3()));
        }
      }
      else{
        print('No action');
      }
    });
    _quickActions.setShortcutItems(<ShortcutItem>[
      ShortcutItem(type: 'page1', localizedTitle: 'Go to PG1' ),
      ShortcutItem(type: 'page2', localizedTitle: 'Go to PG2' ),
      ShortcutItem(type: 'page3', localizedTitle: 'Go to PG3')
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quick Actions",
        ),
      ),
      body: Center(
        child: Text(
          'Quick Actions'
        ),
      ),
    );
  }
}


