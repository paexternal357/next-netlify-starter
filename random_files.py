import os
import random

# List of realistic filenames and folder names
file_names = [
    "report_2023.pdf", "vacation_photo.jpg", "meeting_notes.docx", "budget.xlsx",
    "music_track.mp3", "video_clip.mp4", "backup_01.zip", "log_file.txt", "project.json", "Resume_v2.pdf", "Wedding_Plan_Details.xlsx", "Taxes_2022.pdf", "Grocery_List.txt", "Family_Birthday_Calendar.ics", "Old_Photos_Backup.zip", "Weekly_Workouts.xlsx", "Meeting_Notes_01-15-2023.docx", "Sales_Analysis_Q1.pptx", "Team_Roster_2023.xlsx", "Expense_Report_Jan.pdf", "Marketing_Strategy.docx", "Draft_Proposal_v3.docx", "Invoice_#1045.pdf", "Vendor_Contacts.csv", "App_Code_Main.js", "README.md", "Final_Bugfixes_Log.txt", "CloudConfig.yaml", "Backend_Database_Schema.sql", "Frontend_Assets.zip", "API_Endpoints_Documentation.pdf", "Feature_Plan_Roadmap.xlsx", "Favorite_Movies_List.txt", "TV_Show_Watchlist.docx", "Book_Recommendations.docx", "Playlist_2024.m3u", "Streaming_Service_Passwords.txt", "Old_Games_Collection.iso", "Karaoke_Favorites.mp3", "Movie_Quotes.txt", "Story_Ideas.docx", "Photography_Session_Notes.txt", "Song_Lyrics_Drafts.docx", "Portfolio_Preview.pdf", "Creative_Writing_Prompts.docx", "Character_Designs.psd", "Script_Draft_Final.docx", "DIY_Projects_List.xlsx", "Appliance_Warranties.pdf", "House_Plans_Backup.zip", "Monthly_Bills_2024.xlsx", "Recipes_Tried_And_Loved.docx", "Moving_Checklist.xlsx", "Yardwork_Schedule.docx", "Emergency_Contacts_List.pdf", "RandomFile_123.zip", "CouponCodes2024.pdf", "Software_Setup_v4.exe", "Product_Manual.pdf", "Image_0001.png", "Old_Receipts_Backup.zip", "Font_Pack_Free.otf", "Shared_Zoom_Recording.mp4", "Old_SMS_Backup.zip", "Ideas_Scribble.txt", "Gift_Lists_By_Year.xlsx", "Random_Doodles.jpg", "Holiday_Budget_Planner.xlsx", "Medical_Bills_2023.pdf", "High_School_Yearbook_Scans.zip", "Travel_Bucket_List.docx", "Weekly_Menu_Planner.xlsx", "Anniversary_Trip_Itinerary.pdf", "Daily_Journal_Entries.docx", "Favorite_Quotes_Collection.txt", "Fitness_Tracker_Data_Export.csv", "Annual_Report_Draft.docx", "Conference_Presentation_Slides.pptx", "Onboarding_Guide_2024.pdf", "KPI_Metrics_Tracker.xlsx", "Draft_Contract_Template.docx", "Social_Media_Post_Schedule.xlsx", "Project_Plan_v1.docx", "Workflow_Diagram_Final.png", "Performance_Review_Template.docx", "Archived_Project_Files.zip", "Debugging_Tips.txt", "Git_Commands_Cheat_Sheet.docx", "Plugin_Backups_2024.zip", "System_Logs_Export_2023.log", "Prototype_Code_Snippets.py", "ML_Model_Training_Data.csv", "Terminal_Shortcuts.txt", "Podcasts_To_Check_Out.txt", "Movie_Night_Schedule.xlsx", "Favorite_Albums_2024.docx", "Favorite_Stand-Up_Specials.txt", "Anime_To_Watch_2024.docx", "Playlist_Backups.m3u", "Streaming_Series_Finale_Reviews.docx", "Animation_Tutorials_2024.zip", "Photography_Locations_List.docx", "Sketchbook_2023.psd", "Story_Arc_Outline.docx", "Color_Grading_Presets.zip", "3D_Models_Backup.obj", "Podcast_Script_Season1.docx", "Logo_Designs_Draft.ai", "Video_Editing_Tips.txt", "Lease_Agreement_Copy.pdf", "Cleaning_Schedule_2024.xlsx", "Kids_Activity_Schedule.xlsx", "Gardening_Notes_2023.docx", "Monthly_Utility_Tracker.xlsx", "Donation_Receipts_Backup.zip", "Seasonal_Decor_List.docx", "Random_Software_Installer_v2.exe", "Images_Backup_001.zip", "Fonts_Collection_2024.otf", "Free_Icons_Set.zip", "Latest_E-Book_Downloads.epub", "Funny_GIFs_Collection.zip", "Downloaded_Whitepapers_2023.pdf", "Digital_Art_Scans.zip", "Productivity_Tips_List.docx", "Recipes_To_Try_2024.docx", "Camping_Checklist.txt", "Morning_Routines_Collection.docx", "Budget_Tracker_2024.xlsx", "Photos_From_Phone_Backup.zip", "Packing_List_Vacation.docx", "Old_Letters_Scanned.zip", "Department_Meeting_Agenda.docx", "Employee_Handbook_2024.pdf", "R&D_Progress_Report.docx", "Draft_Whitepaper_V4.docx", "Deployment_Scripts.zip", "Archived_Ticket_Logs_2023.csv", "IoT_Device_Configuration.yaml", "Mobile_App_Test_Data.json", "Cybersecurity_Best_Practices.pdf", "Comedy_Show_Schedules.docx", "Graphic_Novel_Reading_List.docx", "Retro_Video_Game_Roms.zip", "DIY_Tutorial_Notes.docx", "Calligraphy_Practice_Files.pdf", "Character_Backstory_Notes.docx", "Book_Cover_Designs.psd", "Vacation_Property_Listings.xlsx", "Tax_Documents_Archive_2021-2023.zip", "Recycling_Center_Schedule.pdf", "Local_Event_Flyers_2024.pdf", "Auto_Maintenance_Records.xlsx", "Tech_Conference_Tickets.pdf", "Personal_Backup_2024.zip", "Gift_Ideas_By_Person.xlsx", "Daily_Affirmations_List.docx"
]
folder_names = [
    "Vacation_Photos_2023", "Health_Records", "College_Essays", "Approved_Designs", "Client_Feedback_Responses", "Test_Scripts_Automation", "DockerFile_Config", "Game_Save_Backups", "Comics_Archive", "Artwork_Concepts", "Animation_Assets", "Pet_Medical_History", "Home_Inventory_List", "Maintenance_Log", "eBook_Downloads", "Archived_Web_Articles", "Random_Tech_Diagrams", "Hobbies_Info_Documents", "Music_Lessons_Recordings", "Weather_Data_Logs", "Inspirational_Quotes_Collection", "Childhood_Photos_Backup", "DevOps_Tutorials_Notes", "OpenSource_Contributions", "Database_Backups_Jan2024", "Classic_Novels_Backlog", "Video_Essays_List", "Movie_Soundtracks_Favorites", "Painting_Tutorials_List", "Renovation_Planning_Documents", "Emergency_Prep_Checklist", "Meme_Backup_2024", "Archived_News_Articles", "Hobby_Photography_Backup", "Kids_Art_Project_Ideas", "Retirement_Planning_Documents", "New_Hire_Training_Documents", "Live_Concert_Recordings_Backup", "Rare_Movie_Posters_Collection", "Watercolor_Painting_Ideas", "Fitness_Milestone_Calendar", "project_files_temp", "notes_random_001", "archive_old_docs_2024", "system_backup_01-2024", "misc_files_collection", "Random_Memes_Folder", "Repair_Manuals_Folder", "Random_Screenshots_Folder", "Online_Tutorials_Folder", "Random_Notes_Folder", "Inspirational_Speeches_Folder"
]

# Define the base directory where the files and folders will be created
base_dir = ["~/Desktop/", "~/Downloads/", "~/Documents/"]

l1, l2 = [], []

# Function to create a random number of files and folders
def create_files_and_folders(num_items):
    for _ in range(num_items):
        if random.choice([True, False]):  # Decide between file or folder
            if random.choice([True, False]):  # Create a folder
                folder_name = random.choice(folder_names) + f"_{random.randint(1, 10)}"
                l1.append(random.choice(base_dir) + folder_name)

            else:  # Create a file
                file_name = random.choice(file_names)
                l2.append(random.choice(base_dir) + file_name)

# Number of items to create (files + folders)
num_items = random.randint(30, 90)

# Run the creation process
create_files_and_folders(num_items)

print(f"touch {' '.join(l2)} && mkdir {' '.join(l1)} ")
