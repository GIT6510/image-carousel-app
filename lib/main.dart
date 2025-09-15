import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Image Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List imageUrls = [
    'https://picsum.photos/id/1015/600/400',
    'https://picsum.photos/id/1025/600/400',
    'https://picsum.photos/id/1035/600/400',
    'https://picsum.photos/id/1045/600/400',
    'https://picsum.photos/id/1055/600/400',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrls[index],
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Image Gallery',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Swipe left or right to view more images',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
