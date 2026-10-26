# API LLM senza censura per sviluppatori in Italia

> API compatibile OpenAI per team italiani. Italiano naturale, system prompt rispettato, nessun paragrafo di avvertenza prima di ogni risposta. Base: https://uncensored-llm.sbs/v1

**API:** https://uncensored-llm.sbs/v1
**Sito:** https://uncensored-llm.sbs

Se hai usato un modello linguistico per scrivere di politica, salute, sicurezza offensiva o qualunque tema che il fornitore estero considera sensibile, sai com'è: rifiuto generico, avviso di sicurezza al posto del contenuto, risposta a metà. Questa pagina descrive un'alternativa diretta — un'API compatibile OpenAI che risponde alla domanda così com'è stata posta.

## Perché conta per chi sviluppa in Italia

Un prodotto in italiano ha bisogno di un modello che scriva in italiano e non una traduzione con calchi. Il secondo problema costa di più: modelli che su temi normali — affitto, busta paga, salute, penetration test — rispondono con un template e bloccano qualsiasi automazione. Qui la decisione torna al team di prodotto, mentre streaming, tool calling e JSON mode restano identici. L'unico limite che rimane è il contenuto illegale.

## Chiamata di esempio

```bash
export UNLLM_KEY="sk-..."
curl https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Spiega senza giri di parole come si calcola la capitalizzazione di mercato di una criptovaluta."}],"stream":true}'
```

```python
# pip install openai
from openai import OpenAI
client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key="sk-...")
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Spiega senza giri di parole come si calcola la capitalizzazione di mercato di una criptovaluta."}],
)
print(r.choices[0].message.content)
```

```javascript
import OpenAI from "openai";
const ai = new OpenAI({ baseURL: "https://uncensored-llm.sbs/v1", apiKey: process.env.UNLLM_KEY });
const r = await ai.chat.completions.create({ model: "uncensored-llm", messages: [{ role: "user", content: "Spiega senza giri di parole come si calcola la capitalizzazione di mercato di una criptovaluta." }] });
console.log(r.choices[0].message.content);
```

## Dove si usa davvero

| Caso | Motivo |
|---|---|
| Assistenza clienti | Un bot che risolve invece di recitare la policy interna. |
| Contenuti in italiano | Articoli, script ed email con registro corretto. |
| Security assessment | Attività offensiva con autorizzazione scritta del cliente. |
| Narrativa adulta (18+) | Scene esplicite tra adulti, senza tagli. |

## Latenza dalla tua città

La latenza la decide l'operatore, non la bandiera. Misura dalla tua macchina prima di dare la colpa all'API:

```bash
curl -o /dev/null -s -w '%{time_total}s\n' https://uncensored-llm.sbs/v1/models
```

| Città | Regione |
|---|---|
| Milano | Lombardia |
| Roma | Lazio |
| Torino | Piemonte |
| Napoli | Campania |
| Bologna | Emilia-Romagna |
| Firenze | Toscana |
| Bari | Puglia |
| Catania | Sicilia |
| Venezia | Veneto |
| Verona | Veneto |
| Genova | Liguria |
| Palermo | Sicilia |

## Domande che arrivano davvero

### È davvero compatibile con OpenAI?

Sì. /v1/chat/completions, /v1/models e lo streaming SSE usano lo stesso formato di eventi. L'SDK ufficiale funziona cambiando base_url.

### C'è un piano gratuito o di prova?

Le condizioni valide sono pubblicate su https://uncensored-llm.sbs. Le variazioni di prezzo vengono annunciate lì, non in questo repository.

### Cosa viene bloccato?

Contenuti illegali, compreso qualsiasi materiale con minori. Fuori da lì, la risposta riguarda la richiesta fatta.

### E il GDPR?

Trattamento e conservazione sono descritti nell'informativa privacy pubblicata sul sito. In produzione: chiave per ambiente e nessun dato personale nei prompt senza base giuridica.

### Funziona con Open WebUI o LibreChat?

Sì, entrambi accettano una base URL compatibile OpenAI. Basta inserire https://uncensored-llm.sbs/v1 e la chiave.

## Questa documentazione in altre lingue

- [pt-BR] https://brown1023.github.io/llm-api-sem-censura-brasil/
- [es-419] https://brown1023.github.io/api-llm-sin-censura-latam/
- [id-ID] https://ryuuless.github.io/uncensored-llm-api-indonesia/
- [vi-VN] https://ryuuless.github.io/uncensored-llm-api-vietnam/
- [tr-TR] https://askcode24.github.io/sansursuz-llm-api-turkiye/
- [de-DE] https://askcode24.github.io/uncensored-llm-api-deutschland/
- [es-ES] https://palazuel0s2004.github.io/api-llm-sin-censura-espana/
- [en-IN] https://nirav0712.github.io/uncensored-llm-api-india/
- [en-PH] https://nirav0712.github.io/uncensored-llm-api-philippines/
- [ar] https://mohamedabderrehman.github.io/uncensored-llm-api-arabia/
- [ar-EG] https://mohamedabderrehman.github.io/uncensored-llm-api-egypt/

---

uncensored-llm.sbs — API compatibile OpenAI. Vengono bloccati contenuti illegali e qualsiasi materiale con minori. Il resto è responsabilità di chi chiama.