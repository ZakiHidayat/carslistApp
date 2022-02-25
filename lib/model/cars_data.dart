class CarsData {
  late String name;
  late String desc;
  late String price;
  late String spec;
  late String star;
  late String release;
  late String imageAsset;
  late String madeby;
  late List<String> imageUrls;

  CarsData({
    required this.name,
    required this.desc,
    required this.price,
    required this.spec,
    required this.star,
    required this.release,
    required this.madeby,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var carsdata = [
  CarsData(
    name: 'TOYOTA ALPHARD 2.5 HYBRID',
    desc:
        'Di Indonesia, Toyota tidak lagi menjual Toyota Alphard Hybrid 2.5 HV. mobil ini juga sudah tidak lagi diproduksi.\n\nTemukan harga, spesifikasi, warna, gambar dan review redaksi Toyota Alphard di sini',
    price: '1.56 M',
    spec:
        'Tempat Duduk : 7 Kursi \nMesin	: 2494 cc \nTenaga : 178 hpPower \nSteering	: Ya \nKantong Udara Pengemudi : Ya \nAnti Lock Braking System : Ya \nGround Clearance : 160 mm\nTransmisi : Automatic',
    star: '4.8',
    release: '2018',
    madeby: 'Toyota',
    imageAsset: 'gambar/alphard.png',
    imageUrls: ['gambar/alphard.png',
      'gambar/alphardAll/dashboardalphard.png',
    'gambar/alphardAll/handlealphard.png',
    'gambar/alphardAll/pelegalphard.png',
    'gambar/alphardAll/setiralphard.png'],
  ),
  CarsData(
    name: 'TOYOTA FORTUNER 2.4 VRZ',
    desc: 'Toyota Fortuner sudah ada di Indonesia sejak 2005 dan menjadi salah satu idola keluarga di Tanah Air. \nTampilannya yang gagah dan kokoh membuat mobil ini banyak peminatnya, terutama dari kaum adam. \nToyota Fortuner disodorkan ke pasaran dalam dua pilihan jenis mesin yakni bensin dan diesel. \nVarian mesin diesel merupakan varian yang lebih diminati karena lebih sedikit konsumsi bahan bakar dibanding varian mesin bensinPada kelas SUV diesel, Toyota Fortuner adalah salah satu mobil mendominasi bersama dengan rival beratnya, yaitu Mitsubishi Pajero Sport.\nSUV medium penenggak solar ini menjadi favorit tidak hanya karena tren di dunia, namun harga yang ditawarkan masih lebih terjangkau daripada SUV premium yang lebih dahulu hadir.\nSebelum masing-masing pabrikan menawarkan kendaraan di kelas ini, pilihannya cukup terbatas. \nSebut saja Toyota dengan Land Cruiser atau Mitsubishi Pajero (bukan sport). \nPerbandingan harga kedua segmen tersebut (medium dan Premium) bisa dibilang tiga kali lipatnya.',
    price: '600 Jt',
    spec: 'Tempat Duduk : 7 Kursi \nMesin : 2393cc\nTenaga : 148 hp\nSteering : Ya\nKantong Udara Pengemudi : Ya \nAnti Lock Braking System : Ya\nTransmisi : Automatic',
    star: '4.2',
    release: '2022',
    madeby: 'Toyota',
    imageAsset: 'gambar/fortuner.png',
    imageUrls: ['gambar/Fortuner/fortunersilver.png',
        'gambar/Fortuner/dalemfortuner.png',
        'gambar/Fortuner/dashboardfortuner.png',
        'gambar/Fortuner/airbagfortuner.png',],
  ),
  CarsData(
    name: 'PORSCHE CAYMAN S',
    desc:
        'Porsche Cayman merupakan mobil sport coupe yang diproduksi oleh perusahaan Jerman, Porsche sejak tahun 2005 untuk pasaran global. Porsche Cayman pertama kali diluncurkan sebagai model tahun 2006 sebagai mobil sport 2 pintu berbasis Porsche Boxster. Mobil ini dirakit di Stuttgart, Jerman.',
    price: '1.53 M',
    spec: 'Tempat Duduk : 2 Kursi \nMesin : 3400cc\nTenaga : 300 hp\nSteering : Ya\nKantong Udara Pengemudi : Ya \nAnti Lock Braking System : Ya\nTransmisi : Automatic',
    star: '5.0',
    release: '2013',
    madeby: 'Porsche',
    imageAsset: 'gambar/porsche.png',
    imageUrls: ['gambar/porsche/porschekuning.png',
    'gambar/porsche/bukapintuporsche.png',
    'gambar/porsche/dashboardporsche.png',
    'gambar/porsche/bagasiporsche.png'],
  ),
  CarsData(
    name: 'JEEP RUBICON',
    desc: 'Jeep Wrangler generasi baru semakin mendekati hari lahirnya. Mesin baru, platform baru, dan kemampuan baru. Menurut rumor, mobil ini akan muncul bulan NOvember 2017 ini, dan akan dilabel sebagai Wrangler JL 2018. Salah satu yang patut diacungi jempol adalah konsistensi Jeep dalam meramu Jeep terbaru, tanpa meninggalkan esensi yang penting: Kemampuan off road. Yang pasti, mobil ini akan menarik, dan persaingan abadinya dengan Mercedes-Benz G-Class akan segera disegarkan karena off roader Jerman itu juga akan disegarkan generasinya.',
    price: '1.67 M',
    spec:
        'Tempat Duduk : 5 Kursi \n Mesin	: 1995 cc \nTenaga : 270 hpPower \nSteering	: Ya \nKantong Udara Pengemudi : Ya \nAnti Lock Braking System : Ya \nGround Clearance : 246 mm',
    star: '5.0',
    release: '2022',
    madeby: 'Jeep',
    imageAsset: 'gambar/rubicon.png',
    imageUrls: ['gambar/jeep/jeepcoklat.png',
    'gambar/jeep/jeepsamping.png',
    'gambar/jeep/dashboardjeep.png',
    'gambar/jeep/teknometerjeep.png'],
  ),
  CarsData(
    name: 'TESLA MODEL S',
    desc: 'Tesla Model S adalah salah satu sedan listrik pertama yang memiliki desain menawan sekaligus futuristik. Lampu utamanya menggunakan LED dengan desain rumah lampu menyipit. Di bagian belakang, bumper besarnya dilengkapi dengan LED dan aksen krom pada spoilernya. Bagian interiornya menggunakan material kulit warna hitam yang mewah dan lembut. Terdapat layar sentuh berbentuk vertikal seperti notebook di bagian tengah dashboard. Anda dapat mengatur ketinggian suspensi, bobot setir, mode berkendara dan mematikan mobil melalui layar sentuh ini. Mobil yang digerakkan oleh tenaga listrik ini sangat responsif. Mobil ini mendapat tenaga dari baterei lithium-ion 100 kWh yang dalam kondisi penuh mampu menempuh jarak 506 km. Lebih jauh 24 km dibandingkan dengan Model S 90D dan P90D. Dengan motor penggerak di depan dan belakang dan menganut sistem AWD, tenaga yang dihasilkan di depan adalah 259 hp, sedangkan motor belakang menghasilkan tenaga 503 hp. Kombinasi tenaga dari kedua motor tersebut adalah 680 hp. Sedangkan torsi depan 376 Nm, torsi belakang 712 Nm dan kombinasi depan-belakang adalah 1073 Nm yang dikombinasikan dengan transmisi otomatis 1-kecepatan.',
    price: '2 M',
    spec: 'Tempat Duduk : 5 Kursi \nJenis Bahan Bakar : Listrik \nKapasitas Baterai : 100Kwh \nSteering	: Ya \nKantong Udara Pengemudi : Ya \nAnti Lock Braking System : Ya',
    star: '5.0',
    release: '2022',
    madeby: 'Tesla',
    imageAsset: 'gambar/tesla.png',
    imageUrls: ['gambar/tesla/depantesla.png',
    'gambar/tesla/belakangtesla.png',
    'gambar/tesla/dashboardtesla.png',
    'gambar/tesla/kursitesla.png'],
  ),
];
