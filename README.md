# listeners

Flutter state-management 



Init
```
@override
void initState() {
  listeners.add('counter', this);
  
  super.initState();
}
```

Update
```
void onPressed() {
  //do logic

  listeners.update('counter')
}
```
