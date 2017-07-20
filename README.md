# Docker Qt Translation Tools

A simple docker container with Qt linguist installed. Used to generate 
and compile translation string from Qt project.
 
 
# Getting the image

We can use docker hub registry to pull a prebuilt containers:

```
docker pull kartoza/qt-translation
```

To build the image directly, use existing make commands provided here:

```
make build
```


# Running the image

When using this service, usually we want to update/compile translation against 
a directory. So we need to mount it first:

```
docker run -t -i -v $TARGET_DIRECTORY:/home kartoza/qt-translation [your translation script]
```

[your translation script] can be any script that needs to be executed 
(or commands), usually the one that will update/compile translations. 
This script will be executed using ```/home``` as current directory.
You can also change the current working directory if you want to, like this:

```
docker run -t -i -v $TARGET_DIRECTORY:/home -w "/home/data" kartoza/qt-translation [your translation script]
```

As you can see, the container just gives the necessary environment. The script 
itself is not provided here.
