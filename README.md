# Asterix Saigon



### My adaptation of Aurora KDE

I am always hunting for that barebone KDE install. And if it could be immutable/atomic/composable that would be even better.

The Universal Blue project (https://universal-blue.org/) provides a number of excellent images to start off with. Bluefin for Gnome, Bazzite for a gaming focus and Aurora as the KDE one.  
They include codecs, printing support, homebrew for all your cli wishes, distrobox etc. out of the box. 

As i've done before I'll roll my own then, based on Aurora.

### Why adjusting at all?

That's right, those images are already very complete, yet application-wise pretty minimal. Adjusting those images has become much more easy than it was in the first couple of years. And for me there's always some fluff that can be removed.

So, in this image you'll find an Aurora install in which I added:

  -      krusader gwenview okular

And I removed:

  -      fcitx5 input-remapper kcharselect kdebugsettings kde-connect kjournald ksystemlog nvtop plasma-welcome ptyxis

### Rebase

First install the base iso of Aurora or another Fedora atomic, like Kinoite or Sway, and then:

    rpm-ostree rebase ostree-unverified-registry:ghcr.io/thesaigoneer/asterix-saigon:latest

After that first step:

    systemctl reboot

Log in again and switch to the signed image:

    rpm-ostree rebase ostree-image-signed:docker://ghcr.io/thesaigoneer/asterix-saigon:latest

Finish with:

    systemctl reboot
    
### Log in into asterix-saigon!

I then removed a number of flatpaks 

    elisa gwenview kmahjongg kmines kolourpaint krdc okular skanpage 
    
Added okular and gwenview as application to my image (I consider a picture viewer and a document reader as core functionality of a DE).

And did a 'brew install' for midnight commander and micro. Htop, fastfetch and vim are already included in the Aurora base image.

But all of this is up to the end user (being yourself obviously).

Enjoy your freshly installed asterix-saigon!

--------------
### yada yada

Feel free to use these builds and dots. I do not, however, offer or imply any form of support or ongoing maintenance. 

And of course, you use them entirely at your own risk. Have fun!




