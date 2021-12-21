# CISA Log4j (CVE-2021-44228) Vulnerability Guidance #

This repository provides
[CISA's guidance](https://www.cisa.gov/uscert/apache-log4j-vulnerability-guidance)
and an overview of related software regarding the Log4j vulnerability
(CVE-2021-44228). CISA encourages users and administrators to review the
[official Apache release](https://logging.apache.org/log4j/2.x/security.html)
and upgrade to Log4j 2.17.0 or apply the recommended mitigations immediately.

The information in this repository is provided "as is" for informational
purposes only and is being assembled and updated by CISA through
collaboration with the broader cybersecurity community.  Inquire with the
manufacturer or their respective online resources for the most up-to-date
information regarding any specific product listed. CISA does not endorse
any commercial product or service, including any subjects of analysis.
Any reference to specific commercial products, processes, or services by
service mark, trademark, manufacturer, or otherwise, does not constitute
or imply their endorsement, recommendation, or favoring by CISA.

## Official CISA Guidance & Resources ##

- [CISA Apache Log4j Vulnerability Guidance](https://www.cisa.gov/uscert/apache-log4j-vulnerability-guidance)
- [Emergency Directive 22-02 Mitigate Apache Log4j Vulnerability](https://www.cisa.gov/emergency-directive-22-02)
- [Statement from CISA Director Easterly on “Log4j” Vulnerability](https://www.cisa.gov/news/2021/12/11/statement-cisa-director-easterly-log4j-vulnerability).

## CISA Current Activity Alerts ##

- [CISA Issues ED 22-02 Directing Federal Agencies to Mitigate Apache Log4j Vulnerabilities](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/17/cisa-issues-ed-22-02-directing-federal-agencies-mitigate-apache)
- [Apache Releases Log4j Version 2.15.0 to Address Critical RCE Vulnerability Under Exploitation](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/10/apache-releases-log4j-version-2150-address-critical-rce)
- [CISA Creates Webpage for Apache Log4j Vulnerability CVE-2021-44228](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/13/cisa-creates-webpage-apache-log4j-vulnerability-cve-2021-44228)

National Vulnerability Database (NVD) Information: [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228)

## Mitigation Guidance ##

CISA urges organizations operating products marked as "Fixed" to immediately
implement listed patches/mitigations [here](https://www.cisa.gov/uscert/apache-log4j-vulnerability-guidance).

CISA urges organizations operating products marked as "Not Fixed" to immediately
implement alternate controls, including:

- Install a WAF with rules that automatically update.
- Set `log4j2.formatMsgNoLookups` to true by adding `-Dlog4j2.formatMsgNoLookups=True`
  to the Java Virtual Machine command for starting your application.
- Ensure that any alerts from a vulnerable device are immediately actioned.
- Report incidents promptly to CISA and/or the FBI [here](https://www.cisa.gov/uscert/report).

## Software List ##

Please view the full list of software vendors [here](./software-list.md)
