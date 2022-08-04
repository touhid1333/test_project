import 'package:flutter/material.dart';

/// To use this delegate to show search password in AppBar use a
/// TextButton like this in the actions of AppBar.
///
/// {@tool snippet}
/// ```dart
/// IconButton(
///   onPressed: () async {
///     await showSearch<Password?>(
///       context: context,
///       delegate: CustomSearchDelegate<Password>(
///         data: viewmodel.passwordList,
///         queryData: viewmodel.queryPassword,
///         itemBuilder: (item) {
///           return ListTile(
///             title: Text(item.title),
///           );
///         },
///       ),
///     );
///   },
///   icon: const Icon(
///     Icons.search,
///   ),
/// ),
/// ```
/// {@end-tool}
///

class CustomSearchDelegate<T> extends SearchDelegate<T?> {
  final List<T> data;
  Widget Function(T item) itemBuilder;
  List<T> Function(String query) queryData;
  T? _result;

  CustomSearchDelegate({
    required this.data,
    required this.itemBuilder,
    required this.queryData,
  });

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => query = '',
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(
          Icons.chevron_left,
        ),
        onPressed: () {
          close(
            context,
            _result,
          );
        },
      );

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {
    var listToShow = data;
    if (query.isNotEmpty) {
      listToShow = queryData(query);
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: listToShow.length,
      itemBuilder: (BuildContext context, int index) {
        return itemBuilder(listToShow[index]);
      },
    );
  }
}
