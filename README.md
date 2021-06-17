User Steps

Update all packages and install Java and Maven

        # apt update
        # apt install maven 

Java 8 is only working this maven build so be make a sure java 8 version

    # apt-get install openjdk-8-jdk

Get the code from git
    # git clone https://github.com/sreenathzs/users.git
    # cd users

Move systemd file

    # mv systemd.service /etc/systemd/system/users.service

Build the code (Buildiing and Running)

    # mvn clean
    # mvn Clean package
    # mvn run build 

Start the services

    # vi /etc/systemd/system/users.service

    # systemctl daemon-reload
    # systemctl start users
    # systemctl enable users 
    # systemctl status users
    
or run jar file

    # java -jar target/users-api-0.0.1.jar

    // upload tags1
    //upload tag5,6,7,8
    // upload tags 9 
    //tags 10 08/-06-2021
    //tags 11 08-06-2021
    // taags 13 10-06-2021   
    // problem pushing to vscode