import 'package:rest_cep_dart/repositories/cep_repository.dart';

class CEPController {
  final _cepRespository = CEPRespository();

  void findCep({required String cep}) async {
    final myCep = await _cepRespository.findCepGet(cep: cep);

    if (myCep != null) {
      print('$myCep');
    }
  }
}
