import 'package:flutter/material.dart';
import 'package:wppb/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset(
              place.imageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text(place.hariBuka),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      Text(place.jamBuka),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      Text(place.hargaTiket),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                place.deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10.0),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(place.galeri[0])),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(place.galeri[1])),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(place.galeri[2]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
