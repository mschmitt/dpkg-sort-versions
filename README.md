**dpkg-sort-versions** - Visualize the order of dpkg package versions.

Implemented by calling `dpkg --compare-versions` as a subprocess.

The idea is to trust the native local *dpkg* API rather than any other implementation of the versioning scheme.

```
$ cat test.txt
2.1
2.2~pre01
1.0
2022-01.1~pre03
2.1-bugfix-foo
2.1~bugfix-foo
2.2
2022-01~foo~bar
2022-01
1.0
0
3
2022-01~foo
```

```
$ ./dpkg-sort-versions < test.txt
Sorted from lowest (oldest) to highest (latest):
0
1.0
1.0
2.1~bugfix-foo
2.1
2.1-bugfix-foo
2.2~pre01
2.2
3
2022-01~foo~bar
2022-01~foo
2022-01
2022-01.1~pre03
```
