<template>
  <div class="dashboard-container">
    <div class="dashboard-text">name: {{ name }}</div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import { getStatus } from '@/api/user'

export default {
  name: 'Dashboard',
  computed: {
    ...mapGetters(['name'])
  },
  created() {
    this.get_status()
    // $('.layui-layer-page').width('1200px')
    // $('.layui-layer-page').height('800px')
    // $('.layui-layer-page').left('calc(50% - 600px)')
  },
  methods: {
    get_status(restart = '', show_load = 1) {
      let data = {
        action: 'GetNetWork'
      }
      getStatus(data).then((res) => {
        console.log(res)
      })
    },
  }
}
</script>

<style lang="scss" scoped>
.dashboard {
  &-container {
    margin: 30px;
  }
  &-text {
    font-size: 30px;
    line-height: 46px;
  }
}
</style>
