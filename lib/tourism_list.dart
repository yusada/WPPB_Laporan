import 'package:flutter/material.dart';
import 'package:wppb/detail_screen.dart';
import 'package:wppb/list_item.dart';
import 'package:wppb/model/tourism_place.dart';
import 'package:wppb/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> TourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/submarine.jpg',
        deskripsi:
            "Monumen Kapal Selam atau disingkat Monkasel merupakan sebuah monumen yang dibangun menggunakan kapal selam asli. Monumen ini terletak di Jalan Pemuda No. 39, Kota Surabaya, Jawa Timur.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Rp. 15.000 ",
        galeri: [
          "assets/images/submarine1.jpg",
          "assets/images/submarine2.jpg",
          "assets/images/submarine3.jpg"
        ]),
    TourismPlace(
        name: 'Kelenteng Sanggar Agung',
        location: 'Kenjeran',
        imageAsset: 'assets/images/klenteng.jpg',
        deskripsi:
            "Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "07:00 - 20:00",
        hargaTiket: "Rp. 10.000 ",
        galeri: [
          "assets/images/klenteng1.jpg",
          "assets/images/klenteng2.jpg",
          "assets/images/klenteng3.jpg"
        ]),
    TourismPlace(
        name: 'House of Sampoerna',
        location: 'Krembangan Utara',
        imageAsset: 'assets/images/sampoerna.jpg',
        deskripsi:
            "The House of Sampoerna is a tobacco museum and headquarters of Sampoerna located in Surabaya. The main building's architectural style influenced by Dutch colonial-style compound was built in 1862, and is now a preserved historical site. ",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Gratis ",
        galeri: [
          "assets/images/sampoerna1.jpg",
          "assets/images/sampoerna2.jpg",
          "assets/images/sampoerna3.jpg"
        ]),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Alun-alun contong',
        imageAsset: 'assets/images/pahlawan.jpg',
        deskripsi:
            "Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan sebanyak 10 lengkungan, dan terbagi atas 11 ruas.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Rp. 10.000 ",
        galeri: [
          "assets/images/pahlawan1.jpg",
          "assets/images/pahlawan2.jpg",
          "assets/images/pahlawan3.jpg"
        ]),
    TourismPlace(
        name: 'Patung Suro Boyo',
        location: 'Wonokromo ',
        imageAsset: 'assets/images/sby.jpg',
        deskripsi:
            "Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan ini yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Rp. 10.000 ",
        galeri: [
          "assets/images/sby1.jpg",
          "assets/images/sby2.jpg",
          "assets/images/sby3.jpg"
        ]),
    TourismPlace(
        name: 'Kampung Arab',
        location: 'Jl. Ampel Kejeron ',
        imageAsset: 'assets/images/kampung.jpg',
        deskripsi:
            "Kampung Arab di Surabaya berada di kawasan wisata religi Sunan Ampel. Sekeliling kawasan itu terdapat kampung-kampung sempit yang sebagian besar dihuni etnis Arab. Berada di kawasan wisata banyak didatangi pengunjung.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Rp. 10.000 ",
        galeri: [
          "assets/images/kampung1.jpg",
          "assets/images/kampung.jpg",
          "assets/images/kampung.jpg"
        ]),
    TourismPlace(
        name: 'Kebun Binatang Surabaya',
        location: 'Jl. Setail No.1 ',
        imageAsset: 'assets/images/bonbin.jpg',
        deskripsi:
            "Kebun Binatang Surabaya adalah salah satu kebun binatang yang populer di Indonesia dan terletak di Surabaya. KBS merupakan kebun binatang yang pernah terlengkap se-Asia Tenggara, di dalamnya terdapat lebih dari 981 spesies satwa yang berbeda yang terdiri lebih dari 2.806 binatang.",
        hariBuka: "Buka Setiap Hari",
        jamBuka: "08:00 - 16:00",
        hargaTiket: "Rp. 10.000 ",
        galeri: [
          "assets/images/bonbin.jpg",
          "assets/images/bonbin.jpg",
          "assets/images/bonbin.jpg"
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) {
            return ListItem(
              place: place,
              isDone: data.DoneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value) {
                data.complete(place, value!);
              },
            );
          }),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
