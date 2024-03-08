% dpkg-sort-versions(1) | Visualize the order of dpkg package versions

# Name

**dpkg-sort-versions** - Visualize the order of dpkg package versions

# Synopsis

```
dpkg-versions 1.0 1.0.1 1.0.1~foo
dpkg-versions < list-of-versions.txt
dpkg-versions -h
```

# Installation

```
git clone https://github.com/mschmitt/dpkg-sort-versions
sudo make -C dpkg-sort-versions install
```

# Description

Implemented by calling `dpkg --compare-versions` as a subprocess.

The idea is to trust the native local **dpkg** API rather than any other implementation of the versioning scheme.

```
$ ./dpkg-sort-versions < test.txt
Sorted stdin from lowest (oldest) to highest (latest):
0:0
0
0.1.1-2022
1.0
0:1.0
1.0
2.1~bugfix-foo
2.1
2.1-bugfix-foo
2.2~pre01
2.2
3
2022-01~foo
2022-01.1~pre03
2024-1.0
1:0.0.1-2022
1:2.0
```

# See also

* dpkg(1)
* https://github.com/mschmitt/dpkg-sort-versions
