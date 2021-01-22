1、mutations通过store.commit触发

```js
store.commit('increment')
```

2、Action 通过 `store.dispatch` 方法触发：

```js
store.dispatch('increment')
```

3、Action 函数接受一个与 store 实例具有相同方法和属性的 context 对象，因此你可以调用 `context.commit` 提交一个 mutation，或者通过 `context.state` 和 `context.getters` 来获取 state 和 getters。

```js
actions: {
    increment (context) {
      context.commit('increment')
    }
  }
```

4、

- mapState ------------- 写在 computed里面

- mapGetters -----------写在methods里面

- mapMutations --------写在methods里面

- mapActions -----------写在methods里面

