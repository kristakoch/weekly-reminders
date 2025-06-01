
-- Set start date and time
set currentDate to (current date)
set startDate to currentDate + (7 * days)
set time of startDate to (7 * hours)

-- List of weekly items
set weeklyItems to {¬
    "Cozy Mystery", "Time Travel", "Slasher", "High Fantasy (Epic)", "Paranormal Romance", ¬
    "Noir / Hardboiled", "Urban Fantasy", "Historical Romance", "Utopian", "Space Opera", ¬
    "Folk Horror", "Contemporary Romance", "Enemies to Lovers", "Sword and Sorcery", ¬
    "Techno-thriller", "Locked-Room Mystery", "Soft Sci-Fi", "Splatterpunk", "Magical Realism", ¬
    "Romantic Comedy", "Alternate History", "Occult Horror", "Second Chance Romance", ¬
    "Hard Sci-Fi", "Domestic Thriller", "Psychological Horror", "Police Procedural", ¬
    "Supernatural Horror", "Regency Romance", "Post-Apocalyptic", "Gothic Horror", ¬
    "Fairy Tale Retelling", "Dark Fantasy", "Alien Invasion", "Grimdark Fantasy", ¬
    "Biopunk / Genetic Engineering", "Spy Fiction / Espionage", "Mythic Fiction", ¬
    "LGBTQ+ Romance", "Historical Fantasy", "Space Western", "Psychological Thriller", ¬
    "Legal Thriller", "Dystopian", "Metafiction / Breaking the Fourth Wall", "Cyberpunk", ¬
    "Survival Horror", "Creature Feature", "Climate Fiction (Cli-Fi)", "Crime Caper", ¬
    "Portal Fantasy", "Breaking the Fourth Wall (Metafiction)"}

-- Add weekly reminders
tell application "Reminders"
    set listName to "Writing Themes"
    if not (exists list listName) then
        make new list with properties {name:listName}
    end if
    
    repeat with i from 1 to count of weeklyItems
        set title to "Week " & i & ": " & item i of weeklyItems
        set reminderDate to startDate + ((i - 1) * 7 * days)
        make new reminder in list listName with properties {name:title, remind me date:reminderDate}
    end repeat
end tell
