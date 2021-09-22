

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#关于项目">关于项目</a>
      <ul>
        <li><a href="#项目依赖">项目依赖</a></li>
      </ul>
    </li>
    <li>
      <a href="#开始">开始</a>
      <ul>
        <li><a href="#依赖准备">依赖准备</a></li>
        <li><a href="#安装">安装</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## 关于项目


本项目皆为在kubernetes上使用helmfile部署中间件，使用Gitlab统一管理本项目配置。
使用该项目进行中间件服务的统一配置、安装、管理，也可动态的、灵活的更新局部配置信息。涉及的中间件目前项目中有：

* mysql
* apollo
* nacos
* zookeeper
* kafka
* elasticsearch
* logstash
* kibana
* skywalking
* sentinel

### 项目依赖

本项目基于Helm Charts，通过helmfile编排所需管理的内容。并将charts和values单独作为目录，用于保存离线charts资源和自定义values文件。




<!-- GETTING STARTED -->
## 开始

项目默认安装所有组件，组件信息详见<a href="#关于项目">关于项目</a>。

### 依赖准备

为了能够支持项目的安装，需安装[helm v3](https://github.com/helm/helm/releases)，另外需要安装[helmfile](https://github.com/roboll/helmfile/releases)实现资源的编排管理。


### 安装

**由于各中间件前后启动顺序还未设定（后期会添加initContainer以完善启动依赖关系），目前还不能实现一步到位，仍然需要手动创建资源。**

1. 使用 `init` 提前创建 `cm` 和 `pvc` 。
   ```sh
   make init
   ```

   
2. 使用 `instll` 创建编排的资源。
   ```sh
   make install
   ```
