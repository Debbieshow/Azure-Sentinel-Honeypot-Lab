# Azure-Sentinel-Honeypot-Lab

# 🎯 Project Objective

​This project involved deploying a live Ubuntu 24.04 LTS virtual machine on Microsoft Azure to act as a honeypot. The goal was to observe real-world attack patterns, map the geographic origin of adversaries, and develop remediation strategies using Microsoft Sentinel. 

---

# ​🛠️ Environment & Methodology
* **​Platform:** Microsoft Azure. 
* **Honey-Bait Tactic:** The VM was named CS-Payroll-Backup to attract adversaries. ​
* **Controlled Vulnerability:** The Network Security Group (NSG) was configured to allow all inbound traffic, and the internal firewall was intentionally disabled to facilitate data collection. 
* ​**Logging:** Integrated the Azure Monitor Agent (AMA) to forward auth.log and syslog events to the Log Analytics Workspace. 

---

# ​📊 Key Findings (Feb 2 - Feb 8, 2026)
​During the 7-day monitoring window, the following intelligence was gathered: 
* **​Total Attacks:** 2,461.
* ​**Primary Target:** SSH (Port 22) accounted for 2,307 attacks.
* **Top Attack Origin:** The United States (54%), followed by South Korea (17%) and Germany (12%).
* **Username Trends:** Attackers focused on default high-privilege accounts like admin (220 attempts) and ubuntu.
* **Exploitation Attempts:** Significant traffic was correlated with CVE-2024-6387 (regreSSHion). 

---

# ​🛡️ Remediation Recommendations

​Based on the analysis, I proposed a 4-pillar defense strategy for SOC teams: 

* ​**Vulnerability Management:** Prioritizing CVE remediation and SIEM detection rules. 

* ​**Intelligence-Driven IP Filtering:** Automating IP blocking based on known malicious infrastructure. 

* ​**Credential Hardening:** Enforcing MFA, complex passwords, and auditing for legacy accounts. 

* ​**Continuous Monitoring:** Ensuring 100% visibility across all organizational systems. 

---

# ​📂 Full Project Documentation
​View the Full Honeypot Analysis Report (PDF) 
