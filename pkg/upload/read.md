在这里我们实现了 7 个方法，如下：

GetImageFullUrl：获取图片完整访问 URL
GetImageName：获取图片名称
GetImagePath：获取图片路径
GetImageFullPath：获取图片完整路径
CheckImageExt：检查图片后缀
CheckImageSize：检查图片大小
CheckImage：检查图片
这里基本是对底层代码的二次封装，为了更灵活的处理一些图片特有的逻辑，并且方便修改，不直接对外暴露下层