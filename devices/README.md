# Device Inventory

This directory contains the devices monitored by Network Monitor.

## Supported devices

The initial implementation uses SNMP v2c.

The lab should eventually include:

- Router
- Layer-3 switch
- Layer-2 switch
- Firewall
- Linux server
- Windows server
- Wireless access point

## SNMP metrics

Network Monitor collects system and interface metrics including:

### System

- sysName
- sysDescr
- sysUpTime
- sysLocation

### Interfaces

- ifDescr
- ifAlias
- ifAdminStatus
- ifOperStatus
- ifInOctets
- ifOutOctets
- ifInErrors
- ifOutErrors
- ifInDiscards
- ifOutDiscards

## Security

SNMP credentials must never be committed to GitHub.

SNMP v3 should be used when supported by the device.

The initial lab implementation uses SNMP v2c for compatibility and simplicity.