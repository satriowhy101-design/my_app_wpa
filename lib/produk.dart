class Produk {
  String nama;
  double _harga;

  // Constructor
  Produk(this.nama, this._harga);

  // Getter untuk mengambil nilai harga
  double get harga => _harga;

  // Setter untuk mengubah harga
  set harga(double nilai) {
    if (nilai >= 0) {
      _harga = nilai;
    } else {
      print('Harga tidak boleh negatif!');
    }
  }

  // Named constructor untuk produk gratis
  Produk.gratis(this.nama) : _harga = 0;
}

void main() {
  // Membuat objek produk
  var produk1 = Produk('Laptop', 5000000);

  print('Nama produk : ${produk1.nama}');
  print('Harga       : ${produk1.harga}');

  // Mengubah harga menggunakan setter
  produk1.harga = 6000000;

  print('Harga baru  : ${produk1.harga}');

  // Mencoba memasukkan harga negatif
  produk1.harga = -100000;

  print('Harga akhir : ${produk1.harga}');

  print('');

  // Membuat produk gratis menggunakan named constructor
  var produkGratis = Produk.gratis('Buku');

  print('Nama produk : ${produkGratis.nama}');
  print('Harga       : ${produkGratis.harga}');
}