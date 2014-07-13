#
# Cookbook Name:: apt-sources-switch
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

backup_path = "/etc/apt/sources.list.bak"
bash "backup original apt source" do
  code <<-EOH
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
  EOH
  not_if { ::File.exists?(backup_path) }
end

if node['apt-sources'] == "163"
  node.default['ubuntu']['archive_url']  = "http://mirrors.163.com/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://mirrors.163.com/ubuntu/"
elsif node['apt-sources'] == "sohu"
  node.default['ubuntu']['archive_url']  = "http://mirrors.sohu.com/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://mirrors.sohu.com/ubuntu/"
elsif node['apt-sources'] == "ustc"
  # 中国科技大学
  node.default['ubuntu']['archive_url']  = "http://debian.ustc.edu.cn/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://debian.ustc.edu.cn/ubuntu/"
elsif node['apt-sources'] == "hust"
  # 华中科技大学更新服务器，由华中科技大学网络与计算中心维护
  node.default['ubuntu']['archive_url']  = "http://mirrors.hust.edu.cn/ubuntu/"
  node.default['ubuntu']['security_url']  = "http://mirrors.hust.edu.cn/ubuntu/"
elsif node['apt-sources'] == "zjustu"
  # 浙江大学更新服务器，由浙江大学Linux用户组维护
  node.default['ubuntu']['archive_url']  = "http://mirrors.zjustu.org/ubuntu/"
  node.default['ubuntu']['security_url']  = "http://mirrors.zjustu.org/ubuntu/"
elsif node['apt-sources'] == "hit"
  # 哈尔滨工业大学更新服务器
  node.default['ubuntu']['archive_url']   = "http://run.hit.edu.cn/ubuntu/"
  node.default['ubuntu']['security_url']  = "http://run.hit.edu.cn/ubuntu/"
elsif node['apt-sources'] == "sjtu"
  # 上海交通大学更新服务器
  node.default['ubuntu']['archive_url']  = "http://ftp.sjtu.edu.cn/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://ftp.sjtu.edu.cn/ubuntu/"
elsif node['apt-sources'] == "tsinghua"
  # 清华大学更新服务器
  node.default['ubuntu']['archive_url']  = "http://mirrors.tuna.tsinghua.edu.cn/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://mirrors.tuna.tsinghua.edu.cn/ubuntu/"
elsif node['apt-sources'] == "oschina"
  # 开源中国更新服务器（浙江杭州阿里云服务器）
  node.default['ubuntu']['archive_url']  = "http://mirrors.oschina.net/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://mirrors.oschina.net/ubuntu/"
elsif node['apt-sources'] == "aliyun"
  # 阿里云更新服务器（北京万网/浙江杭州阿里云服务器双线接入）
  node.default['ubuntu']['archive_url']  = "http://mirrors.aliyun.com/ubuntu/"
  node.default['ubuntu']['security_url'] = "http://mirrors.aliyun.com/ubuntu/"
end

include_recipe 'ubuntu'
