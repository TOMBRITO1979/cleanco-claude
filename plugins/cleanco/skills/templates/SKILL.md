---
name: templates
description: Ready-to-adapt message and document templates (booking confirmation, quote follow-ups, review request, complaint response, collections sequence, price increase, proposal skeleton). Agents fill these in rather than writing from scratch.
---

# Templates

All templates below are in English. When the customer's language is Spanish or Portuguese, adapt the same structure natively in that language (do not translate word by word). Example — booking confirmation:
- ES: Hola {first}, tu servicio de {service} está agendado para el {date} entre {window}. Equipo de {n}. Por favor deja el acceso como acordamos ({access}). Responde aquí con cualquier cambio — con 24h de aviso evitas el cargo de {fee} por cancelación. — {Company}
- PT: Olá {first}, seu serviço de {service} está agendado para {date} entre {window}. Equipe de {n}. Deixe o acesso como combinado ({access}). Responda aqui se precisar mudar — com 24h de aviso você evita a taxa de {fee}. — {Company}

## Booking confirmation (text)
Hi {first}, you're booked for {service} on {date} between {window}. Crew of {n}. Please leave access as agreed ({access}). Reply here with any changes — 24h notice avoids the {fee} cancellation fee. — {Company}

## Quote follow-up sequence
- Day 1: "Hi {first}, here's your quote for {service}: {price}. Want me to hold {date} for you?"
- Day 3: "Quick check — any questions on the quote? Happy to adjust the scope."
- Day 7: "We have {date} open this week if you'd like to get it done."
- Day 14: "No rush — the quote is good until {valid_until}. Just reply 'book' when ready."
- Day 30: "Closing this out on my end. If you ever need us, we're one text away."

## Review request (same day)
Thanks for having us today, {first}! If everything looked great, a quick Google review helps our small team more than you know: {link}. If anything was missed, reply here and we'll fix it within 24 hours.

## Complaint response
Hi {first}, thank you for telling us — I'm sorry {issue}. That's not our standard. We can come back {date/time} to make it right at no charge. Could you send a photo so the crew knows exactly what to focus on?

## Collections sequence (commercial)
- Day 1 after due: friendly reminder with invoice attached.
- Day 7: "Invoice {n} for {amount} is 7 days past due — can you confirm payment date?"
- Day 14: firm notice, late fee applies per agreement.
- Day 30: final notice; service paused until paid; next step collections/small claims.

## Price increase letter
Effective {date}, your rate for {service} will change from {old} to {new} ({%}). This reflects {reason: wages, insurance, supplies}. Your schedule and crew stay the same. Thank you for trusting us — questions? Call {phone}.

## Proposal skeleton
1. Cover: company, client, date, valid until
2. Scope of work (by area / frequency grid for commercial)
3. Exclusions
4. Schedule & access
5. Pricing (initial clean / recurring; monthly for commercial)
6. Terms: payment, cancellation, guarantee, insurance
7. Acceptance signature
