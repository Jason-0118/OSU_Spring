# move file from local to VM (Mac and Linux)
1. scp [path_to_local_file_on_your_computer_bsg_db.sql] [path_to_remote_file_where_we_want_to_copy_to_bsg_db.sql]
2. scp /mnt/c/Users/George/Downloads/bsg_db.sql kocherag@flip1.engr.oregonstate.edu:~/assignment1/bsg_db.sql

# move file from local to VM (Window)
1. scp C:\Users\George\Downloads\bsg_db.sql kocherag@flip1.engr.oregonstate.edu:~/assignment1/bsg_db.sql

# Login to MySQL CLI
1. mysql -u cs340_zhanxin2 -h classmysql.engr.oregonstate.edu -p
2. password: 7877
3. use cs340_zhanxin2; (Use a specific username)
4. source ./bsg_db.sql; (Tell MySQL to process the SQL file we just upload)


# Run #include <omp.h> in Mac (xcode does not support openmp)
1. brew install libomp
2. clang -Xpreprocessor -fopenmp FileName.cpp -lomp
<!-- OR
clang -Xpreprocessor -fopenmp -I/usr/local/include -L/usr/local/lib -lomp  Filename.c -o main
cite: https://stackoverflow.com/questions/58275167/mac-running-openmp-clang-error-unsupported-option-fopenmp -->
3. ./a.out

# Run prog in zsh: g++ -o proj proj.cpp -O3 -lm -fopenmp
# Run prog in pwsh: g++ -o prog prog.cpp -O3 -lm -fopenmp

# Check terminal: ls -l /proc/$$/exe

# Connecting to server (https://youtu.be/py6Km38tJBc)
1. cd ~/.ssh
2. ssh-keygen
3. cat ~/.ssh/[keyName].pub | ssh [ID]@[serverURL] "umask 077; cat >> ~/.ssh/authorized_keys"
4. vsCode > config adding
    Host flip1
    HostName [serverURL]
    User [ID]]
    IdentityFile ~/.ssh/[keyName]



