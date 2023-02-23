import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_cep_dart/models/cep_modal.dart';

class CEPRespository {
  Future<CEP?> findCepGet({required String cep}) async {
    final requestGet =
        await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));

    if (requestGet.statusCode >= 200 && requestGet.statusCode < 300) {
      final cepMap = jsonDecode(requestGet.body) as Map<String, dynamic>;
      return CEP.fromMap(cepMap);
    } else {
      print('Status code: ${requestGet.statusCode}');
      print('Type erro: ${requestGet.reasonPhrase}');
    }

    return null;
  }
}
