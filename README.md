
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
