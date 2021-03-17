import 'package:flutter/material.dart';

// alphabetically
import 'widgets/bird_list_using_card_listview.dart';

// models
import './models/bird_model.dart';

void main() {
  runApp(BirdApp());
}

class BirdApp extends StatelessWidget {
  final List<BirdModel> _listOfBirds = [
    BirdModel(
        id: 1,
        name: 'Hornbill',
        scientificName: 'Bucerotidae',
        imageUrl:
            'https://zootampa.org/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg'),
    BirdModel(
        id: 2,
        name: 'Humming Bird',
        scientificName: 'Trochilidae',
        imageUrl:
            'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg'),
    BirdModel(
        id: 3,
        name: 'Sunbird',
        scientificName: 'Nectariniidae',
        imageUrl:
            'https://wildbirdrevolution.org/wp-content/uploads/2019/08/Purple-Sunbird-Photographed-at-Hooghly-Westbengal-Nikon-Photography-by-Soumya-Chakraborty.jpg')
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String appTitle = 'Birder\'s App';

    return MaterialApp(
        title: 'Birder App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('$appTitle'),
            centerTitle: true,
          ),
          body: BirdListWidget(_listOfBirds),
        ));
  }
}
