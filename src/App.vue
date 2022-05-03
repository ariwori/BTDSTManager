<template>
  <div id="app">
    <router-view />
  </div>
</template>

<script>
export default {
  name: 'App',
  created(){
    $('.layui-layer-page').width('1200px')
    $('.layui-layer-page').height('800px')
    $('.layui-layer-page').css('left', 'calc(50% - 600px)')
  }
}
</script>
