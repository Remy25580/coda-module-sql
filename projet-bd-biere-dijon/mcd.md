| Entité | Attributs | Description |

|--------|-----------|-------------|

| Quartier | id\_quartier | identifiant unique du quartier |

| | nom | nom du quartier |

| Bar | id\_bar | identifiant unique du bar |

| | nom | nom du bar |

| | adresse | adresse géographique du bar |

| | id\_quartier | identifiant du quartier dans lequel se situe le bar |

| Bière | id\_biere | identifiant unique de la bière |

| | nom | nom de la bière |

| | degré | degré d'alcool de la bière |

| Prix | id\_prix | identifiant unique du prix |

| | valeur | valeur du prix en € |

| Référence de bière | id\_reference | identifiant unique de la référence |

| | id\_bar | le bar dans laquelle la bière en question est servie |

| | id\_biere | la bière indiquée par la référence |

| | id\_prix | le prix de cette bière, dans ce bar |





| Relation | Cardinalité | Verbe | Lecture |

| Quartier -> Bar | 0..N | contient | Un quartier peut contenir plusieurs bars |

| Bar -> Quartier | N..1 | est présent | Chaque bar et présent dans un quartier |

| Bar -> Bière (via référence) | N..N | offre | chaque bar offre différentes bières |

| Bière -> Bar (via référence) | N..N | est disponible | chaque bière est disponible dans 1 ou plusieurs bars |

| Bière -> Prix (via référence) | N..N | peut être à | chaque bière peut être à différents prix |

| Prix - Bière (via référence) | N..N | définir | chaque prix peut définir différentes bières |

