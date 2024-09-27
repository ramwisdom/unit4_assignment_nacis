import 'package:flutter/material.dart';

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
      home: profile(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ram Wisdom F. Nacis'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/profilePic.jpg'),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Ram Wisdom F. Nacis',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                buildInfo(
                    Icons.email, 'Email ', ' ramwisdom.nacis@wvsu.edu.ph'),
                buildInfo(Icons.phone, 'Phone ', ' 09063400612'),
                buildInfo(Icons.location_city, 'City ', ' Iloilo City'),
                buildInfo(Icons.favorite, 'Hobbies',
                    'Sleeping, Eating, Reading, Gaming, Singing'),
                buildInfo(Icons.work, 'Occupation', ' Student'),
                buildInfo(Icons.cake, 'Birthday', ' August 12, 2004'),
                const SizedBox(height: 32),
                const Text('My Biography',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 8,
                ),
                // Expanded()
                const Text(
                    'Ram, born in Miagao, Iloilo City in the 12th of August 2004, is a passionate individual with a love for singing, reading, eating, and sleeping. From an early age, Ram found joy in singing, often performing for friends and family, and exploring various musical genres.')
              ],
            )));
  }

  Widget buildInfo(IconData icon, String label, String data) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 24),
            const SizedBox(width: 16),
            Text(
              '$label:',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              data,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ));
  }
}
