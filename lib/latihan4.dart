// Abstract class
abstract class Kendaraan {
  void bunyiKlakson();
}

// Class Motor mewarisi Kendaraan
class Motor extends Kendaraan {
  @override
  void bunyiKlakson() {
    print('Motor: Tin tin!');
  }
}

// Mixin untuk memberikan kemampuan tambahan
mixin BisaNgebut {
  void ngebut() {
    print('Kendaraan sedang melaju cepat!');
  }
}

// Class Mobil mewarisi Kendaraan dan menggunakan mixin BisaNgebut
class Mobil extends Kendaraan with BisaNgebut {
  @override
  void bunyiKlakson() {
    print('Mobil: Tiiin tiiin!');
  }
}

void main() {
  // Membuat objek Motor
  var motor = Motor();

  // Membuat objek Mobil
  var mobil = Mobil();

  // Menjalankan method bunyiKlakson()
  motor.bunyiKlakson();

  mobil.bunyiKlakson();

  // Menjalankan method dari mixin
  mobil.ngebut();
}