import 'package:flutter/material.dart';
import 'dart:html' as html;

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kim Jiun',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Android. Ios. Desktop. with Flutter.\nHardware. Embedded Software.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed:()=> html.window.open(Constants.PROFILE_GITHUB,'KimJiun' ),
                  ),FlatButton.icon(
                    icon: SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(Icons.mail_outline)),
                    label: Text('E-Mail'),
                    onPressed:()=> launch(Constants.PROFILE_EMAIL_TO.toString()),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 25,
                        height: 25,
                        child: Icon(Icons.phone_forwarded)),
                    label: Text('Phone'),
                    onPressed:()=> launch(Constants.PROFILE_PHONE.toString()),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}