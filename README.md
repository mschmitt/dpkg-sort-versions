% dpkg-sort-versions(1) | Visualize the order of dpkg package versions

# Name

**dpkg-sort-versions** - Visualize the order of dpkg package versions

# Synopsis

```
dpkg-sort-versions 1.0 1.0.1 1.0.1~foo
dpkg-sort-versions < list-of-versions.txt
dpkg-sort-versions -h
```

# Installation

```
git clone https://github.com/mschmitt/dpkg-sort-versions
sudo make -C dpkg-sort-versions install
```

# Mission statement

Sort debian version numbers using `dpkg --compare-versions` as the comparison algorithm without implementing the version scheme or relying on any third party implementation of the version scheme.

## In comparison

GNU `sort --version-sort`, at the time of this commit, does not know what to do with deb epoch prefixes.

# Example

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
* deb-version(7)
* https://github.com/mschmitt/dpkg-sort-versions
