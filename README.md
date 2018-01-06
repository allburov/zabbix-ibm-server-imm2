This repo contains new version for this: https://share.zabbix.com/cat-server-hardware/server-with-imm-imm2


# Install
- Copy getFanSpeed.rb to "externalscripts" on Zabbix server
- Make script executebly (chmod +x getFanSpeed.rb)
- [Install Ruby](https://www.ruby-lang.org/en/documentation/installation) on Zabbix server
- Ensure, that you have `snmpget` program installed, e.g. for [Debian] (https://wiki.debian.org/SNMP) or Centos: `rpm -ql net-snmp-utils |grep bin`
- **zabbix<3.0** - manual create value mapping [**IMM2-systemhealt**](https://github.com/allburov/zabbix-ibm-server-imm2/blob/master/Template%20IBM%20-%20IMM2%20SNMP.xml#L743-L765)
  - nonRecoverable=0
  - Critical=2
  - nonCritical=4
  - normal=255
- Import template


# Info
- Zabbix 3.0 compatibility
- The OIDtree of IMM: http://www.oidview.com/mibs/2/IMM-MIB.html
- The MIB: download update in IBM Download Center www.ibm.com/support/ , EXTRACT the .exe file
- Example: http://www-933.ibm.com/support/fixcentral/systemx/downloadFixes?parent=Cluster%2B1350&product=ibm/systemx/0445&&platform=All&function=fixId&fixids=clust_13a_ibm_fw_imm2_1aoo40z-2.50_anyos_noarch&includeRequisites=1&includeSupersedes=0&downloadMethod=http

# Thanks
- Star [repo in GitHub](https://github.com/allburov/zabbix-ibm-server-imm2) if you use it ;)
- Krzysztof Królikowski (kkrolikowski)
