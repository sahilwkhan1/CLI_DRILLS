# 1. Create the following directory structure. 

hello
├── five
│   └── six
│       ├── c.txt
│       └── seven
│           └── error.log
└── one
    ├── a.txt
    ├── b.txt
    └── two
        ├── d.txt
        └── three
            ├── e.txt
            └── four
                └── access.log

mkdir -p hello/five/six/seven hello/one/two/three/four
touch hello/five/six/c.txt hello/five/six/seven/error.log
touch hello/one/a.txt hello/one/b.txt hello/one/two/d.txt hello/one/two/three/e.txt hello/one/two/three/four/access.log 


# 2. Delete all the files having the .log extension
hello
├── five
│   └── six
│       ├── c.txt
│       └── seven
└── one
    ├── a.txt
    ├── b.txt
    └── two
        ├── d.txt
        └── three
            ├── e.txt
            └── four
                
find -name "*.log" -delete 


# 3. Add the following content to a.txt

echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others." >> ./hello/one/a.txt


# 4. Delete the directory named five.
hello
└── one
    ├── a.txt
    ├── b.txt
    └── two
        ├── d.txt
        └── three
            ├── e.txt
            └── four
            
rm -rf hello/five


# 5. Rename the one directory to uno.
hello
└── uno
    ├── a.txt
    ├── b.txt
    └── two
        ├── d.txt
        └── three
            ├── e.txt
            └── four
mv hello/one hello/uno


# 6. Move a.txt to the two directory.
hello
└── uno
    ├── b.txt
    └── two
    	├── a.text
        ├── d.txt
        └── three
            ├── e.txt
            └── four
            
mv hello/uno/a.txt hello/uno/two/
