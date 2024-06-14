import 'package:intl/intl.dart';

String formatDate(var date) {
  // Configurez les locales pour utiliser les noms de mois en français
  final monthFormat = DateFormat.MMMM('fr_FR');
  final dayFormat = DateFormat('dd');
  final timeFormat = DateFormat('HH:mm');

  // Formatez les parties de la date individuellement
  String month = monthFormat.format(date);
  String day = dayFormat.format(date);
  String year = date.year
      .toString()
      .substring(2); // Prendre les deux derniers chiffres de l'année
  String time = timeFormat.format(date);

  // Combinez-les selon le format souhaité
  return '$month $day/$year $time';
}
