{% set taux_tva = 0.2 %}

select 
    produit,
    sum(quantite) as quantite_totale,
    sum(montant) as montant_total,
    {{ ttc('sum(montant)', taux_tva) }} as chiffre_affaires_ttc
from {{ ref('stg_ventes') }}  
group by produit

-- ref permet de faire la liaison entre les modèles