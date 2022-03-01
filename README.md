# CISA Log4j (CVE-2021-44228) Vulnerability Guidance #

This repository provides
[CISA's guidance](https://www.cisa.gov/uscert/apache-log4j-vulnerability-guidance)
and an overview of related software regarding the Log4j vulnerability
(CVE-2021-44228). CISA urges users and administrators to upgrade to Log4j 2.17.1
(Java 8), 2.12.4 (Java 7) and 2.3.2 (Java 6), and review and monitor the
[Apache Log4j Security Vulnerabilities webpage](https://logging.apache.org/log4j/2.x/security.html)
for updates and mitigation guidance.

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
- [CISA ED 22-02: Apache Log4j Recommended Mitigation Measures](https://www.cisa.gov/uscert/ed-22-02-apache-log4j-recommended-mitigation-measures)
- [CISA ALERT (AA21-356A): Mitigating Log4Shell and Other Log4j-Related Vulnerabilities](https://www.cisa.gov/uscert/ncas/alerts/aa21-356a)
- [Emergency Directive 22-02 Mitigate Apache Log4j Vulnerability](https://www.cisa.gov/emergency-directive-22-02)
- [Statement from CISA Director Easterly on “Log4j” Vulnerability](https://www.cisa.gov/news/2021/12/11/statement-cisa-director-easterly-log4j-vulnerability).

## CISA Current Activity Alerts ##

- [Mitigating Log4Shell and Other Log4j-Related Vulnerabilities](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/22/mitigating-log4shell-and-other-log4j-related-vulnerabilities)
- [CISA Issues ED 22-02 Directing Federal Agencies to Mitigate Apache Log4j Vulnerabilities](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/17/cisa-issues-ed-22-02-directing-federal-agencies-mitigate-apache)
- [Apache Releases Log4j Version 2.15.0 to Address Critical RCE Vulnerability Under Exploitation](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/10/apache-releases-log4j-version-2150-address-critical-rce)
- [CISA Creates Webpage for Apache Log4j Vulnerability CVE-2021-44228](https://www.cisa.gov/uscert/ncas/current-activity/2021/12/13/cisa-creates-webpage-apache-log4j-vulnerability-cve-2021-44228)

National Vulnerability Database (NVD) Information: [CVE-2021-44228](https://nvd.nist.gov/vuln/detail/CVE-2021-44228)

## CISA Mitigation Guidance ##

When updates are available, agencies must update software
using Log4j to the newest version, which is the most
effective and manageable long-term option. Where
updating is not possible, the following mitigating
measures can be considered as a temporary solution
and apply to the entire solution stack.

- **Disable Log4j library.** Disabling software using the
Log4j library is an effective measure, favoring
controlled downtime over adversary-caused issues.
This option could cause operational impacts and limit
visibility into other issues.
- **Disable JNDI lookups or disable remote codebases.**
This option, while effective, may involve
developer work and could impact functionality.
- **Disconnect affected stacks.** Solution stacks not
connected to agency networks pose a dramatically
lower risk from attack. Consider temporarily
disconnecting the stack from agency networks.
- **Isolate the system.** Create a “vulnerable network”
VLAN and segment the solution stack from the
rest of the enterprise network.
- **Deploy a properly configured Web Application
Firewall (WAF) in front of the solution stack.**
Deploying a WAF is an important, but incomplete,
solution. While threat actors will be able to
bypass this mitigation, the reduction in alerting
will allow an agency SOC to focus on a smaller
set of alerts.
- **Apply micropatch.** There are several micropatches
available. They are not a part of the official
update but may limit agency risk.
- Report incidents promptly to CISA and/or the FBI
[here](https://www.cisa.gov/uscert/report).

For more information regarding CISA recommended mitigation measures please visit
[here](https://www.cisa.gov/uscert/ed-22-02-apache-log4j-recommended-mitigation-measures).

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

### Creating a pull request ###

Instructions for creating a pull request using the GitHub Web UI can be found
in [`PULL-EXAMPLE.md`](PULL-EXAMPLE.md).

## Software List ##

To view the full list of vendors & software [click here](./software_lists/README.md).
