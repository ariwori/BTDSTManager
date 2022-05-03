#!/bin/bash
PATH=/www/server/panel/pyenv/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
export HOME=/root
install_tmp='/tmp/bt_install.pl'
install_path=/www/server/panel/plugin/dst_manager

#安装
Install()
{

	echo '正在安装...'
	#==================================================================
	#打包插件目录上传的情况下
	#依赖安装开始
	#pip install psycopg2

	#依赖安装结束
	#==================================================================

	#==================================================================
	#使用命令行安装的情况下，如果使用面板导入的，请删除以下代码

	#创建插件目录


	#文件下载结束
	#==================================================================
	# if [ -e /www/server/pgsql/data_directory ]; then
  #   cat /www/server/pgsql/data_directory
  #   else
  #       mkdir -p /www/server/pgsql/
  #       echo "/www/server/pgsql/data" >/www/server/pgsql/data_directory
  #   fi

	# \cp -a -r $install_path/pgsql.sh /etc/init.d/pgsql
	# chmod +x /etc/init.d/pgsql
	# chkconfig pgsql on
	echo '================================================'
	echo '安装完成'
}

#卸载
Uninstall()
{
	rm -rf $install_path
	# chkconfig pgsql off
}

#操作判断
if [ "${1}" == 'install' ];then
	Install
elif [ "${1}" == 'uninstall' ];then
	Uninstall
else
	echo 'Error!';
fi

