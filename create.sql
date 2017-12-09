:) set experimental_allow_extended_storage_definition_syntax = 1
SET experimental_allow_extended_storage_definition_syntax = 1

Ok.

0 rows in set. Elapsed: 0.000 sec. 

:) CREATE TABLE traffic.flow_binder (     Date Date MATERIALIZED toDate(date),     date DateTime,     agent_ip String,     input_port UInt64,     output_port UInt64,     src_mac String,     dst_mac String,     eth_type UInt8,     vlan_in UInt8,     vlan_out UInt8,     src_ip UInt64,     dst_ip UInt64,    src_asn UInt32,     dst_asn UInt32,     ip_protocol UInt32,     ip_tos UInt8,     ip_ttl UInt8,     src_port UInt16,     dst_port UInt16, flag UInt8,  packet_size UInt64,   spacket_length UInt64, sample_ratio UInt16 ) ENGINE = MergeTree PARTITION BY toMonday(Date) ORDER BY (Date, (src_ip, dst_ip, Date))

CREATE TABLE traffic.flow_binder
(
    Date Date MATERIALIZED toDate(date), 
    date DateTime, 
    agent_ip String, 
    input_port UInt64, 
    output_port UInt64, 
    src_mac String, 
    dst_mac String, 
    eth_type UInt8, 
    vlan_in UInt8, 
    vlan_out UInt8, 
    src_ip UInt64, 
    dst_ip UInt64, 
    src_asn UInt32, 
    dst_asn UInt32, 
    ip_protocol UInt32, 
    ip_tos UInt8, 
    ip_ttl UInt8, 
    src_port UInt16, 
    dst_port UInt16, 
    flag UInt8, 
    packet_size UInt64, 
    spacket_length UInt64, 
    sample_ratio UInt16
)
ENGINE = MergeTree
PARTITION BY toMonday(Date)
ORDER BY (Date, (src_ip, dst_ip, Date))

Ok.

0 rows in set. Elapsed: 0.000 sec.
