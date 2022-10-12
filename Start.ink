===Start ===

As usual, you wake up from bed, then take a quick shower, and go to the living room.

* [Make breakfast] -> breakfast
* [Open your phone] -> phone

== breakfast ==
- You are thinking of making breakfast, and you look at the refrigerator, only eggs left inside, so you start to make a fried egg.
*{phone} After a while, you start to eat. -> clinic

*{not phone} After a while, you start to eat.
- * {not phone}[Open your phone] -> phone

== phone ==
- You open your phone and see a massage.
- 
- Dear Doctor Jeff,
- Today, a special patient will arrive at your clinic. I will need you to inquire and diagnose him. Please remember, this patient is very special, he has got four personalities in his mind, and they do not know each other exists, so please ask about what has happened between them, and record it. One more thing, if you want to switch a patient's personality, just snap your fingers, but which one appears is completely random.

- Doctor.Jims.

* [Close phone] 
- You slowly touch your chin. You have seen a patient with multiple personalities, but a patient with four personalities is quite rare. Also, they do not know each other, which makes this patient more ‘special.’ However, you need to make sure that the main personality still exists or not. 
- {breakfast: ->clinic}

* {not breakfast}[Make breakfast] -> breakfast

== clinic ==
- After taking care of your appearance a little, you are ready to go to your clinic.

- You are a psychiatrist who used to work in the biggest hospital in the city, but something caused you to leave. However, you open a small clinic on your own, and it is not far from where you live.

- It is worth mentioning that you have been involved in a chase, and the patient who chased you also happened to be a multi-personality patient. You only hope that the patient you meet today will be a little more friendly this time.

* [Make a coffee] -> coffee
* [Just wait for the patient] ->wait

== coffee
- Since the patient hasn't arrived yet, you would love to make a cup of coffee.

- What type of coffee do you want to drink?

* [Blue Mountain] ->blue
* [Kona Coffee] -> kona
* [Geisha Coffee] ->geisha

== blue
- You decide to drink your favorite Blue Mountain coffee and feel totally satisfied and relaxed every time you drink it. 
- ->drink
== kona
- This was sent by a patient in the past, and it is said to be relatively expensive, but today a special patient is coming, so you make an exception to reward yourself.
- ->drink
== geisha
- Geisha Coffee has been popular recently, so you bought some, and today will be a good day to try it. 
- ->drink

== drink
- You are enjoying your coffee while waiting for the patient.
- After a while, there is a knock on the door.
- ->MainLoop


== wait
- You decide to just wait for the patient and, of course, time for some TikTok.
- After a while, there is a knock on the door.
-> MainLoop