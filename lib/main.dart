import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:tunexx/database/box.dart';
import 'package:tunexx/screens/Home_screen.dart';
import 'database/Songdatabe.dart';
import 'screens/Splash_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(SongsdbAdapter());
  await Hive.openBox<List>(boxname);
  final box = Boxes.getInstance();
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
    );
  }
}
