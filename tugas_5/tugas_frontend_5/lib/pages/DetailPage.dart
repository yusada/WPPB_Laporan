import 'package:flutter/material.dart';
import 'package:tugas_frontend_5/model/Vacations.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:tugas_frontend_5/pages/FormEdit.dart';
import 'package:tugas_frontend_5/services/VacationsServices.dart';

class DetailPage extends StatelessWidget {
  static final url = "/detail-page";
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Vacation place =
        ModalRoute.of(context)!.settings.arguments as Vacation;
    return Scaffold(
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_arrow,
          children: [
            SpeedDialChild(
                child: Icon(Icons.edit),
                onTap: () {
                  Navigator.pushNamed(context, FormEdit.url, arguments: place);
                }),
            SpeedDialChild(
                child: Icon(Icons.delete),
                onTap: () async {
                  await VacationsServices()
                      .deleteVacation(place.id)
                      .then(((value) => Navigator.of(context).pop()));
                }),
          ],
        ),
        appBar: AppBar(
          title: Text(place.name),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(place.image),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      place.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              const Icon(Icons.place),
                              Text(place.city),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const Icon(Icons.attach_money),
                              Text("Rp." + place.price.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Text(
                      place.description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
