
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


<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/156116976/300482951-3ecb0abe-ec95-415f-9a18-ad40103c6689.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240130%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240130T171608Z&X-Amz-Expires=300&X-Amz-Signature=876fefa364baf817be8d8e843643b8afb7c0ee9cee1d633e130b6d8af24e46e6&X-Amz-SignedHeaders=host&actor_id=156116976&key_id=0&repo_id=745660140" width="800">
