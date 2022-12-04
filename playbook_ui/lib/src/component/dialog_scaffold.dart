import 'package:flutter/material.dart';

class DialogScaffold extends StatelessWidget {
  const DialogScaffold({
    Key? key,
    this.body,
    this.title,
    this.deviceSize,
  }) : super(key: key);

  final Widget? body;
  final Widget? title;
  final Size? deviceSize;

  @override
  Widget build(BuildContext context) {
    const height = 44.0;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: height,
        centerTitle: true,
        title: title,
        actions: [
          IconButton(
            onPressed: Navigator.of(context).pop,
            icon: const Icon(Icons.cancel),
          ),
        ],
      ),
      body: body,
    );
  }
}
