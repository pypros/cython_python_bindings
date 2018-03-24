# cython_python_bindings

On local machine

Build and setup docker container
```
$ docker-compose up -d
```
Log on docker container
```
$ docker-compose exec cython_binding sh
```

In docker container
python3
```
# python3 setup.py build_ext --inplace
```
python2
```
# python setup.py build_ext --inplace
```
