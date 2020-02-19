import 'package:flutter/material.dart';
import 'package:testeAcesso/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();

//  Esta quarrta

  runApp(ModularApp(module: AppModule()));
}
