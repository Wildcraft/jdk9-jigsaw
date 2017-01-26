To run this file in windows command prompt,



jdk9-jigsaw\01_Greetings> set path=C:\Program Files\Java\jdk-9\bin


jdk9-jigsaw\01_Greetings> mkdir mods\com.greetings


jdk9-jigsaw\01_Greetings> javac -d mods\com.greetings src\com.greetings\module-info.java src\com.greetings\com\greetings\Main.java


jdk9-jigsaw\01_Greetings> java --module-path mods -m com.greetings/com.greetings.Main

