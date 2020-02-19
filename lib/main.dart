import 'package:flutter/material.dart';
import 'package:testeAcesso/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();

//  Este main foi alterado aqui ok

  runApp(ModularApp(module: AppModule()));
}
