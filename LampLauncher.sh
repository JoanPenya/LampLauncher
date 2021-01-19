#!/bin/sh

echo " "
echo " "
echo "----------------------------------"
echo "|   Welcome the lamp launcher.   |"
echo "|        Dev By Joanutsu         |"
echo "----------------------------------"
echo " "
echo " "

while :
do
echo "Select your options:"
echo " "
echo "1. Start Lamp (Apache, mysql and PHP)"
echo "2. Restart Your Lamp."
echo "3. Stop your server Lamp."
echo "4. Reaload"
echo "5. Disabled"
echo "6. Enabled"
echo "7. View status apache"
echo "8. View status MySQL"
echo "9. Bye ;)"
echo " "
echo -n "Select your option: "
read opt
case $opt in
     1)
          echo "Start lamp..."
          sudo systemctl start httpd
          sudo systemctl start mysqld
          ;;
     2)
          echo "Restart lamp..."
          sudo systemctl restart httpd
          sudo systemctl restart mysqld
          ;;
     3)
          echo "Stop lamp..."
          sudo systemctl stop httpd
          sudo systemctl stop mysqld
          ;;
     4)
          echo "Reload lamp..."
          sudo systemctl reload httpd
          sudo systemctl reload mysqld
          ;;
     5)
          echo "Disable lamp..."
          sudo systemctl disable httpd
          sudo systemctl disable mysqld
          ;;
     6)
          echo "Enable lamp..."
          sudo systemctl enable httpd
          sudo systemctl enable mysqld
          ;;
     7)
          sudo systemctl status httpd
          ;;
     8)
          sudo systemctl status mysqld
          ;;
     9)
          echo "Bye ;)"
          break
          ;;
     *)
          echo "Sorry, your select is incorrect. Try other options."
          ;;

esac
done
echo " "
echo "Thank use my programm ;)"
echo "My GitHub: https://github.com/joanutsu"