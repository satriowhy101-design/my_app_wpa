void main() {
  // Membuat daftar nilai
  List<int> nilai = [60, 75, 80, 90, 65, 85];

  // Menyaring nilai yang lebih besar atau sama dengan 75
  var nilaiLulus = nilai.where((n) => n >= 75).toList();

  // Mengubah nilai menjadi predikat A, B, atau C
  var predikat = nilaiLulus.map((n) {
    return switch (n) {
      >= 85 => 'A',
      >= 75 => 'B',
      _ => 'C',
    };
  }).toList();

  // Menampilkan hasil
  print('Daftar nilai       : $nilai');
  print('Nilai >= 75        : $nilaiLulus');
  print('Predikat            : $predikat');
}