class DemoDataRepository {

  final _iuImagePath =
      "https://vignette.wikia.nocookie.net/justdance/images/4/4c/IU.jpg/revision/latest?cb=20170705185753";
  final _iuImagePath2 =
      "https://kprofiles.com/wp-content/uploads/2016/09/IU.jpg";
  final _iuImagePath3 =
      "https://kathynguyen2.files.wordpress.com/2017/04/is-iu-finally-coming-back-as-a-singer1.jpg?w=1180";
  final _iuImagePath4 =
      "https://channel-korea.com/wp-content/uploads/2017/09/IU_1476317492_af_org-e1506689157858.jpg";
  final _iuImagePath5 = "https://img.kpopmap.com/2018/09/IU-lee-sun-gyun.jpg";
  final _iuImagePath6 =
      "https://media0.giphy.com/media/rip1YZlLN4mwo/source.gif";
  final _iuImagePath7 =
      "https://www.allkpop.com/upload/2018/10/af_org/27105129/IU.jpg";
  final _iuImagePath8 =
      "https://0.soompi.io/wp-content/uploads/2017/10/22073014/IU-1.jpg?s=900x600&e=t";

  final List<String> _imagePathList = new List<String>();

  static final DemoDataRepository _instance =
      new DemoDataRepository._internal();

  static DemoDataRepository getInstance() {
    return _instance;
  }

  DemoDataRepository._internal() {
    _imagePathList.add(_iuImagePath);
    _imagePathList.add(_iuImagePath2);
    _imagePathList.add(_iuImagePath3);
    _imagePathList.add(_iuImagePath4);
    _imagePathList.add(_iuImagePath5);
    _imagePathList.add(_iuImagePath6);
    _imagePathList.add(_iuImagePath7);
    _imagePathList.add(_iuImagePath8);
  }

  List<String> getImagePathList() {
    return _imagePathList;
  }
}
