forEach无法return，解决方法：

写在try{}里面 ->

```
try{
  arr.forEach()
  throw 1 //随便抛出东西
} catch{}
```

