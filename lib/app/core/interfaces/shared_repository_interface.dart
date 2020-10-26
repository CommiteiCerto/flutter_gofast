abstract class ISharedeRepositoryInterface {
  setInstance();
  dynamic getValue<T>(String key);
  Future<bool> setValue<T>(String key, dynamic value);
}
