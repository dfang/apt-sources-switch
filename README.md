apt-sources-switch
==================

with apt-sources-switch Cookbook, you can quickly switch apt sources for a faster apt-get install/update (especially useful in china when you play with vagrant or bootstrap a server)

Requirements
------------
[ubuntu cookbook](https://supermarket.getchef.com/cookbooks/ubuntu)


Attributes
----------
the only attribute you need to configure is apt-sources, just pick a source name in your node configuration, you can check repcipes/default.rb in source code for available source name

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><tt>['apt-sources']</tt></td>
    <td>String</td>
    <td>possible values: 163, sohu, ustc, hust, aliyun, etc</td>
  </tr>
</table>

Usage
-----
this cookbook use ubuntu cookbook to configure your apt sources, with this cookbook you don't need to remember those mirror urls and touch /etc/apt/sources.list file manuly. just check out
repcipes/default.rb in source code, it's very simple.

btw, dont' worry, your original apt sources file is backuped to /etc/apt/sources.list.bak, you can always go back

e.g.
Just include `apt-sources-switch` in your node's `run_list`, and choose a source


```json
{
  "apt-sources": "aliyun",
  "run_list": [
    "recipe[apt-sources-switch]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author: df1228@gmail.com


