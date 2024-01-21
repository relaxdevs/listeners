
## Flutter state-management 


Init
```dart
@override
void initState() {
  listeners.add('counter', this);
  
  super.initState();
}
```

Update
```dart
void onPressed() {
  //do logic

  listeners.update('counter')
}
```
$~~$

### About
Managing state is challenging task - as your application grows larger and complex, maintaining becomes more difficult. 

Idea simple:
1) Separate logic like its backend
2) Press 'F5' on keyboard like update website :)

<img src="https://github.com/relaxdevs/listeners/assets/156116976/a3d8d39c-04d4-464a-b5d9-634025d54f66" width="800">

Solution is create connection link 'listeners' allowing managing in an intuitive way.
### How it works:

1. Create object
```dart 
Map obj = {}
```

2. Add listener
```dart 
  void add(String id, var state) {
    if (obj[id] == null) obj[id] = {};
    
    obj[id]['$state'] = state;
  }
```

3. Make update
```dart 
  void update(String id) {
    obj[id].forEach((_, v) => v.setState((){}));  
  }
```

$~~$

This simple code allowing you to manage Flutter application more efficiently, you can ensure that widgets are always in sync with the latest data. Give it a try and you'll love how much easier it makes developing! 🚀
