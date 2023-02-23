import 'package:rest_cep_dart/controllers/cep_controller.dart';

void main(List<String> arguments) {
  final controller = CEPController();
  controller.findCep(cep: '64190000');
}
