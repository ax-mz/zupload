# zupload - Tiny CLI uploader for zupimages.net 
Upload pictures to [zupimages.net](https://www.zupimages.net) from your terminal. Invalid file paths are ignored.

## Usage
```zupload <file> [<file>...]```

## Exemple
```bash
~$ ls Images
img1.jpg    picture2.png    img3.jpg 
img4.png    'photo 5.jpg'   img6.png     
~$ zupload Images/*
https://www.zupimages.net/up/xx/xx/xxxx.jpg
https://www.zupimages.net/up/xx/xx/xxxx.png
https://www.zupimages.net/up/xx/xx/xxxx.jpg
https://www.zupimages.net/up/xx/xx/xxxx.png
https://www.zupimages.net/up/xx/xx/xxxx.jpg
https://www.zupimages.net/up/xx/xx/xxxx.png
~$
```
