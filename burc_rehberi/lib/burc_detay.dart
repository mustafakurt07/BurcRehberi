import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final  Burc secilenBurc;
  const BurcDetay({@required this.secilenBurc,Key key}) : super(key: key);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRenk=Colors.pink;
  PaletteGenerator _generator;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appBarRenkBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: appBarRenk,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.secilenBurc.burcAdi+" "+"ve Özellikleri"),
              background: Image.asset(
                "images/"+widget.secilenBurc.burcBuyukResim,fit: BoxFit.cover
                ,)
              ,),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child:Text(
                widget.secilenBurc.burcDetay,style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          )
        ],
      ),
    );
  }

  void appBarRenkBul()  async{
    _generator=await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appBarRenk=_generator.dominantColor.color;
    setState(() {

    });

  }
}
