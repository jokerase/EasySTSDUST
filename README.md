# STSDUST中转指南
***
## 本文中的一键脚本适用人群  
* 你不想做过多麻烦的设置，只想上手就立刻转发，懒得折腾，能立刻用上就最好
* 你知道STSDUST的机器面板关于NAT策略的使用方法，分得清内外网端口是什么意思，并能自己设定NAT转发策略
* 你知道要先设置了转发策略后，接下来才是在中转鸡上设置端口转发  
***
## 如果你不符合上述条件  
1. 你知道很多相关知识，也爱折腾，只为压榨出最后一滴带宽和性能，那么放直接关闭本文，使用自己的方式进行折腾  
2. 你连端口转发都不知道，是纯纯正正的萌新  
***
### 如果你是纯纯正正的萌新，请先不要急着使用一键脚本，而是跟随本文的「完整食用教程」一步步进行设置，最终通过一键脚本实现转发  
***
## 一键脚本  
* 使用脚本快速中转你的流量，仅适用于STSDUST家默认开通的CentOS7.7模版机型  
* 在NAT策略已经配置好的情况下，ssh进入机器，执行下列命令直接进入配置中转阶段：  
* `bash <(curl https://hub.stsdust.cf/stsdust/EasySTSDUST/raw/master/easy_stsdust.sh)` 
    - 声明：本脚本修改自arloor大佬的natcfg.sh脚本，感谢大佬的脚本造福了像我一样的很多萌新小白  
    - 说明：该脚本修改了原本的natcfg.sh，即使重启，IP的转发也不会失效  
***  
***  
## 完整食用教程  
* 先进入官网，如图所示点击左侧侧边栏"产品服务">>"我的服务"。选择要进行端口转发的实例，并点击机子名称：  
![1.png](https://i.loli.net/2020/05/09/5xD1NgmwUkQ84Os.png)  

***
* 为了保证顺利实现转发，首先确认安全组策略设置正确，具体如图所示：  
![2.png](https://i.loli.net/2020/05/09/unE26FBdPvCgSmH.png)  

***
* 建立NAT转发策略，所有的端口转发都要在这里新建策略：  
![3.png](https://i.loli.net/2020/05/09/AsH2G5ZYecOxNhK.png)  

***
* 以SSH服务为例说明如何实现端口转发：  
![4.png](https://i.loli.net/2020/05/09/sDpQ9uKNMUBbAoE.png)  

***
* SSH进入你的机器，并执行下方命令，根据图片内容设置中转：  
* `bash <(curl https://hub.stsdust.cf/stsdust/EasySTSDUST/raw/master/easy_stsdust.sh)`  
![5.png](https://i.loli.net/2020/05/09/2Ue45GksmQbjhwB.png)  

### 到此一切设置完毕，尽情享受STSDUST的产品为你带来的愉悦吧 :)  