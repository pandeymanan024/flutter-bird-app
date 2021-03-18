import 'package:birderapp/models/bird_model.dart';
import 'package:flutter/material.dart';

class BirdDetails extends StatelessWidget {
  final BirdModel theBird;

  BirdDetails({this.theBird});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Image.network(
            //   // theBird.imageUrl,
            // ),
            ListTile(
              title: Text(theBird.name),
              subtitle: Text(theBird.scientificName),
              trailing: Icon(Icons.favorite_border),
            )
          ],
        ),
      ),
    );
  }
}
