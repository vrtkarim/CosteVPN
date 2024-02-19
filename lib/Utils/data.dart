import 'dart:convert';

import 'package:dropdown_model_list/dropdown_model_list.dart';
import 'package:kvpn/Utils/model.dart';

class Data {
  List<dynamic> jsondata = [
    {
      'name': 'South Korea',
      'username': 'vpn',
      'password': 'vpn',
      'config': """
client
dev tun
proto tcp
remote 146.70.238.3 443
resolv-retry infinite
remote-random
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
ping 15
ping-restart 0
ping-timer-rem
reneg-sec 0
comp-lzo no
verify-x509-name CN=ae54.nordvpn.com

remote-cert-tls server

auth-user-pass
verb 3
pull
fast-io
cipher AES-256-CBC
auth SHA512
<ca>
-----BEGIN CERTIFICATE-----
MIIFCjCCAvKgAwIBAgIBATANBgkqhkiG9w0BAQ0FADA5MQswCQYDVQQGEwJQQTEQ
MA4GA1UEChMHTm9yZFZQTjEYMBYGA1UEAxMPTm9yZFZQTiBSb290IENBMB4XDTE2
MDEwMTAwMDAwMFoXDTM1MTIzMTIzNTk1OVowOTELMAkGA1UEBhMCUEExEDAOBgNV
BAoTB05vcmRWUE4xGDAWBgNVBAMTD05vcmRWUE4gUm9vdCBDQTCCAiIwDQYJKoZI
hvcNAQEBBQADggIPADCCAgoCggIBAMkr/BYhyo0F2upsIMXwC6QvkZps3NN2/eQF
kfQIS1gql0aejsKsEnmY0Kaon8uZCTXPsRH1gQNgg5D2gixdd1mJUvV3dE3y9FJr
XMoDkXdCGBodvKJyU6lcfEVF6/UxHcbBguZK9UtRHS9eJYm3rpL/5huQMCppX7kU
eQ8dpCwd3iKITqwd1ZudDqsWaU0vqzC2H55IyaZ/5/TnCk31Q1UP6BksbbuRcwOV
skEDsm6YoWDnn/IIzGOYnFJRzQH5jTz3j1QBvRIuQuBuvUkfhx1FEwhwZigrcxXu
MP+QgM54kezgziJUaZcOM2zF3lvrwMvXDMfNeIoJABv9ljw969xQ8czQCU5lMVmA
37ltv5Ec9U5hZuwk/9QO1Z+d/r6Jx0mlurS8gnCAKJgwa3kyZw6e4FZ8mYL4vpRR
hPdvRTWCMJkeB4yBHyhxUmTRgJHm6YR3D6hcFAc9cQcTEl/I60tMdz33G6m0O42s
Qt/+AR3YCY/RusWVBJB/qNS94EtNtj8iaebCQW1jHAhvGmFILVR9lzD0EzWKHkvy
WEjmUVRgCDd6Ne3eFRNS73gdv/C3l5boYySeu4exkEYVxVRn8DhCxs0MnkMHWFK6
MyzXCCn+JnWFDYPfDKHvpff/kLDobtPBf+Lbch5wQy9quY27xaj0XwLyjOltpiST
LWae/Q4vAgMBAAGjHTAbMAwGA1UdEwQFMAMBAf8wCwYDVR0PBAQDAgEGMA0GCSqG
SIb3DQEBDQUAA4ICAQC9fUL2sZPxIN2mD32VeNySTgZlCEdVmlq471o/bDMP4B8g
nQesFRtXY2ZCjs50Jm73B2LViL9qlREmI6vE5IC8IsRBJSV4ce1WYxyXro5rmVg/
k6a10rlsbK/eg//GHoJxDdXDOokLUSnxt7gk3QKpX6eCdh67p0PuWm/7WUJQxH2S
DxsT9vB/iZriTIEe/ILoOQF0Aqp7AgNCcLcLAmbxXQkXYCCSB35Vp06u+eTWjG0/
pyS5V14stGtw+fA0DJp5ZJV4eqJ5LqxMlYvEZ/qKTEdoCeaXv2QEmN6dVqjDoTAo
k0t5u4YRXzEVCfXAC3ocplNdtCA72wjFJcSbfif4BSC8bDACTXtnPC7nD0VndZLp
+RiNLeiENhk0oTC+UVdSc+n2nJOzkCK0vYu0Ads4JGIB7g8IB3z2t9ICmsWrgnhd
NdcOe15BincrGA8avQ1cWXsfIKEjbrnEuEk9b5jel6NfHtPKoHc9mDpRdNPISeVa
wDBM1mJChneHt59Nh8Gah74+TM1jBsw4fhJPvoc7Atcg740JErb904mZfkIEmojC
VPhBHVQ9LHBAdM8qFI2kRK0IynOmAZhexlP/aT/kpEsEPyaZQlnBn3An1CRz8h0S
PApL8PytggYKeQmRhl499+6jLxcZ2IegLfqq41dzIjwHwTMplg+1pKIOVojpWA==
-----END CERTIFICATE-----
</ca>
key-direction 1
<tls-auth>
#
# 2048 bit OpenVPN static key
#
-----BEGIN OpenVPN Static key V1-----
e685bdaf659a25a200e2b9e39e51ff03
0fc72cf1ce07232bd8b2be5e6c670143
f51e937e670eee09d4f2ea5a6e4e6996
5db852c275351b86fc4ca892d78ae002
d6f70d029bd79c4d1c26cf14e9588033
cf639f8a74809f29f72b9d58f9b8f5fe
fc7938eade40e9fed6cb92184abb2cc1
0eb1a296df243b251df0643d53724cdb
5a92a1d6cb817804c4a9319b57d53be5
80815bcfcb2df55018cc83fc43bc7ff8
2d51f9b88364776ee9d12fc85cc7ea5b
9741c4f598c485316db066d52db4540e
212e1518a9bd4828219e24b20d88f598
a196c9de96012090e333519ae18d3509
9427e7b372d348d352dc4c85e18cd4b9
3f8a56ddb2e64eb67adfc9b337157ff4
-----END OpenVPN Static key V1-----
</tls-auth>
"""
    },
    {
      'name': 'Japan',
      'username': 'vpn',
      'password': 'vpn',
      'config': """
dev tun
proto tcp
remote 219.100.37.224 443
cipher AES-128-CBC
auth SHA1
resolv-retry infinite
nobind
persist-key
persist-tun
client
verb 3

<ca>
-----BEGIN CERTIFICATE-----
MIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4
WhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu
ZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY
MTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc
h77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+
0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U
A5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW
T8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH
B5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC
B5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv
KBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn
OlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn
jh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw
qHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI
rU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV
HRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq
hkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL
ubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ
3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK
NFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5
ORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur
TkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC
jNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc
oyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq
4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA
mRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d
emyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=
-----END CERTIFICATE-----

</ca>
<cert>
-----BEGIN CERTIFICATE-----
MIICxjCCAa4CAQAwDQYJKoZIhvcNAQEFBQAwKTEaMBgGA1UEAxMRVlBOR2F0ZUNs
aWVudENlcnQxCzAJBgNVBAYTAkpQMB4XDTEzMDIxMTAzNDk0OVoXDTM3MDExOTAz
MTQwN1owKTEaMBgGA1UEAxMRVlBOR2F0ZUNsaWVudENlcnQxCzAJBgNVBAYTAkpQ
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5h2lgQQYUjwoKYJbzVZA
5VcIGd5otPc/qZRMt0KItCFA0s9RwReNVa9fDRFLRBhcITOlv3FBcW3E8h1Us7RD
4W8GmJe8zapJnLsD39OSMRCzZJnczW4OCH1PZRZWKqDtjlNca9AF8a65jTmlDxCQ
CjntLIWk5OLLVkFt9/tScc1GDtci55ofhaNAYMPiH7V8+1g66pGHXAoWK6AQVH67
XCKJnGB5nlQ+HsMYPV/O49Ld91ZN/2tHkcaLLyNtywxVPRSsRh480jju0fcCsv6h
p/0yXnTB//mWutBGpdUlIbwiITbAmrsbYnjigRvnPqX1RNJUbi9Fp6C2c/HIFJGD
ywIDAQABMA0GCSqGSIb3DQEBBQUAA4IBAQChO5hgcw/4oWfoEFLu9kBa1B//kxH8
hQkChVNn8BRC7Y0URQitPl3DKEed9URBDdg2KOAz77bb6ENPiliD+a38UJHIRMqe
UBHhllOHIzvDhHFbaovALBQceeBzdkQxsKQESKmQmR832950UCovoyRB61UyAV7h
+mZhYPGRKXKSJI6s0Egg/Cri+Cwk4bjJfrb5hVse11yh4D9MHhwSfCOH+0z4hPUT
Fku7dGavURO5SVxMn/sL6En5D+oSeXkadHpDs+Airym2YHh15h0+jPSOoR6yiVp/
6zZeZkrN43kuS73KpKDFjfFPh8t4r1gOIjttkNcQqBccusnplQ7HJpsk
-----END CERTIFICATE-----

</cert>

<key>
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA5h2lgQQYUjwoKYJbzVZA5VcIGd5otPc/qZRMt0KItCFA0s9R
wReNVa9fDRFLRBhcITOlv3FBcW3E8h1Us7RD4W8GmJe8zapJnLsD39OSMRCzZJnc
zW4OCH1PZRZWKqDtjlNca9AF8a65jTmlDxCQCjntLIWk5OLLVkFt9/tScc1GDtci
55ofhaNAYMPiH7V8+1g66pGHXAoWK6AQVH67XCKJnGB5nlQ+HsMYPV/O49Ld91ZN
/2tHkcaLLyNtywxVPRSsRh480jju0fcCsv6hp/0yXnTB//mWutBGpdUlIbwiITbA
mrsbYnjigRvnPqX1RNJUbi9Fp6C2c/HIFJGDywIDAQABAoIBAERV7X5AvxA8uRiK
k8SIpsD0dX1pJOMIwakUVyvc4EfN0DhKRNb4rYoSiEGTLyzLpyBc/A28Dlkm5eOY
fjzXfYkGtYi/Ftxkg3O9vcrMQ4+6i+uGHaIL2rL+s4MrfO8v1xv6+Wky33EEGCou
QiwVGRFQXnRoQ62NBCFbUNLhmXwdj1akZzLU4p5R4zA3QhdxwEIatVLt0+7owLQ3
lP8sfXhppPOXjTqMD4QkYwzPAa8/zF7acn4kryrUP7Q6PAfd0zEVqNy9ZCZ9ffho
zXedFj486IFoc5gnTp2N6jsnVj4LCGIhlVHlYGozKKFqJcQVGsHCqq1oz2zjW6LS
oRYIHgECgYEA8zZrkCwNYSXJuODJ3m/hOLVxcxgJuwXoiErWd0E42vPanjjVMhnt
KY5l8qGMJ6FhK9LYx2qCrf/E0XtUAZ2wVq3ORTyGnsMWre9tLYs55X+ZN10Tc75z
4hacbU0hqKN1HiDmsMRY3/2NaZHoy7MKnwJJBaG48l9CCTlVwMHocIECgYEA8jby
dGjxTH+6XHWNizb5SRbZxAnyEeJeRwTMh0gGzwGPpH/sZYGzyu0SySXWCnZh3Rgq
5uLlNxtrXrljZlyi2nQdQgsq2YrWUs0+zgU+22uQsZpSAftmhVrtvet6MjVjbByY
DADciEVUdJYIXk+qnFUJyeroLIkTj7WYKZ6RjksCgYBoCFIwRDeg42oK89RFmnOr
LymNAq4+2oMhsWlVb4ejWIWeAk9nc+GXUfrXszRhS01mUnU5r5ygUvRcarV/T3U7
TnMZ+I7Y4DgWRIDd51znhxIBtYV5j/C/t85HjqOkH+8b6RTkbchaX3mau7fpUfds
Fq0nhIq42fhEO8srfYYwgQKBgQCyhi1N/8taRwpk+3/IDEzQwjbfdzUkWWSDk9Xs
H/pkuRHWfTMP3flWqEYgW/LW40peW2HDq5imdV8+AgZxe/XMbaji9Lgwf1RY005n
KxaZQz7yqHupWlLGF68DPHxkZVVSagDnV/sztWX6SFsCqFVnxIXifXGC4cW5Nm9g
va8q4QKBgQCEhLVeUfdwKvkZ94g/GFz731Z2hrdVhgMZaU/u6t0V95+YezPNCQZB
wmE9Mmlbq1emDeROivjCfoGhR3kZXW1pTKlLh6ZMUQUOpptdXva8XxfoqQwa3enA
M7muBbF0XN7VO80iJPv+PmIZdEIAkpwKfi201YB+BafCIuGxIF50Vg==
-----END RSA PRIVATE KEY-----

</key>

"""
    },
    {
      'name': 'USA',
      'username': 'vpn',
      'password': 'vpn',
      'config': """client
dev tun
proto udp
remote usa3.vpnjantit.com 2500
resolv-retry infinite
nobind
persist-key
persist-tun
remote-cert-tls server
auth SHA512
cipher AES-256-CBC
ignore-unknown-option block-outside-dns
block-outside-dns
verb 3
link-mtu 1603
auth-nocache
tls-client
tls-version-min 1.2
tls-cipher TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256
setenv opt block-outside-dns

<ca>
-----BEGIN CERTIFICATE-----
MIIDSzCCAjOgAwIBAgIUGRiU0iESAlyEsHlDCY7eok6Yug8wDQYJKoZIhvcNAQEL
BQAwFjEUMBIGA1UEAwwLRWFzeS1SU0EgQ0EwHhcNMjIwOTI1MDcwOTUxWhcNMzIw
OTIyMDcwOTUxWjAWMRQwEgYDVQQDDAtFYXN5LVJTQSBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAK/Ietxp8ul48Ec95F6lQomLSdDVIESEgCl6F6ur
PpvrN76RFJTP2aHe27UwFSqhSMjvPf8IqDBFj1kY1+lTenniPxb3z6dDqh6ln7RF
w5z3dHucGrmLwG4paUkmvac9ubV1cTUTHGTplAFNPsXeIY6mSrjSdAd1J1j07zLQ
wFyl23AlhEqK5j+LduLyF5TkpsQKMT+0/U5AzeD0HCeiQUDNWb8cXZ+jc6ArfGKS
QWLPPqOhA/Xr/ID8QdWJceyB+pMGxCdnKfC2OD4yYvEnVHMKEMyz4Ai/KgWulGw3
iI6RgtpDWV7+Z9oUzdLyjkGEAmwQe85+9zBnVR7gn76H/QkCAwEAAaOBkDCBjTAM
BgNVHRMEBTADAQH/MB0GA1UdDgQWBBS+Rez6q5MNEMJ8mf9g68UDy3e/9zBRBgNV
HSMESjBIgBS+Rez6q5MNEMJ8mf9g68UDy3e/96EapBgwFjEUMBIGA1UEAwwLRWFz
eS1SU0EgQ0GCFBkYlNIhEgJchLB5QwmO3qJOmLoPMAsGA1UdDwQEAwIBBjANBgkq
hkiG9w0BAQsFAAOCAQEADN1o/5haAf6SlhcgJJyc4uzo/rPh+YRz//fgKqb5nrVQ
h5WyD8BJpXyAE7PSsPIA/atw6OTRQfPSMu6jk7Q8I1wwosnPuqHbEzx/c/oY3tJR
XDMDtdpTGkBwJGhuyTlk0HvZ1g9W01Cxh8CC+zXvrSaQdXYjGPBkqOs9GNDuLfkU
t7HsnzFZY4sdtDMV+jZV5R19t5u7paeuCRTH9Pug81cl9FwbNO6eHIvgfPyDSS9b
dB20XXaeYTqKxMPt0e75/utY+a9wkvlB9L7R1TEkzgQ0UGcBF4YduA4tVSPerDUj
intzxHinQSbkWLW9gHdlE9pxQEpEYGqTds8bNdiAAw==
-----END CERTIFICATE-----
</ca>
<cert>
-----BEGIN CERTIFICATE-----
MIIDYDCCAkigAwIBAgIRAKcIQFzWdPWNE9RGzqjPBVwwDQYJKoZIhvcNAQELBQAw
FjEUMBIGA1UEAwwLRWFzeS1SU0EgQ0EwHhcNMjQwMjE4MTYxNTMyWhcNMzQwMjE1
MTYxNTMyWjAcMRowGAYDVQQDDBF2cG4tdnBuamFudGl0LmNvbTCCASIwDQYJKoZI
hvcNAQEBBQADggEPADCCAQoCggEBAL/qZhsP4noNBZOcjZ9QdFJm+V6nMQaydjKm
x2aQja5FaKe6LCUsv5ugdp8XUFKYE9I8wHTQ2H3t3+S0xOhxAThfvMHG9xyTBfBg
reDvUSN6HYK6HQT4QF4J1INl76DGlxAUdSf73nSmUAR7X9aJ7v6XG0Vl+i5QqwP3
xaUM9gezejCRMtyMXqoe78nAxvlbaY2ZPJddiTwig1feUMYuVFZuZeWg3QPcgIhz
WOXlwD4IkEPnslTEIefp6/oOpCohya1OOelSC/JfZs7v966OfBtQVS2h9ebd7jxj
TOq326AMN+OowMhIGdVCIQCQf0i83MVioA3ODI8Wr1cW0/ErCzUCAwEAAaOBojCB
nzAJBgNVHRMEAjAAMB0GA1UdDgQWBBQGj2mlWMqb3YsWnQCabM3TvPjvLDBRBgNV
HSMESjBIgBS+Rez6q5MNEMJ8mf9g68UDy3e/96EapBgwFjEUMBIGA1UEAwwLRWFz
eS1SU0EgQ0GCFBkYlNIhEgJchLB5QwmO3qJOmLoPMBMGA1UdJQQMMAoGCCsGAQUF
BwMCMAsGA1UdDwQEAwIHgDANBgkqhkiG9w0BAQsFAAOCAQEAp2QghAJtvzXTo46m
Xp/V/reSWtk/I9BbhoxynZaLgtuDKCjgZ9JZCjWZBENGYKgyWhe9X7MuYbKumg/x
YsGA0/oc7YOdouYN2UgiMN59lapvfl7j7SjLb7YhxY+mJRBY3O9b3WLdgptdung5
Jr2mrmTLrRzV4qlm4/XQ6ZW+/PV9BeHgF6v3qk0f5W/M8KcmEUUT3L0GAjIuPHn7
LBgIQEVP9Ew7lZ/zb3qXcV8dtcSH29bWYDSitr0U/frZdNfcnw8TOtFIGJJEhMtV
RUWfyoXXxtcilVwSdiDRaS18ZqODvVdEkDzHIA1cmwNGRjyLWfKOy7zUHgH/Vxu7
iWjJxw==
-----END CERTIFICATE-----
</cert>
<key>
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC/6mYbD+J6DQWT
nI2fUHRSZvlepzEGsnYypsdmkI2uRWinuiwlLL+boHafF1BSmBPSPMB00Nh97d/k
tMTocQE4X7zBxvcckwXwYK3g71Ejeh2Cuh0E+EBeCdSDZe+gxpcQFHUn+950plAE
e1/Wie7+lxtFZfouUKsD98WlDPYHs3owkTLcjF6qHu/JwMb5W2mNmTyXXYk8IoNX
3lDGLlRWbmXloN0D3ICIc1jl5cA+CJBD57JUxCHn6ev6DqQqIcmtTjnpUgvyX2bO
7/eujnwbUFUtofXm3e48Y0zqt9ugDDfjqMDISBnVQiEAkH9IvNzFYqANzgyPFq9X
FtPxKws1AgMBAAECggEAIrH1k57jir0f7Pe4grzAysTjAEGpk1RgGfgcxGYNtxvF
N81ofbABU9lGmKxWURg9PRzOjk/TU7DVcTtc/ciwN8jXDxExS3Eo+bQAu1GIkalZ
/HA5HtTijh2o1bhwAdjlJnsMUxYtuVj3zlefk+GL22rl+z3cZNMgl68LhDM7p1hy
8Yzm5TKcRDacZ3APuU5Ve6TRCRAATTTbSacurUbTmP6ly5LUdCRi0D2RvEl9TXhw
D+MnHuthOElrOJjjktPdybNBFbz77N7BHtSJL9Nye0ceswf3SBHJEVlPFqkn9M3L
Pz+pW4+H0YCUJ15cbT3IQX/1xnVM3TWubUhU8JBPYQKBgQDeyKC8Xd7q2barJBLQ
lAocKX7w9hhf9vPwtEhdvSjLCsELoIGBFFECOAEylApIgMY5bCthCjp/0RujMe18
IFNaE7VRerpU7os2Dc0X88M2vSxzGblA6GexXwrSLRpwSQ5MU0wfQCormDNRbnD3
NtmBXEiNetOLxNt3llDQUyVQkwKBgQDch5NIpIAh59qDQ2aXS5qelzfs81q9H2NI
hBKST/JUlA4toAgF4CR+YxspC5umQpR/zXe3DwVlKhvSKKrVKO6/KpniiJASwvMs
1Lg4qAaCwly1x7VRmdYl+tpI9XEyr+N42e+LrqUH+MVlyLD+kkXELUn4KUwE+IB0
XIsx7GK6FwKBgEMqHTts2X3YMTgbYgi7+OhQolKm/uY/n3+b+o04MAo2rciBlUmD
BIE0vTewZgFBwYEiWVmiKczLEBf9P2nCnR50/p8X7wEYAaREOObVuK7SDYqN4Mnu
xwQ0cSC4NFZR0Bu2qSZqw8vs0Nvl/eyp/pz/Y2gz9X8X1EqTaL3Fs2Q9AoGAS9RW
gakG4iG+UlpvwWBe1195/IElV1iepAW9+Q+CbTDHu0qG17Zd9hOP+EokiEPmmheF
ra19lm6nSFlxfIBpr9QvO+TnXXwpb+XpPpoQOxAoHt1/7IIwT7j1LBcxiFNQrXKK
2wX/e0FAZyJeMfsMAEvuXmWc3SyxxtE3j8APppsCgYEAzRWQGuvZbXqrFzaryaF+
HkhEzdkmYM8zcd+g3B24lWbAQrh/gxGuOpygUzPwt8ZeOnKmq/um6whJUO043HuN
4aoyVgLT7pTGo+uikMJ4q0HDzBoOyvnjcizAMXNR5IFdUXxkjPgeOWyR3L1Fx+Hh
Fkh4Lazu/S6tvfVCGptqYuU=
-----END PRIVATE KEY-----
</key>
<tls-crypt>
-----BEGIN OpenVPN Static key V1-----
98457765057b1db1bc0b46260b8a7002
1ed874dd61e022963f26726d87420af4
8e66217642b150281e0376560e089163
4ddea946461c34e02fc4be21095d758e
84a9e9c906a83631ca7b485875084e92
86e3ce34d09e1ff36d3dcb98bdab86cd
0e250fe5ed8e5281258a1a35ca5d23cc
ba200da07a464e9d0f421beea27e3966
f4d224bf58463caf4e45db471c747fa0
b7bfcf6a60b035c6a378ef01281db3ef
d157e5855034b6c4ecf4177b816a33d9
25cf16a60431f6752fff20e958117f68
5504026b7250e369749f00f2ea90e017
544b7f74cdf4a631aa02095829d233bb
bf89ed536ed9a36b2bb933267bf5d2ee
af1cdfae624fb7537831e35fbd7cef76
-----END OpenVPN Static key V1-----
</tls-crypt>
"""
    },
    {
      'name': 'China',
      'username': 'vpn',
      'password': 'vpn',
      'config':
          """###############################################################################
# OpenVPN 2.0 Sample Configuration File
# for PacketiX VPN / SoftEther VPN Server
# 
# !!! AUTO-GENERATED BY SOFTETHER VPN SERVER MANAGEMENT TOOL !!!
# 
# !!! YOU HAVE TO REVIEW IT BEFORE USE AND MODIFY IT AS NECESSARY !!!
# 
# This configuration file is auto-generated. You might use this config file
# in order to connect to the PacketiX VPN / SoftEther VPN Server.
# However, before you try it, you should review the descriptions of the file
# to determine the necessity to modify to suitable for your real environment.
# If necessary, you have to modify a little adequately on the file.
# For example, the IP address or the hostname as a destination VPN Server
# should be confirmed.
# 
# Note that to use OpenVPN 2.0, you have to put the certification file of
# the destination VPN Server on the OpenVPN Client computer when you use this
# config file. Please refer the below descriptions carefully.


###############################################################################
# Specify the type of the layer of the VPN connection.
# 
# To connect to the VPN Server as a "Remote-Access VPN Client PC",
#  specify 'dev tun'. (Layer-3 IP Routing Mode)
#
# To connect to the VPN Server as a bridging equipment of "Site-to-Site VPN",
#  specify 'dev tap'. (Layer-2 Ethernet Bridgine Mode)

dev tun


###############################################################################
# Specify the underlying protocol beyond the Internet.
# Note that this setting must be correspond with the listening setting on
# the VPN Server.
# 
# Specify either 'proto tcp' or 'proto udp'.

proto tcp


###############################################################################
# The destination hostname / IP address, and port number of
# the target VPN Server.
# 
# You have to specify as 'remote <HOSTNAME> <PORT>'. You can also
# specify the IP address instead of the hostname.
# 
# Note that the auto-generated below hostname are a "auto-detected
# IP address" of the VPN Server. You have to confirm the correctness
# beforehand.
# 
# When you want to connect to the VPN Server by using TCP protocol,
# the port number of the destination TCP port should be same as one of
# the available TCP listeners on the VPN Server.
# 
# When you use UDP protocol, the port number must same as the configuration
# setting of "OpenVPN Server Compatible Function" on the VPN Server.

remote _unregistered_vpn341479952.opengw.net 992


###############################################################################
# The HTTP/HTTPS proxy setting.
# 
# Only if you have to use the Internet via a proxy, uncomment the below
# two lines and specify the proxy address and the port number.
# In the case of using proxy-authentication, refer the OpenVPN manual.

;http-proxy-retry
;http-proxy [proxy server] [proxy port]


###############################################################################
# The encryption and authentication algorithm.
# 
# Default setting is good. Modify it as you prefer.
# When you specify an unsupported algorithm, the error will occur.
# 
# The supported algorithms are as follows:
#  cipher: [NULL-CIPHER] NULL AES-128-CBC AES-192-CBC AES-256-CBC BF-CBC
#          CAST-CBC CAST5-CBC DES-CBC DES-EDE-CBC DES-EDE3-CBC DESX-CBC
#          RC2-40-CBC RC2-64-CBC RC2-CBC
#  auth:   SHA SHA1 MD5 MD4 RMD160

cipher AES-128-CBC
auth SHA1


###############################################################################
# Other parameters necessary to connect to the VPN Server.
# 
# It is not recommended to modify it unless you have a particular need.

resolv-retry infinite
nobind
persist-key
persist-tun
client
verb 3
#auth-user-pass


###############################################################################
# The certificate file of the destination VPN Server.
# 
# The CA certificate file is embedded in the inline format.
# You can replace this CA contents if necessary.
# Please note that if the server certificate is not a self-signed, you have to
# specify the signer's root certificate (CA) here.

<ca>
-----BEGIN CERTIFICATE-----
MIIFazCCA1OgAwIBAgIRAIIQz7DSQONZRGPgu2OCiwAwDQYJKoZIhvcNAQELBQAw
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMTUwNjA0MTEwNDM4
WhcNMzUwNjA0MTEwNDM4WjBPMQswCQYDVQQGEwJVUzEpMCcGA1UEChMgSW50ZXJu
ZXQgU2VjdXJpdHkgUmVzZWFyY2ggR3JvdXAxFTATBgNVBAMTDElTUkcgUm9vdCBY
MTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAK3oJHP0FDfzm54rVygc
h77ct984kIxuPOZXoHj3dcKi/vVqbvYATyjb3miGbESTtrFj/RQSa78f0uoxmyF+
0TM8ukj13Xnfs7j/EvEhmkvBioZxaUpmZmyPfjxwv60pIgbz5MDmgK7iS4+3mX6U
A5/TR5d8mUgjU+g4rk8Kb4Mu0UlXjIB0ttov0DiNewNwIRt18jA8+o+u3dpjq+sW
T8KOEUt+zwvo/7V3LvSye0rgTBIlDHCNAymg4VMk7BPZ7hm/ELNKjD+Jo2FR3qyH
B5T0Y3HsLuJvW5iB4YlcNHlsdu87kGJ55tukmi8mxdAQ4Q7e2RCOFvu396j3x+UC
B5iPNgiV5+I3lg02dZ77DnKxHZu8A/lJBdiB3QW0KtZB6awBdpUKD9jf1b0SHzUv
KBds0pjBqAlkd25HN7rOrFleaJ1/ctaJxQZBKT5ZPt0m9STJEadao0xAH0ahmbWn
OlFuhjuefXKnEgV4We0+UXgVCwOPjdAvBbI+e0ocS3MFEvzG6uBQE3xDk3SzynTn
jh8BCNAw1FtxNrQHusEwMFxIt4I7mKZ9YIqioymCzLq9gwQbooMDQaHWBfEbwrbw
qHyGO0aoSCqI3Haadr8faqU9GY/rOPNk3sgrDQoo//fb4hVC1CLQJ13hef4Y53CI
rU7m2Ys6xt0nUW7/vGT1M0NPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNV
HRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5tFnme7bl5AFzgAiIyBpY9umbbjANBgkq
hkiG9w0BAQsFAAOCAgEAVR9YqbyyqFDQDLHYGmkgJykIrGF1XIpu+ILlaS/V9lZL
ubhzEFnTIZd+50xx+7LSYK05qAvqFyFWhfFQDlnrzuBZ6brJFe+GnY+EgPbk6ZGQ
3BebYhtF8GaV0nxvwuo77x/Py9auJ/GpsMiu/X1+mvoiBOv/2X/qkSsisRcOj/KK
NFtY2PwByVS5uCbMiogziUwthDyC3+6WVwW6LLv3xLfHTjuCvjHIInNzktHCgKQ5
ORAzI4JMPJ+GslWYHb4phowim57iaztXOoJwTdwJx4nLCgdNbOhdjsnvzqvHu7Ur
TkXWStAmzOVyyghqpZXjFaH3pO3JLF+l+/+sKAIuvtd7u+Nxe5AW0wdeRlN8NwdC
jNPElpzVmbUq4JUagEiuTDkHzsxHpFKVK7q4+63SM1N95R1NbdWhscdCb+ZAJzVc
oyi3B43njTOQ5yOf+1CceWxG1bQVs5ZufpsMljq4Ui0/1lvh+wjChP4kqKOJ2qxq
4RgqsahDYVvTH9w7jXbyLeiNdd8XM2w9U/t7y0Ff/9yi0GE44Za4rF2LN9d11TPA
mRGunUHBcnWEvgJBQl9nJEiU0Zsnvgc/ubhPgXRR4Xq37Z0j4r7g1SgEEzwxA57d
emyPxgcYxn/eR44/KJ4EBs+lVDR3veyJm+kXQ99b21/+jh5Xos1AnX5iItreGCc=
-----END CERTIFICATE-----

</ca>


###############################################################################
# The client certificate file (dummy).
# 
# In some implementations of OpenVPN Client software
# (for example: OpenVPN Client for iOS),
# a pair of client certificate and private key must be included on the
# configuration file due to the limitation of the client.
# So this sample configuration file has a dummy pair of client certificate
# and private key as follows.

<cert>
-----BEGIN CERTIFICATE-----
MIICxjCCAa4CAQAwDQYJKoZIhvcNAQEFBQAwKTEaMBgGA1UEAxMRVlBOR2F0ZUNs
aWVudENlcnQxCzAJBgNVBAYTAkpQMB4XDTEzMDIxMTAzNDk0OVoXDTM3MDExOTAz
MTQwN1owKTEaMBgGA1UEAxMRVlBOR2F0ZUNsaWVudENlcnQxCzAJBgNVBAYTAkpQ
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5h2lgQQYUjwoKYJbzVZA
5VcIGd5otPc/qZRMt0KItCFA0s9RwReNVa9fDRFLRBhcITOlv3FBcW3E8h1Us7RD
4W8GmJe8zapJnLsD39OSMRCzZJnczW4OCH1PZRZWKqDtjlNca9AF8a65jTmlDxCQ
CjntLIWk5OLLVkFt9/tScc1GDtci55ofhaNAYMPiH7V8+1g66pGHXAoWK6AQVH67
XCKJnGB5nlQ+HsMYPV/O49Ld91ZN/2tHkcaLLyNtywxVPRSsRh480jju0fcCsv6h
p/0yXnTB//mWutBGpdUlIbwiITbAmrsbYnjigRvnPqX1RNJUbi9Fp6C2c/HIFJGD
ywIDAQABMA0GCSqGSIb3DQEBBQUAA4IBAQChO5hgcw/4oWfoEFLu9kBa1B//kxH8
hQkChVNn8BRC7Y0URQitPl3DKEed9URBDdg2KOAz77bb6ENPiliD+a38UJHIRMqe
UBHhllOHIzvDhHFbaovALBQceeBzdkQxsKQESKmQmR832950UCovoyRB61UyAV7h
+mZhYPGRKXKSJI6s0Egg/Cri+Cwk4bjJfrb5hVse11yh4D9MHhwSfCOH+0z4hPUT
Fku7dGavURO5SVxMn/sL6En5D+oSeXkadHpDs+Airym2YHh15h0+jPSOoR6yiVp/
6zZeZkrN43kuS73KpKDFjfFPh8t4r1gOIjttkNcQqBccusnplQ7HJpsk
-----END CERTIFICATE-----

</cert>

<key>
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA5h2lgQQYUjwoKYJbzVZA5VcIGd5otPc/qZRMt0KItCFA0s9R
wReNVa9fDRFLRBhcITOlv3FBcW3E8h1Us7RD4W8GmJe8zapJnLsD39OSMRCzZJnc
zW4OCH1PZRZWKqDtjlNca9AF8a65jTmlDxCQCjntLIWk5OLLVkFt9/tScc1GDtci
55ofhaNAYMPiH7V8+1g66pGHXAoWK6AQVH67XCKJnGB5nlQ+HsMYPV/O49Ld91ZN
/2tHkcaLLyNtywxVPRSsRh480jju0fcCsv6hp/0yXnTB//mWutBGpdUlIbwiITbA
mrsbYnjigRvnPqX1RNJUbi9Fp6C2c/HIFJGDywIDAQABAoIBAERV7X5AvxA8uRiK
k8SIpsD0dX1pJOMIwakUVyvc4EfN0DhKRNb4rYoSiEGTLyzLpyBc/A28Dlkm5eOY
fjzXfYkGtYi/Ftxkg3O9vcrMQ4+6i+uGHaIL2rL+s4MrfO8v1xv6+Wky33EEGCou
QiwVGRFQXnRoQ62NBCFbUNLhmXwdj1akZzLU4p5R4zA3QhdxwEIatVLt0+7owLQ3
lP8sfXhppPOXjTqMD4QkYwzPAa8/zF7acn4kryrUP7Q6PAfd0zEVqNy9ZCZ9ffho
zXedFj486IFoc5gnTp2N6jsnVj4LCGIhlVHlYGozKKFqJcQVGsHCqq1oz2zjW6LS
oRYIHgECgYEA8zZrkCwNYSXJuODJ3m/hOLVxcxgJuwXoiErWd0E42vPanjjVMhnt
KY5l8qGMJ6FhK9LYx2qCrf/E0XtUAZ2wVq3ORTyGnsMWre9tLYs55X+ZN10Tc75z
4hacbU0hqKN1HiDmsMRY3/2NaZHoy7MKnwJJBaG48l9CCTlVwMHocIECgYEA8jby
dGjxTH+6XHWNizb5SRbZxAnyEeJeRwTMh0gGzwGPpH/sZYGzyu0SySXWCnZh3Rgq
5uLlNxtrXrljZlyi2nQdQgsq2YrWUs0+zgU+22uQsZpSAftmhVrtvet6MjVjbByY
DADciEVUdJYIXk+qnFUJyeroLIkTj7WYKZ6RjksCgYBoCFIwRDeg42oK89RFmnOr
LymNAq4+2oMhsWlVb4ejWIWeAk9nc+GXUfrXszRhS01mUnU5r5ygUvRcarV/T3U7
TnMZ+I7Y4DgWRIDd51znhxIBtYV5j/C/t85HjqOkH+8b6RTkbchaX3mau7fpUfds
Fq0nhIq42fhEO8srfYYwgQKBgQCyhi1N/8taRwpk+3/IDEzQwjbfdzUkWWSDk9Xs
H/pkuRHWfTMP3flWqEYgW/LW40peW2HDq5imdV8+AgZxe/XMbaji9Lgwf1RY005n
KxaZQz7yqHupWlLGF68DPHxkZVVSagDnV/sztWX6SFsCqFVnxIXifXGC4cW5Nm9g
va8q4QKBgQCEhLVeUfdwKvkZ94g/GFz731Z2hrdVhgMZaU/u6t0V95+YezPNCQZB
wmE9Mmlbq1emDeROivjCfoGhR3kZXW1pTKlLh6ZMUQUOpptdXva8XxfoqQwa3enA
M7muBbF0XN7VO80iJPv+PmIZdEIAkpwKfi201YB+BafCIuGxIF50Vg==
-----END RSA PRIVATE KEY-----

</key>

"""
    }
  ];
  List<Model> fromJson(List json) {
    List<Model> data = [];
    for (int i = 0; i < json.length; i++) {
      data.add(Model(
          config: json[i]['config'],
          name: json[i]['name'],
          username: json[i]['username'],
          password: json[i]['password']));
    }
    return data;
  }

  List<OptionItem> options() {
    List<Model> d = fromJson(jsondata);
    List<OptionItem> result = [];
    for (int i = 0; i < d.length; i++) {
      result.add(OptionItem(title: d[i].name, id: (i + 1).toString()));
    }
    return result;
  }

  /* [
    OptionItem(id: "1", title: "USA"),
    OptionItem(id: "2", title: "Japan"),
    OptionItem(id: "3", title: "China"),
    OptionItem(id: "4", title: "Thailand"),
  ] */
}
