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

You see "all" the patient today, then you slowly took out a folder in your drawer.
    
* Patient's name -> patient_name
* Patient's age -> patient_age
* Patient's problem -> problem

== patient_name
: 
David
 * {not patient_age} Patient's age -> patient_age
 * {not problem} Diagnose disorder -> problem
 * {patient_name && patient_age &&  problem} [Close folder] -> next

== patient_age
:
22 years old, born on June 6th, 2000
 * {not patient_name} Patient's name -> patient_name
 * {not problem} Diagnose disorder -> problem
 * {patient_name && patient_age &&  problem} [Close folder] ->next



== problem
:
-Dissociative Identity Disorder
-He have four personality in his body.
-One is teacher, one is Old man, one is student, and one is police.
 * {not patient_name} Patient's name -> patient_name
 * {not patient_age} Patient's age -> patient_age
 * {patient_name && patient_age &&  problem} [Close folder] -> next

== next
His main personality is gone, need to find a way to wake him up.-> END
