select ticket.NUMERO_TICKET, ticket.DATE_VENTE from ticket where (month(DATE_VENTE) between 03 and 04) and year(DATE_VENTE)=2014