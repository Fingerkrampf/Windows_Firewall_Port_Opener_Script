:: ------------------------------------------------------------------------------
:: Dieses Skript ist freie Software: Sie können es unter den Bedingungen
:: der GNU General Public License, wie von der Free Software Foundation veröffentlicht,
:: weiterverbreiten und/oder modifizieren – entweder gemäß Version 3 der Lizenz oder
:: (nach Ihrer Wahl) jeder späteren Version.
::
:: Dieses Skript wird in der Hoffnung verteilt, dass es nützlich sein wird,
:: aber OHNE JEDE GEWÄHRLEISTUNG – sogar ohne die implizite Gewährleistung
:: der MARKTFÄHIGKEIT oder EIGNUNG FÜR EINEN BESTIMMTEN ZWECK.
::
:: Siehe die GNU General Public License für weitere Details.
:: https://www.gnu.org/licenses/
:: ------------------------------------------------------------------------------

@echo off
:: ------------------------------------------------------------------------------
:: Windows TCP Portfreigabe-Skript – von Fingerkrampf / PiNetzwerkDeutschland.de
:: VER 2025-05-04  (automatisiertes Skript zur Öffnung der Ports 31400–31409 
:: in der Windows-Firewall für Pi Network Node oder ähnliche Anwendungen)
:: 
:: HINWEIS: Die Nutzung und Ausführung dieses Skripts erfolgt auf eigene Verantwortung.
:: Es dient ausschließlich der Vereinfachung der manuellen Portfreigabe.
:: Für Funktion, Sicherheit oder Auswirkungen der durchgeführten Firewallregeln
:: wird keine Haftung übernommen.
::
:: Es werden keine Daten heruntergeladen. Es wird ausschließlich das integrierte
:: Windows-Tool `netsh advfirewall` verwendet.
:: ------------------------------------------------------------------------------

echo Öffnen der TCP-Ports 31400 bis 31409 für eingehende und ausgehende Verbindungen in der Windows-Firewall...

for /L %%p in (31400,1,31409) do (
    netsh advfirewall firewall add rule name="Öffne TCP-Port %%p Eingehend" dir=in action=allow protocol=TCP localport=%%p
    netsh advfirewall firewall add rule name="Öffne TCP-Port %%p Ausgehend" dir=out action=allow protocol=TCP localport=%%p
)

echo Alle Ports wurden erfolgreich für ein- und ausgehende Verbindungen geöffnet!
pause
