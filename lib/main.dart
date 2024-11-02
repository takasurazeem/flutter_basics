import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String buttonName = "Click";
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal.shade800,
                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = "Clicked me.";
                    });
                    if (kDebugMode) {
                      print("Button clicked");
                    }
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurple.shade300,
                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = "Clicked me.";
                    });
                    if (kDebugMode) {
                      print("Button clicked");
                    }
                  },
                  child: Text(buttonName),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
          currentIndex: currentIndex,
          onTap: onBottomBarTapped,
        ),
      ),
    );
  }

  void onBottomBarTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
