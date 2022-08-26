import 'package:flutter/material.dart';
import '../../components/custom_textfield.dart';
import '../../models/transfer.dart';

class TransferForm extends StatefulWidget {
  TransferForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {

  final TextEditingController _controllerAccount = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void _createTransfer(BuildContext context) {
      final int? accountNumber = int.tryParse(_controllerAccount.text);
      final double? value = double.tryParse(_controllerValue.text);

      if (accountNumber != null && value != null) {
        final transfer = Transfer(value, accountNumber);
        Navigator.pop(context, transfer);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            custom_textfield(
                controller: _controllerAccount,
                labelText: 'Número da conta',
                hintText: '1234'),
            custom_textfield(
                controller: _controllerValue,
                labelText: 'Valor',
                hintText: '0.00',
                icon: Icons.monetization_on),
            ElevatedButton(
              child: const Text('Confirmar'),
              onPressed: () {
                _createTransfer(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}