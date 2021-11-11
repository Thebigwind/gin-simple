在这里，我们做了如下几件事：

编写与配置项保持一致的结构体（App、Server、Database）
使用 MapTo 将配置项映射到结构体上
对一些需特殊设置的配置项进行再赋值
需要你去做的事：

将 models.go、setting.go、pkg/logging/log.go 的 init 函数修改为 Setup 方法
将 models/models.go 独立读取的 DB 配置项删除，改为统一读取 setting
将 pkg/logging/file 独立的 LOG 配置项删除，改为统一读取 setting