在这里我们做了一些基础功能封装

1、设置 RedisConn 为 redis.Pool（连接池）并配置了它的一些参数：

Dial：提供创建和配置应用程序连接的一个函数

TestOnBorrow：可选的应用程序检查健康功能

MaxIdle：最大空闲连接数

MaxActive：在给定时间内，允许分配的最大连接数（当为零时，没有限制）

IdleTimeout：在给定时间内将会保持空闲状态，若到达时间限制则关闭连接（当为零时，没有限制）

2、封装基础方法

文件内包含 Set、Exists、Get、Delete、LikeDeletes 用于支撑目前的业务逻辑，而在里面涉及到了如方法：

（1）RedisConn.Get()：在连接池中获取一个活跃连接

（2）conn.Do(commandName string, args ...interface{})：向 Redis 服务器发送命令并返回收到的答复

（3）redis.Bool(reply interface{}, err error)：将命令返回转为布尔值

（4）redis.Bytes(reply interface{}, err error)：将命令返回转为 Bytes

（5）redis.Strings(reply interface{}, err error)：将命令返回转为 []string

在 redigo 中包含大量类似的方法，万变不离其宗，建议熟悉其使用规则和 Redis 命令 即可

到这里为止，Redis 就可以愉快的调用啦。另外受篇幅限制，这块的深入讲解会另外开设！

