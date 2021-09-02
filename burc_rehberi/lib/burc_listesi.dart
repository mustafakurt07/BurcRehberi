import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class BurcListesi extends StatelessWidget {
   List<Burc>tumBurclar;
   /*yazdir()
   {
     print(tumBurclar);
   }*/
   BurcListesi()
   {
     tumBurclar=veriKaynaginiHazirla();
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BurclarListesi"),),
      body: Center(
        child: ListView.builder(itemBuilder:(context,index){
          return BurcItem(listelenenBurc: tumBurclar[index],);
        },itemCount: tumBurclar.length,),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
     //burc tutan listesi doldurmak için  gecici liste olusturup geri donduruyoruz.
     List<Burc>gecici=[];

     for(int i=0;i<12;i++)
       {
         var burcAdi=Strings.BURC_ADLARI[i];
         var burcTarihi=Strings.BURC_TARIHLERI[i];
         var burcOzellik=Strings.BURC_GENEL_OZELLIKLERI[i];
         //koc1.png dosyasını olusturmak için K-->k yaparsak olur Stringten gelen burc adlarını bas harfini kuculturum
         var burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+'${i+1}.png';//resimlerin yoluna ulastık
         var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+'_buyuk'+'${i+1}.png';
         Burc eklenecekBurc=Burc(burcAdi,burcTarihi,burcOzellik,burcKucukResim,burcBuyukResim);
         gecici.add(eklenecekBurc);
       }
     return gecici;
  }
}
