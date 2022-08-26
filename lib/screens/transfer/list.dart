import 'package:bytebank/screens/transfer/form.dart';
import 'package:flutter/material.dart';
import '../../components/transfer/item.dart';
import '../../models/transfer.dart';

class TransferListState extends State<TransferList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return TransferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final Future<Transfer?> future = Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return TransferForm();
              })
          );
          future.then((value) {
            setState(() {
              if (value != null) {
                widget._transfers.add(value);
              }
            });
          });
        },
      ),
    );
  }

}

class TransferList extends StatefulWidget {
  TransferList({Key? key}) : super(key: key);

  final List<Transfer> _transfers = [];

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}