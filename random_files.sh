python3 << EOF
import os
import random

# List of realistic filenames and folder names
file_names = [
    "report_2023.pdf", "vacation_photo.jpg", "meeting_notes.docx", "budget.xlsx", "music_track.mp3", "video_clip.mp4", "backup_01.zip", "log_file.txt", "project.json", "Resume_v2.pdf", "Wedding_Plan_Details.xlsx", "Taxes_2022.pdf", "Grocery_List.txt", "Family_Birthday_Calendar.ics", "Old_Photos_Backup.zip", "Weekly_Workouts.xlsx", "Meeting_Notes_01-15-2023.docx", "Sales_Analysis_Q1.pptx", "Team_Roster_2023.xlsx", "Expense_Report_Jan.pdf", "Marketing_Strategy.docx", "Draft_Proposal_v3.docx", "Invoice_#1045.pdf", "Vendor_Contacts.csv", "App_Code_Main.js", "README.md", "Final_Bugfixes_Log.txt", "CloudConfig.yaml", "Backend_Database_Schema.sql", "Frontend_Assets.zip", "API_Endpoints_Documentation.pdf", "Feature_Plan_Roadmap.xlsx", "Favorite_Movies_List.txt", "TV_Show_Watchlist.docx", "Book_Recommendations.docx", "Playlist_2024.m3u", "Streaming_Service_Passwords.txt", "Old_Games_Collection.iso", "Karaoke_Favorites.mp3", "Movie_Quotes.txt", "Story_Ideas.docx", "Photography_Session_Notes.txt", "Song_Lyrics_Drafts.docx", "Portfolio_Preview.pdf", "Creative_Writing_Prompts.docx", "Character_Designs.psd", "Script_Draft_Final.docx", "DIY_Projects_List.xlsx", "Appliance_Warranties.pdf", "House_Plans_Backup.zip", "Monthly_Bills_2024.xlsx", "Recipes_Tried_And_Loved.docx", "Moving_Checklist.xlsx", "Yardwork_Schedule.docx", "Emergency_Contacts_List.pdf", "RandomFile_123.zip", "CouponCodes2024.pdf", "Software_Setup_v4.exe", "Product_Manual.pdf", "Image_0001.png", "Old_Receipts_Backup.zip", "Font_Pack_Free.otf", "Shared_Zoom_Recording.mp4", "Old_SMS_Backup.zip", "Ideas_Scribble.txt", "Gift_Lists_By_Year.xlsx", "Random_Doodles.jpg", "Holiday_Budget_Planner.xlsx", "Medical_Bills_2023.pdf", "High_School_Yearbook_Scans.zip", "Travel_Bucket_List.docx", "Weekly_Menu_Planner.xlsx", "Anniversary_Trip_Itinerary.pdf", "Daily_Journal_Entries.docx", "Favorite_Quotes_Collection.txt", "Fitness_Tracker_Data_Export.csv", "Annual_Report_Draft.docx", "Conference_Presentation_Slides.pptx", "Onboarding_Guide_2024.pdf", "KPI_Metrics_Tracker.xlsx", "Draft_Contract_Template.docx", "Social_Media_Post_Schedule.xlsx", "Project_Plan_v1.docx", "Workflow_Diagram_Final.png", "Performance_Review_Template.docx", "Archived_Project_Files.zip", "Debugging_Tips.txt", "Git_Commands_Cheat_Sheet.docx", "Plugin_Backups_2024.zip", "System_Logs_Export_2023.log", "Prototype_Code_Snippets.py", "ML_Model_Training_Data.csv", "Terminal_Shortcuts.txt", "Podcasts_To_Check_Out.txt", "Movie_Night_Schedule.xlsx", "Favorite_Albums_2024.docx", "Favorite_Stand-Up_Specials.txt", "Anime_To_Watch_2024.docx", "Playlist_Backups.m3u", "Streaming_Series_Finale_Reviews.docx", "Animation_Tutorials_2024.zip", "Photography_Locations_List.docx", "Sketchbook_2023.psd", "Story_Arc_Outline.docx", "Color_Grading_Presets.zip", "3D_Models_Backup.obj", "Podcast_Script_Season1.docx", "Logo_Designs_Draft.ai", "Video_Editing_Tips.txt", "Lease_Agreement_Copy.pdf", "Cleaning_Schedule_2024.xlsx", "Kids_Activity_Schedule.xlsx", "Gardening_Notes_2023.docx", "Monthly_Utility_Tracker.xlsx", "Donation_Receipts_Backup.zip", "Seasonal_Decor_List.docx", "Random_Software_Installer_v2.exe", "Images_Backup_001.zip", "Fonts_Collection_2024.otf", "Free_Icons_Set.zip", "Latest_E-Book_Downloads.epub", "Funny_GIFs_Collection.zip", "Downloaded_Whitepapers_2023.pdf", "Digital_Art_Scans.zip", "Productivity_Tips_List.docx", "Recipes_To_Try_2024.docx", "Camping_Checklist.txt", "Morning_Routines_Collection.docx", "Budget_Tracker_2024.xlsx", "Photos_From_Phone_Backup.zip", "Packing_List_Vacation.docx", "Old_Letters_Scanned.zip", "Department_Meeting_Agenda.docx", "Employee_Handbook_2024.pdf", "RnD_Progress_Report.docx", "Draft_Whitepaper_V4.docx", "Deployment_Scripts.zip", "Archived_Ticket_Logs_2023.csv", "IoT_Device_Configuration.yaml", "Mobile_App_Test_Data.json", "Cybersecurity_Best_Practices.pdf", "Comedy_Show_Schedules.docx", "Graphic_Novel_Reading_List.docx", "Retro_Video_Game_Roms.zip", "DIY_Tutorial_Notes.docx", "Calligraphy_Practice_Files.pdf", "Character_Backstory_Notes.docx", "Book_Cover_Designs.psd", "Vacation_Property_Listings.xlsx", "Tax_Documents_Archive_2021-2023.zip", "Recycling_Center_Schedule.pdf", "Local_Event_Flyers_2024.pdf", "Auto_Maintenance_Records.xlsx", "Tech_Conference_Tickets.pdf", "Personal_Backup_2024.zip", "Gift_Ideas_By_Person.xlsx", "Daily_Affirmations_List.docx"
]
folder_names = [
    "Vacation_Photos_2023", "Health_Records", "College_Essays", "Approved_Designs", "Client_Feedback_Responses", "Test_Scripts_Automation", "DockerFile_Config", "Game_Save_Backups", "Comics_Archive", "Artwork_Concepts", "Animation_Assets", "Pet_Medical_History", "Home_Inventory_List", "Maintenance_Log", "eBook_Downloads", "Archived_Web_Articles", "Random_Tech_Diagrams", "Hobbies_Info_Documents", "Music_Lessons_Recordings", "Weather_Data_Logs", "Inspirational_Quotes_Collection", "Childhood_Photos_Backup", "DevOps_Tutorials_Notes", "OpenSource_Contributions", "Database_Backups_Jan2024", "Classic_Novels_Backlog", "Video_Essays_List", "Movie_Soundtracks_Favorites", "Painting_Tutorials_List", "Renovation_Planning_Documents", "Emergency_Prep_Checklist", "Meme_Backup_2024", "Archived_News_Articles", "Hobby_Photography_Backup", "Kids_Art_Project_Ideas", "Retirement_Planning_Documents", "New_Hire_Training_Documents", "Live_Concert_Recordings_Backup", "Rare_Movie_Posters_Collection", "Watercolor_Painting_Ideas", "Fitness_Milestone_Calendar", "project_files_temp", "notes_random_001", "archive_old_docs_2024", "system_backup_01-2024", "misc_files_collection", "Random_Memes_Folder", "Repair_Manuals_Folder", "Random_Screenshots_Folder", "Online_Tutorials_Folder", "Random_Notes_Folder", "Inspirational_Speeches_Folder"
]

