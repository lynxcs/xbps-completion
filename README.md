Autocompletion for the xbps package manager
-----------------------

### Installation
```
git clone https://github.com/lynxcs/xbps-completion && cd xbps-completion
./xbps-completion-update.sh
```
**Copy xbps-install/remove-completion to /etc/bash_completions.d (create the folder if it doesn't exit)**
```
cp /path/to/xbps-install-completion /etc/bash_completions.d/
cp /path/to/xbps-remove-completion /etc/bash_completions.d/
```
**And occasionally run the included update script.**
(Or alias it to xbps-install so it runs after xbps finishes)
(Or do it on system startup)
(You get the idea, you need to run this once in a while.)
### TODO
- [x] Improve Speed (calling xbps-query everytime isn't the best)
- [ ] Improve Speed even further?
- [ ] Combine both completion files into one?
