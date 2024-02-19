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
cp phpadmin-user.sql edit.sql
sed -i "s/username/$user/g" edit.sql
sed -i "s/password/$password/g" edit.sql
