part of 'api_root.dart';

Future<bool> isDiscussionAvailable(int number) async {
  final res = await graphql(
      '{ repository(owner: "$owner", name: "$repo") { discussion(number: $number) { number } } }');
  // ignore: avoid_dynamic_calls
  return res.data?['data']?['repository']?['discussion'] != null;
}
