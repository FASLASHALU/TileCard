import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TileCard"),
      ),
      body:ListView(children:<Widget> [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child:
    ExpansionTileCard(
        key: cardB,
        leading: CircleAvatar(
          child: Text("A"),
        ),
        title: Text("Tap to expand!"),
        subtitle: Text("Flower"),
        children: <Widget>[
          Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Image.asset("asset/pink_cosmos_flowers (1).jpg"),
            ),
          ),
        ],
    ),
        ),
        ],
      ),
    );
  }
}
