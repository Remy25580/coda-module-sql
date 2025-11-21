##### Entités \& attributs



La schéma comportera 5 entités:



* Quartier
* Bar
* Bière
* Prix
* Référence de bière



Un quartier aura pour attributs:

&nbsp;

* Son nom
* Son identifiant unique



Un bar aura pour attribut:



* Son nom
* Son adresse
* Le quartier dans lequel il se situe
* Son identifiant unique



Une bière aura pour attribut:



* Son nom
* Son degré
* Son identifiant unique



Un référence de bière aura pour attributs:



* La bière à laquelle elle fait référence
* Le bar dans laquelle celle-ci est servie
* Le prix de la bière référencée
* Son identifiant unique



Un prix aura pour identifiant:



* Sa valeur
* Son identifiant unique





##### Règles métier \& relations



Mes bars ne servent tous qu'une seule taille de bière.

Mes bars ne peuvent se situer que dans un quartier, et chaque quartier contient un ou plusieurs bars

Les bars peuvent servir plusieurs bières différentes, et plusieurs bières différentes peuvent être servies dans plusieurs bars, et à des prix différents

Un référence de bière sert à préciser le prix de telle bière dans tel bar

Un bar ne peut pas proposer plusieurs fois la même bière à des prix différents







