
class ListenersState {
  Map<String, Map<String, dynamic>> obj = Map<String, Map<String, dynamic>>(); 

  void add(String id, state) {
    String uid = state.toString();
    if (obj[id] == null) obj[id] = Map<String, dynamic>();
    obj[id]![uid] = state;
  }

  void update(String id) {
    obj[id]?.removeWhere((_, v) {
      if (v.toString().contains('defunct')) {
        return true;
      } else {
        if (v.mounted) v.setState((){});  
        return false;
      }
    });
  }

  void remove(String id, state) {
    obj[id]?.removeWhere((k, _) => k.contains(state.toString()));
  }
}

ListenersState listeners = ListenersState();