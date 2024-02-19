wget https://raw.githubusercontent.com/jxm90/wordpress-resources/main/toappend.txt
echo "Please enter the E-mail address and password that will be sending mail."
read -p "Username: " user
while true; do
    read -p "Password: " password
    echo
    read -p "Verify Password: " password2
    echo
    [ "$password" = "$password2" ] && break
    echo "Please try again"
done
cp toappend.txt edit.txt
sed -i "s/your_email/$user/g" edit.txt
sed -i "s/email_password/$password/g" edit.txt
cat edit.txt >> /opt/bitnami/wordpress/wp-config.php
