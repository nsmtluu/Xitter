import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> tweets = [
    {'user': 'flutterdev', 'tweet': "Flutter'da yeni bir proje başlattim! 🎉"},
    {
      'user': 'dartlang',
      'tweet': "Dart 3 ile neler yapabileceğinizi keşfedin 🚀"
    },
    {
      'user': 'googledevs',
      'tweet': "Google I/O etkinliğinde heyecan verici duyurular geliyor! 📣"
    },
    {
      'user': 'uxdesigner',
      'tweet': "Kullanici deneyimi tasariminda yeni trendler 🎨"
    },
    {
      'user': 'programmerlife',
      'tweet': "Kod yazarken en sevdiğiniz müzikler neler? 🎧"
    },
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 25, // Avatar boyutunu artırın
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Kullanıcı avatarı URL'si
            ),
            title: Text(
              tweets[index]['user']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(tweets[index]['tweet']!),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
