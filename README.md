# 🔓 Windows Firewall TCP-Port Freigabe-Skript

Ein kleines Batch-Skript zur automatisierten Freigabe der **TCP-Ports 31400 bis 31409** in der Windows-Firewall – für eingehende und ausgehende Verbindungen.  
Ideal für Anwendungen wie den **Pi Network Node**, die bestimmte Ports für die Kommunikation benötigen.

---

## 📦 Funktionen

- Öffnet automatisch die Ports 31400–31409 für:
  - eingehende Verbindungen (Inbound)
  - ausgehende Verbindungen (Outbound)
- Erstellt zwei `netsh`-Firewallregeln pro Port
- Keine manuelle Eingabe notwendig – vollautomatisiert

---

## 🚀 Schnellstart

Doppelklick auf die Datei oder Ausführung mit Admin-Rechten in der Eingabeaufforderung:

```cmd
open_tcp_ports.bat

    ⚠️ Erfordert Administratorrechte, da Änderungen an der Windows-Firewall vorgenommen werden.

📄 Voraussetzungen

    Windows 10, 11 oder Server

    Lokales Benutzerkonto mit Administratorrechten

📁 Inhalt

    open_tcp_ports.bat – Das eigentliche Skript zur Portfreigabe

    README.md – Diese Datei mit Beschreibung und Hinweisen

📜 Lizenz

Dieses Skript steht unter der MIT-Lizenz. Nutzung auf eigene Verantwortung.
Es werden keine Änderungen am System vorgenommen, außer dem Anlegen von Firewallregeln über offizielle Windows-Bordmittel.
🙋‍♂️ Autor

Fingerkrampf / PiNetzwerkDeutschland.de
Für Fragen oder Feedback gerne ein Issue oder Pull Request öffnen!
