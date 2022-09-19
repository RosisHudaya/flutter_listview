import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.tiktok];
  final images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT60dymWTqBVloj3g1leMJazarO9YGf7torSA&usqp=CAU",
    "https://awsimages.detik.net.id/community/media/visual/2021/04/15/badak-bercula-satu-nepal.jpeg?w=700&q=90",
    "https://upload.wikimedia.org/wikipedia/commons/6/62/Panthera_tigris_sumatran_subspecies.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(titles[index]),
                subtitle: Text(subtitles[index]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    images[index],
                  ),
                ),
                trailing: Icon(icons[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
