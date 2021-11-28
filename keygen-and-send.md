# Key Generation and sending via SSH
Steps to generate and send a key to server/pi/etc so you don't have to enter a password every time...
## How to do this
1. Open a terminal window on your host machine
2. Enter:
```
ssh-keygen
```
and follow the prompts. I rename the key to be something useful like 'keegans_pi' for example.
3. Send the *public key* to the server/pi/etc and follow the on screen commands:
```
ssh-copy-id -i path-to-key/name-of-key.pub user@ip-address
```
4. 'Tell' ssh to use the key:
```
ssh -i path-to-key/name-of-key user@ip-address
```
5. Now open the ssh config file so that you dont have to 'tell' ssh to use this key every time:
```
sudo nano ~/.ssh/config
```
Add the following to the file:
```
Host ip-addpress
  IdentityFile path-to-key/name-of-key
```
6. Now ssh into the server/pi/etc. and you shouldn't have to specify the key or use a password.
