rm -rfv ~/.nice > /dev/null
mv .nice ~
echo 'source ~/.nice/main.sh' >> ~/.bash_profile
echo 'source ~/.nice/main.sh' >> ~/.zshrc
