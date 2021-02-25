# bash_mediasite_api_get_presentations

Linux bash script to get a list of the first 1,000 presentations (id, title) in Mediasite. The requirement comes from other scripts which need a list of presentations an input. 

Alternatively, I tend to use the Mediasite analytics reports to create a get a list of the first 1,000 presentations (id, title) in Mediasite.

**NOTE: This is a very basic script that has lots of scope for improvement.**

# Steps To Use

1. Edit the mediasite_api_config.sh with settings from the customer.
2. Make sure the bash scripts are executable.
3. Run the bash script.
4. two files are created, one just has a list of presentation id's, the second also includes the presentation title.

# Example output ...

$ ../bash/mediasite_api_get_presentations_1000.sh
This script will list the first 1,000 presentations (id, title). Press any key to continue, or control+c to quit.


Working ...

List Presentations ...
00b1568e73d440c588d0aa870f251af11d test o3.032_1/8/2021
019134da69c147fbbb57cea6c2dcfbda1d Setting up templates and rooms - part 1
01a29b4da3e44b698f3a195a47a3eb9a1d test neu_12/14/2020
01d8a7cf94dd491d8aa13d23f1f7ac281d Infoanlass 2_9/26/2020
01e7b1e1b75940049deb128c0959d03c1d BITTE DAUER UND TITEL DER AUFNAHME FESTLEGEN!_10/23/2020
.
.
.
fe77cc3d8ac84bbd812175a62ef3a9bf1d Teil2_10/13/2020
ff4cad8f38654766b7d0bdb77770f24d1d Test ASF Format Moodle Film
ff565cc2d523457da94f20418672da4e1d Tutorial_10/7/2020
ff6ee0e4b0fc41b1ab5782ef0a66d2f31d BITTE DAUER UND TITEL DER AUFNAHME FESTLEGEN!_10/15/2020
ff78872f69a842b488b45966677827871d Einfuerung Praxisentwicklungsprojekt_12/1/2020
ffada20d1f4b4474b7c718d896e1f5641d qa2_12/4/2020

Total number of Presentations 449

$
$ ls -ltr
-rwxr-xr-x 1 mickm mickm   721 Feb 24 21:35 mediasite_api_config.sh
-rw-r--r-- 1 mickm mickm 15715 Feb 25 12:35 presentations_id_list_1000.txt
-rw-r--r-- 1 mickm mickm 30229 Feb 25 12:36 presentations_id_title_list_1000.txt
$
