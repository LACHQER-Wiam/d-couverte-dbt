{%- macro ttc(colonne, taux=0.2) -%}
    round({{colonne}} * (1 + {{taux}}), 2)
{%- endmacro -%}