import 'package:final_project_flutter/apps_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Gaya teks untuk judul besar
  static const TextStyle headline = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    fontFamily: 'Merriweather',
  );

  // Gaya teks untuk subjudul
  static const TextStyle subHeadline = TextStyle(
    // fontSize: 18.0,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    fontFamily: 'Merriweather',
  );

  static const TextStyle subHeadline_highlith = TextStyle(
    // fontSize: 18.0,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    fontFamily: 'Merriweather',
  );

  // Gaya teks untuk isi berita
  static const TextStyle body = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    fontFamily: 'OpenSans',
  );

  static const TextStyle body_highliht = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: AppColors.highlight,
    fontFamily: 'OpenSans',
  );

  // Gaya teks untuk label tombol
  static const TextStyle button = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColors.buttonTextColor,
    fontFamily: 'OpenSans',
  );

  // Gaya teks untuk caption atau keterangan tambahan
  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    fontFamily: 'OpenSans',
  );

  // Gaya teks untuk navigasi drawer atau tab bar
  static const TextStyle navItem = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    fontFamily: 'Merriweather',
  );
}
