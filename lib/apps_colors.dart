import 'package:flutter/material.dart';

class AppColors {
  // Warna utama
  static const Color primary =
      Color(0xFFDAA520); // Emas tua untuk vintage
  static const Color secondary =
      Color(0xFF8B4513); // Coklat untuk teks dan ikon

  // Warna pendukung
  static const Color tertiary =
      Color(0xFFF5F5DC); // untuk latar belakang
  static const Color quaternary =
      Color(0xFFEAE0C8); // Krem muda untuk kartu dan panel

  // Warna tambahan
  static const Color accent = Color(0xFFC0A080); // Terakota untuk aksen
  static const Color highlight =
      Color(0xFFAA4B41); // Merah bata untuk highlights

  // Warna teks
  static const Color textPrimary =
      Color(0xFF333333); // Gelap untuk teks utama
  static const Color textSecondary =
      Color(0xFF555555); // Abu-abu gelap untuk teks sekunder

  // Warna latar belakang
  static const Color background =
      tertiary; // Menggunakan tertiary sebagai latar belakang

  // Warna untuk elemen UI tertentu
  static const Color button =
      primary; // Menggunakan primary untuk latar belakang tombol
  static const Color buttonTextColor =
      Color(0xFFFFFFFF); // Warna teks tombol, putih untuk kontras
  static const Color appBarColor =
      secondary; // Warna AppBar, menggunakan secondary

  // Warna untuk status seperti error, success, warning, dll.
  static const Color error = Color(0xFFB00020); // Merah untuk error
  static const Color success = Color(0xFF388E3C); // Hijau untuk success
  static const Color warning = Color(0xFFF57C00); // Oranye untuk warning
}
