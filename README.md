# Web RTC

webrtc demo

## Summary

+ supervisord
+ sshd

built on the top of the formal Ubuntu images.

## Maintainer

[ClassCat Co.,Ltd.](http://www.classcat.com/) (This website is written in Japanese.)

## TAGS

+ latest - vivid
+ vivid

## Pull Image

```
$ sudo docker pull classcat/webrtc
```

## Usage

```
$ sudo docker run -d --name (container name) \  
-p 2022:22 -p 8080:8080 \  
-e ROOT_PASSWORD=(root password) \  
-e SSH_PUBLIC_KEY="ssh-rsa xxx" \  
classcat/webrtc
```

