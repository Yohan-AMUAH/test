#!/bin/bash
#scraping data from yahoo finance

# Vérifier si le nombre d'arguments est correct
if [ "$#" -ne 3 ]; then
            echo "Usage: $0 <ticker> <fréquence> <période>"
                exit 1
fi

# Récupérer les arguments
ticker="$1"
frequence="$2"
periode="$3"

# Créer le répertoire "resultats" s'il n'existe pas encore
mkdir -p resultats

# Utiliser curl pour télécharger le contenu avec les arguments spécifiés
curl -o "resultats/donnees_${ticker}_${frequence}_${periode}.csv" "https://query1.finance.yahoo.com/v7/finance/download/${ticker}?range=${periode}&interval=${frequence}&events=history&includeAdjustedClose=true"
