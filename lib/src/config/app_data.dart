List<String> reunioes = ['Reunião Pública', 'Vida e Ministério', 'Eventos'];
List<String> eventos = ['Celebração', 'Assembléias', 'Congresso'];
List<String> ministerio = [
  'Serviço de Campo',
  'Grupos de Campo',
  'Testemunho Público'
];

class Constants {
  static const baseUrl = 'https://default-rtdb.firebaseio.com/';

  static const webApiKey = '';

  /// Checks if string is email.
  static bool isEmail(String s) => hasMatch(s,
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }
}

const oradorImage = "";

const testemunhoImage = "";

const publisherCartImage = '';

const publisherCartImage_2 = '';

const celebUrl = '';

const assUrl = '';

const congUrl = '';
