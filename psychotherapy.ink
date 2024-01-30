INCLUDE Scene1
INCLUDE Scene2
INCLUDE Scene3
INCLUDE Scene4
INCLUDE Start.ink


VAR Scene = 0
VAR inDoor = 0


-> Start

=== MainLoop ===
~ Scene = RANDOM(1, 4)

{ 
- ! Scene_1 && Scene <= 1 :
    -> Scene_1
- ! Scene_2 && Scene <= 2 :
    -> Scene_2
- ! Scene_3 && Scene <= 3 :
    -> Scene_3
- ! Scene_4 && Scene <= 4 :
    -> Scene_4    
}

{ Scene_1 && Scene_2 && Scene_3 && Scene_4 :
    -> Conclusion
- else:
    -> MainLoop
}



=== Conclusion == 

You have seen all the personalities and sent the patient away.
You sit alone in a chair, thinking silently.
"Di Di Di ~ Di Di Di ~"
You have received a message.

*[Open your phone]
- A message from Doctor. Jims.
Doctor. Jims: You should have finished seeing the patient. Here is the patient's medical record. I forgot to send it to you. You can take a look.

*[Open medical record]
-You opened the medical record.



* Patient's name -> patient_name
* Patient's age -> patient_age
* Diagnose disorder -> problem
* What happened to him ->what_happen

== patient_name
: 
Robin Liu
 * {not patient_age} Patient's age -> patient_age
 * {not problem} Diagnose disorder -> problem
 * {not what_happen} What happened to him ->what_happen
 * {patient_name && patient_age &&  problem} [Close medical records] -> next

== patient_age
:
19
 * {not patient_name} Patient's name -> patient_name
 * {not problem} Diagnose disorder -> problem
 * {not what_happen} What happened to him ->what_happen
 * {patient_name && patient_age &&  problem} [Close medical records] ->next



== problem
:
Dissociative Identity Disorder
He have four personality in his body.
 * {not patient_name} Patient's name -> patient_name
 * {not patient_age} Patient's age -> patient_age
 * {not what_happen} What happened to him ->what_happen
 * {patient_name && patient_age &&  problem} [Close medical records] -> next
 
 == what_happen
 :
Four years ago, the patient had bullied a student at the age of 14, causing him to jump off a building.
As a student, he had no idea that such a thing would happen.
And later, his bullying was finally discovered.
He was constantly questioned by his teacher, the grandfather of the deceased, and a policeman.
Also cyberbullyed by others in society.
He was mentally immature and slowly suffered from severe depression because of this incident, and began to develop other personalities two years ago.
The main personality seems to have disappeared, and daily activities are dominated by different personalities.

 * {not patient_name} Patient's name -> patient_name
 * {not patient_age} Patient's age -> patient_age
 * {not problem} Diagnose disorder -> problem
 * {patient_name && patient_age &&  problem} [Close medical records] -> next


== next
After reading the patient's medical record, you sighed.
Whose fault is this.

* Teacher -> teacher
* The Bully -> bully
* Family -> family
* Studens himselve -> student

== teacher
You think it's the teacher's fault.
If it weren't for the teacher's indifference to the students' psychology and physiology, this would not have happened.
->home

== bully
The bully is a prisoner himself, and what he does cannot be forgiven.
But he himself has also received cyberbullying, and he is both a prisoner and a victim.
->home

== family
Without the company of his family, he lost a place to talk, and he had to bear everything alone.
->home

== student
If the student can stand up bravely and ask loudly for help, if he can't find a teacher, he can go to their parents, and if he can't find their parents, they can go to the police. There is always a way to help him, and he has to say no to bullying bravely!
->home

== home
After thinking about this, you stood up and went home.
-> END
