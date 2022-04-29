import 'package:flutter/material.dart';
import 'package:uni/view/Widgets/eatAtFeup/eating_place_card.dart';

import '../../../model/entities/EatingPlacesPages/eating_places_map.dart';
import 'eat_at_feup_general_page_view.dart';

class EatAtFeupMainPage extends StatefulWidget {
  const EatAtFeupMainPage({Key key}) : super(key: key);

  @override
  _EatAtFeupMainPageState createState() => _EatAtFeupMainPageState();
}


class _EatAtFeupMainPageState extends EatAtFeupGeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    return Scaffold(
      /*
      appBar:  AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:  Image.asset('assets/images/icon.png', fit: BoxFit.cover),
        leading: GestureDetector(
          onTap: () { /* Write listener code here */ },
          child: const Icon(
            Icons.menu,  // add custom icons also
          ),
        ),
      ),
       */
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>EatingPlacesMap()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17.0),
                  child: Image.asset(
                    'assets/images/mapa.jpg',
                    width: 600.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                )
              ),
            ),
            buildRestaurantCard(context, 'ae.jpg', 'Associação de Estudantes'),
            buildRestaurantCard(context, 'cantina.jpg', 'Cantina'),
            buildRestaurantCard(context, 'grill.png', 'Grill'),
            buildRestaurantCard(context, 'biblioteca.jpg', 'Bar da Biblioteca'),
            buildRestaurantCard(context, 'minas.jpg', 'Bar de Minas'),
          ],
        ),
      ),
    );
  }
}