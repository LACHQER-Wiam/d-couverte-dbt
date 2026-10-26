select 
    id as vente_id,
    produit,
    quantite,
    prix_unitaire,
    quantite * prix_unitaire as montant,
    cast(date_vente as date) as date_vente
from {{ ref('ventes') }}

