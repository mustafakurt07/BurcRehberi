class Burc{
  final String _burcAdi;
  final String _burcTarih;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  String get burcAdi => _burcAdi;


  Burc(this._burcAdi, this._burcTarih, this._burcDetay, this._burcKucukResim, this._burcBuyukResim);

@override
  String toString() {
    // TODO: implement toString
    print('$_burcAdi');
  }
  String get burcTarih => _burcTarih;
  String get burcDetay => _burcDetay;
  String get burcKucukResim => _burcKucukResim;
  String get burcBuyukResim => _burcBuyukResim;
}