import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Mr Image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Text(
              'Image Seen #',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            CachedNetworkImage(
              imageUrl: "https://i.redd.it/7xp1i0iwg4ka1.gif",
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            // const Image(
            //   image: NetworkImage('https://i.redd.it/7xp1i0iwg4ka1.gif'),
            //   fit: BoxFit.fill,
            // ),
            const Text(
              'Made by',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Text(
              'Deepesh Kalura',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
