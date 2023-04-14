# deck-intro-randomize
This is a way to randomize custom Steam Deck intros

## Preface
Okay, so custom (non-steam store) Steam Deck intros require you to have a file called 'deck_startup.webm' to have your custom intro work. However, this only means you can have one at a time, and there are hundreds of great ones out there. Behold, a way of having multiple with a random one selected each time.

## Requirements
- A Steam Deck
- Recommended: A way to access the file system with a keyboard and mouse will make move files easier (I personally use SSH from my computer to my Steam Deck)

## Before you start
These files shouldn't destroy anything, but Linux commands and downloading files from the internet is scary and can destroy everything you love. Please do not do this if you can't accept your failure and bricking of your Steam Deck.

## Instructions

1. Place the 'randomizer.sh' script in the /home/deck/ folder.
2. Make sure the randomize.sh script has permissions to be read and executed. The command for this is ```chmod 777 randomizer.sh```
3. Create a folder called 'deckvideos' in /home/deck/.
4. Place all of your cool Steam Deck intros in /home/deck/deckvideos. They should be different names. I just add a number to each of them, e.g. deck_startup_0.webm.
5. Create a folder called 'uioverrides' in the /home/deck/.steam/root/config/ folder. The command for this is ```mkdir uioverrides```.
6. Create a folder called 'movies' in the /home/deck/.steam/root/config/uioverrides/ folder. This command for this is ```mkdir movies```.
7. Run the randomizer.sh by going to the /home/deck/ folder and running ```./randomizer.sh```
8. If there are files in the deckvideos folder, this should have created a symlink in the /home/deck/.steam/root/config/uioverrides/movies/ folder. This symlink should play one of the video files.
9. If that is successfull, then we can get it running automatically
10. Place the randomize-intros.service files in the /etc/systemd/system folder
11. Run the following commands, in order
```bash
sudo systemctl daemon-reload
sudo systemctl start randomize-intros.service
sudo systemctl enable randomize-intros.service
```
