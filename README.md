Autocompletion for the xbps package manager
-----------------------

### Installation
```
git clone https://github.com/lynxcs/xbps-completion && cd xbps-completion
./xbps-completion-update
```
Add these to your .bashrc
```
source /path/to/xbps-install-completion
source /path/to/xbps-remove-completion
```
**And occasionally run the included update script.**
(Or alias it to xbps-install so it runs after xbps finishes)
(Or do it on system startup)
(You get the idea, you need to run this once in a while.)
### TODO
- [x] Improve Speed (calling xbps-query everytime isn't the best)
- [ ] Improve Speed even further?
- [ ] Combine both completion files into one?
