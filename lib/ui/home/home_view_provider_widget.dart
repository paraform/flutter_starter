import 'package:flutter/material.dart';
import 'package:flutter_starter/datamodels/human.dart';
import 'package:flutter_starter/ui/dumb_widgets/duplicate_name_widget.dart';
import 'package:flutter_starter/ui/dumb_widgets/full_name_widget.dart';
import 'package:provider/provider.dart';

class HomeViewProviderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.value(
        value: Human(name: 'Dane', surname: 'Mackier'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[FullNameWidget(), DuplicateNameWidget()],
        ),
      ),
    );
  }
}
