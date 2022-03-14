class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String deskripsi;
  String hariBuka;
  String jamBuka;
  String hargaTiket;
  List<String> galeri;

  TourismPlace(
      {required this.name,
      required this.location,
      required this.imageAsset,
      required this.deskripsi,
      required this.hariBuka,
      required this.jamBuka,
      required this.hargaTiket,
      required this.galeri});
}

var tourismPlaceList = [
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
        "assets/images/kampung2.jpg",
        "assets/images/kampung3.jpg"
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
        "assets/images/bonbin1.jpg",
        "assets/images/bonbin2.jpg",
        "assets/images/bonbin3.jpg"
      ]),
];
