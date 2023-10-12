import 'package:app_blog/ViewModel/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'View/common/error_widget.dart';
import 'ViewModel/app.dart';

void main() async {
  // Mengatasi tampilan kesalahan (error) dengan builder khusus
  // Di sini, digunakan ErrorWidgetMy untuk menangani kesalahan
  ErrorWidget.builder = (details) => ErrorWidgetMy(details);

    // Memastikan bahwa Flutter sudah siap untuk digunakan
  WidgetsFlutterBinding.ensureInitialized();

  // Menginisialisasi Firebase (jika digunakan dalam proyek)
  await Firebase.initializeApp();
  
 // Mengatur preferensi orientasi layar ke potret (portrait) saja
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Menjalankan aplikasi Flutter (MyApp adalah widget utama)
  runApp(MyApp());

  // Melakukan inisialisasi Dependency Injection 
  (DependencyInjection.init());
}


