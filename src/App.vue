<!--
 * @Author: your name
 * @Date: 2022-03-27 14:21:01
 * @LastEditTime: 2022-04-10 19:12:27
 * @LastEditors: Please set LastEditors
 * @Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 * @FilePath: /vue-front/src/App.vue
-->
<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png" />
    <div>哈哈哈asdfadsf</div>
    <ul>
      <li v-for="item in users" :key="item.id">
        {{ item.name }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'App',
  data() {
    return {
      users: []
    }
  },
  mounted() {
    axios.get('http://112.74.92.175:3000/api/users').then((res) => {
      console.log(res, 'dd')
      this.users = res.data
    })
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
