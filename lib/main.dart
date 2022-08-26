import 'package:bytebank/screens/transfer/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey
        ).copyWith(
          secondary: Colors.orangeAccent[400]
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent
          )
        ),
      ),
      home: TransferList(),
    );
  }
}