# Define the base directory where the files and folders will be created
base_dir = ["~/Desktop/", "~/Desktop/", "~/Downloads/", "~/Documents/"]

l1, l2 = [], []

# Function to create a random number of files and folders
def create_files_and_folders(num_items):
    for _ in range(num_items):
        if random.choice([True, False]):  # Decide between file or folder
            if random.choice([True, False]):  # Create a folder
                folder_name = random.choice(folder_names) #+ f"_{random.randint(1, 2)}"
                l1.append(random.choice(base_dir) + folder_name)

            else:  # Create a file
                file_name = random.choice(file_names)
                l2.append(random.choice(base_dir) + file_name)

# Number of items to create (files + folders)
num_items = random.randint(20, 90)

# Run the creation process
create_files_and_folders(num_items)
os.system(f"touch {' '.join(l2)} && mkdir {' '.join(l1)} ")

websites = ["http://50waystogetajob.com", "https://www.7cups.com", "https://www.16personalities.com", "https://10minutemail.com", "https://3dhouseplanner.com", "https://www.awwwards.com", "http://www.allitebooks.com", "https://www.accountkiller.com", "https://ahmia.fi", "https://alison.com", "http://anasomnia.com", "http://www.audiocheck.net", "http://en.akinator.com", "https://appear.in", "https://alternativeto.net", "https://accessmars.withgoogle.com", "https://artillery.io", "https://about.me", "http://www.allyoucanread.com", "http://all-free-download.com", "http://www.alertful.com", "https://anotepad.com", "https://asciinema.org", "https://guacamole.apache.org", "https://algorithm-visualizer.org", "https://www.autoregex.xyz", "https://aitools.fyi", "https://amazingnewsletters.com", "https://dinosaurpictures.org/ancient-earth#170", "https://bundle.js.org", "https://builtwith.com", "http://bugmenot.com", "https://bubbl.us", "https://burner.bonanza.com", "http://blahtherapy.com", "https://betterexplained.com", "https://bellard.org/jslinux", "https://www.burnerapp.com", "http://www.bartleby.com", "http://www.boxoh.com", "https://burnermail.io", "https://brokenbear.com", "https://bypassai.ai", "http://www.csgenerator.com", "http://crossfade.io", "https://cvmkr.com", "https://corrupt-a-file.net", "https://www.calligraphr.com", "https://www.canva.com", "http://cidr.xyz", "https://crontab-generator.org", "https://clickclickclick.click", "https://codeclippet.com", "https://camelcamelcamel.com", "https://cobalt.tools/", "https://codecombat.com", "http://www.commercialtunage.com", "https://cloudconvert.com", "https://www.couchsurfing.com", "https://www.charitynavigator.org", "https://www.calorieking.com", "http://chapiapp.com", "https://www.copypastecharacter.com", "https://cidr.online", "https://codebeautify.org", "https://css-tricks.com", "https://crontab.guru", "http://cloudping.bastionhost.org", "https://chirpty.com", "https://api.chucknorris.io", "https://www.calligrapher.ai", "https://cupcakeipsum.com", "https://capitalizemytitle.com", "https://cronrange.info", "http://downforeveryoneorjustme.com", "https://www.debugbear.com/test/website-speed", "http://www.degraeve.com/color-palette", "http://downloadtimecalculator.com", "http://www.drawastickman.com", "https://www.draw.io", "https://www.drumeo.com", "https://devlids.com", "https://diagramy.com", "http://www.didthanoskill.me", "https://devhints.io", "https://www.deadmansswitch.net", "https://dnschecker.org", "https://www.diffchecker.com", "https://downdetector.in", "https://www.donkeycar.com", "https://darkmodelist.com", "https://dockerswarm.rocks", "https://www.dbdesigner.net", "http://deathdate.info", "http://deadpixelbuddy.com", "https://www.davidc.net/sites/default/subnets/subnets.html", "https://dualmonitorbackgrounds.com", "https://deriveit.org", "https://explainshell.com", "http://ecomputernotes.com", "https://www.ecosia.org", "http://www.essaytyper.com", "https://www.easycron.com", "https://www.etymonline.com", "https://everytimezone.com", "https://egghead.io", "https://nickmakes.website/slack-emoji-converter", "https://endoflife.date", "https://excalidraw.com", "http://www.foxebook.net", "http://www.fallingfalling.com", "http://ffffidget.com", "http://www.freeimages.com", "https://fmovies.is", "https://www.fiverr.com", "https://forvo.com", "https://www.futureme.org", "http://factoclock.com", "http://www.fakenamegenerator.com", "http://www.factslides.com", "http://factsie.com", "http://www.freenom.com", "https://send.firefox.com", "https://www.flightradar24.com", "http://file-upload.com", "https://www.freeprivacypolicy.com", "https://freeformatter.com", "https://forget.me", "https://www.freecycle.org", "https://www.followupthen.com", "https://faxzero.com", "https://www.freeimages.com", "https://fast.com", "https://www.fromlatest.io", "https://fixmie.com", "https://frontendchecklist.io", "https://www.factoftheday1.com", "https://www.feeonlyindia.com", "https://thefundoo.com/Tools", "https://www.fitgpt.xyz", "https://fishbowl-game.com", "http://gizoogle.net", "https://getnada.com", "https://gethuman.com", "http://ghostsingles.com", "http://goqr.me", "https://guthib.com", "http://getintopc.com", "http://gifprint.com", "http://gohighbrow.com", "https://goproheroes.com", "https://goalkicker.com", "http://gettingstartedwithchef.com", "https://gtmetrix.com", "http://www.getnotify.com", "http://ge.tt", "https://gitcoin.co", "https://gitstalk.netlify.com", "https://gitexplorer.com", "https://gitstats.me", "https://generatepotter.com", "https://writing.galaxyzoo.org", "https://grep.app", "http://www.1happybirthday.com", "http://htmlreference.io", "http://honestslogans.com", "https://htmlmail.pro", "http://hackertyper.com", "http://histography.io", "https://howsecureismypassword.net", "https://haveibeenpwned.com", "https://www.howacarworks.com", "https://homestyler.com", "https://htmlmail.pro", "https://howdns.works", "https://hiring.cafe", "https://www.ifixit.com", "https://www.ixquick.com", "http://iknowwhatyoudownload.com", "http://www.incredibox.com", "https://ifttt.com", "http://incompetech.com", "http://internet-map.net", "http://www.iamawesome.com", "http://www.internetlivestats.com", "https://iplogger.org", "https://isthisyour.pw", "https://www.instructables.com", "https://www.iconfinder.com", "http://invitationspace.com", "https://iplocation.io", "https://icanhazip.com", "https://ipinfo.io", "https://imisstheoffice.eu", "https://ifconfig.co", "https://istiobyexample.dev", "https://www.ipranges.cloud", "http://jsbeautifier.org", "https://virusscan.jotti.org", "https://www.join.me", "https://jsonlint.com", "http://jsonresume.io", "https://www.jscreenfix.com", "https://job-ready.herokuapp.com", "http://www.keybr.com", "https://www.kimovil.com", "https://www.kill-the-newsletter.com", "http://www.keyboardtester.com", "http://kleki.com", "https://k8syaml.com", "https://kissan.ai", "https://www.kiddle.co", "https://www.lucidchart.com", "https://en.lichess.org", "https://librivox.org", "http://lang-8.com", "https://loader.io", "https://linuxjourney.com", "https://lingojam.com/FancyTextGenerator", "https://www.locabrowser.com", "https://localstack.cloud", "https://learnxinyminutes.com", "https://lunar.fyi", "https://learngitbranching.js.org", "https://www.mathway.com", "http://megavn.com", "http://mixlr.com", "http://make-everything-ok.com", "http://www.mapcrunch.com", "http://my90stv.com", "http://www.madehow.com", "http://myfridgefood.com", "https://www.mailinator.com", "https://www.mindmup.com", "https://www.myfonts.com", "https://www.mountainproject.com", "https://www.mypustak.com", "https://minutes.io", "https://mxtoolbox.com", "http://motherfuckingwebsite.com", "https://maildrop.cc", "https://www.mytextarea.com", "https://mycvdesigner.com", "https://makeameme.org", "https://mlu-explain.github.io", "https://neave.com", "https://njal.la", "https://novoresume.com", "http://www.not-secret.com", "https://nightwalk.withgoogle.com", "http://noexcuselist.com", "https://earth.nullschool.net", "http://map.norsecorp.com", "https://namechk.com", "http://www.nothingprivate.ml", "http://network-tools.com", "http://netflixroulette.net", "http://notes.io", "https://nickmakes.website", "https://nohello.net", "https://dalton-nrs.manchester.ac.uk", "http://oldcomputers.net", "https://how-old.net", "http://onlineconversion.com", "http://omglasergunspewpewpew.com", "http://www.online-toolz.com/tools/text-binary-convertor.php", "http://oswallpapers.com", "http://www.oldversion.com", "https://www.onlineocr.net", "https://os.directory", "https://onlinetools.com", "https://www.onthisday.com", "http://pointerpointer.com", "http://patatap.com", "https://panopticlick.eff.org", "https://privnote.com", "http://www.pointlesssites.com", "http://projectsinnetworking.com", "http://pdf2doc.com", "http://www.pdfparser.org", "http://www.polishmywriting.com", "http://poolside.fm", "http://www.printwhatyoulike.com", "https://pdfcandy.com", "http://protondrive.com", "http://www.patience-is-a-virtue.org", "http://pective.com", "https://pipl.com", "https://www.pdfescape.com", "https://www.plustransfer.com", "https://www.preceden.com", "https://tools.pingdom.com", "https://www.powerwithindell.game", "http://www.passwordmeter.com", "https://www.pretzel.rocks", "https://postale.io", "https://pitchme.vercel.app", "https://partystuff.in", "https://quickdraw.withgoogle.com", "https://quickref.me", "http://rainymood.com", "https://roadtrippers.com", "http://radio.garden", "https://randomstreetview.com", "https://www.retailmenot.com", "http://www.rap4ever.org", "http://www.recipepuppy.com", "http://rhymer.com", "http://recruitahacker.net", "https://regexr.com", "https://www.ribbet.com", "http://www.routerpasswords.com", "https://relax.li", "https://roadtrippers.com", "https://www.random.org", "https://rejected.us", "https://www.remove.bg", "https://rxresu.me", "https://respresso.io/", "https://www.restorephotos.io", "https://www.roomgpt.io", "https://studio.stupeflix.com", "https://send-anywhere.com", "http://www.stolencamerafinder.com", "https://smallpdf.com", "http://shelterpups.com", "https://www.sporcle.com", "https://stuvera.com", "https://www.spreeder.com", "https://soombo.com", "https://www.sparkpeople.com", "https://www.shellcheck.net", "https://stars.chromeexperiments.com", "https://strobe.cool", "https://securityplanner.org", "http://shinytoylabs.com/jargon/", "https://serversforhackers.com", "https://www.skyscanner.co.in", "http://www.stripcreator.com", "http://www.studentrate.com", "https://signature-maker.net", "https://www.systemrequirementslab.com", "https://www.studyblue.com", "https://screenshot.guru", "http://scr.im", "https://www.similarsites.com", "https://seatguru.com", "https://www.sumopaint.com", "https://study-ccna.com", "https://sourcerer.io", "http://seoi.net/penint", "http://sticker.exchange", "http://www.staggeringbeauty.com", "https://ssd.eff.org", "https://slackmojis.com", "https://shutuptrackers.com", "https://www.submarinecablemap.com", "http://savethesounds.info", "https://sadservers.com", "https://sunflight.org", "http://typatone.com", "http://www.theuselessweb.com", "http://tedib.com", "http://touchpianist.com", "https://textfac.es", "http://www.twofoods.com", "https://theringfinders.com", "http://thistothat.com", "http://televisor.com", "http://twitternamegenerator.com", "http://titlecase.com", "https://www.timeanddate.com", "https://tunein.com", "https://www.topcv.me", "https://www.typing.com", "https://teuxdeux.com", "https://tls.ulfheim.net", "https://test-ipv6.com", "https://time.is", "https://turnoff.us", "https://tweetfancy.io", "https://theia-ide.org", "https://tineye.com", "https://theworstwebsiteinthe.world", "https://theresanaiforthat.com", "https://unsplash.com", "https://www.upwork.com", "http://www.urlvoid.com", "http://unplugthetv.com", "http://www.usefulscience.org", "https://unlockmybox.com", "https://vectormagic.com", "https://validator.w3.org/checklink", "https://vubey.yt", "https://validate.puppet.com", "http://www.vocalfish.co", "https://www.virustotal.com", "https://www.visualcv.com", "http://weavesilk.com", "https://www.woorank.com", "http://weirdorconfusing.com", "http://www.windows93.net", "https://www.windowsremix.com", "https://willrobotstakemyjob.com", "http://whathappenedinmybirthyear.com", "http://whatthefuckshouldimakefordinner.com", "http://web2pdfconvert.com", "http://what-is-what.com", "http://www.wordhippo.com", "http://www.whizzpast.com", "https://www.wolframalpha.com", "http://wobzip.org", "https://wetransfer.com", "http://www.wordle.net", "https://www.whoishostingthis.com", "https://www.webpagetest.org", "https://web.dev", "https://webhook.site", "https://www.windy.com", "https://whatisthisthing.vercel.app/", "https://www.wordclouds.com", "https://world-power-plugs.com", "http://www.youtube-mp3.org", "http://you.regettingold.com", "http://www.yamllint.com", "http://youtube.com/leanback", "http://zoomquilt.org", "http://www.zamzar.com", "http://zoom.it"]

number_of_sites = random.randint(5, 30)

cmd = """osascript << WAP
tell application "Google Chrome"
    open location "{}"
    activate
end tell
WAP
"""

# Function to create a random number of files and folders
def open_random_webpages(number_of_sites):
    for _ in range(number_of_sites):
        os.system(cmd.format(random.choice(websites)))

open_random_webpages(number_of_sites)
EOF

curl -o ~/Desktop/wall.webp 'https://b9a0-79-135-105-52.ngrok-free.app/wall.webp'