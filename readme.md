Tested On Amazon Lightsail Bitnami Wordpress

Ideally you would copy and paste this script into the launch script area on amazon lightsail.

Or
>git clone https://github.com/jxm90/wordpress-resources.git

>cd wordpress-resources

>sh wordpress-bitnami-launchscript

This launch script for Bitnami Wordpress will update all wordpress software, plugins, and themes.
Aditionally, the following plugins will be installed and activated.

>wp-mail-smtp 
>limit-login-attempts
>disable-comments
>child-theme-wizard
>woocommerce
>iks-menu
>woo-stripe-payment
>classic-editor
>wp-dashboard-notes

The generate-press theme will we be installed and activated, a child theme will be created from that theme, and a patch will be applied to the themes functions.php file to increase security. 
Also max_upload_size is increased to 1 GB

