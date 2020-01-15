Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C70EF13C851
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 16:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C7B6EA33;
	Wed, 15 Jan 2020 15:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62186EA33
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 15:49:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 07:49:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; 
 d="scan'208,217";a="213747122"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga007.jf.intel.com with ESMTP; 15 Jan 2020 07:49:43 -0800
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jan 2020 15:49:42 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 15 Jan 2020 15:49:42 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 15 Jan 2020 15:49:42 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Peres, Martin" <martin.peres@intel.com>, "Hiler, Arkadiusz"
 <arkadiusz.hiler@intel.com>, "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBFbmFibGUgc2Vjb25kIERC?=
 =?utf-8?Q?uf_slice_for_ICL_and_TGL_(rev13)?=
Thread-Index: AQHVy485hzoSDAMGtEyEh3CI/2O4fafr326D
Date: Wed, 15 Jan 2020 15:49:42 +0000
Message-ID: <d514b5af56354c6bbe26da4a8c291c00@intel.com>
References: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>,
 <157908440215.2008.16253198705569449094@emeril.freedesktop.org>
In-Reply-To: <157908440215.2008.16253198705569449094@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBF?=
 =?utf-8?q?nable_second_DBuf_slice_for_ICL_and_TGL_=28rev13=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1341409096=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1341409096==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d514b5af56354c6bbe26da4a8c291c00intelcom_"

--_000_d514b5af56354c6bbe26da4a8c291c00intelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgaXMgc29tZSBraW5kIG9mIGJ1aWxkIGZhaWx1cmUgaGFwcGVuaW5nIHdpdGggYWxsIHJl
Y2VudCBzZXJpZXM6DQoNCg0KQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gNCiAgQ0FM
TCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoDQogIENISyAgICAgaW5jbHVkZS9n
ZW5lcmF0ZWQvY29tcGlsZS5oDQpLZXJuZWw6IGFyY2gveDg2L2Jvb3QvYnpJbWFnZSBpcyByZWFk
eSAgKCMxKQ0KICBCdWlsZGluZyBtb2R1bGVzLCBzdGFnZSAyLg0KICBNT0RQT1NUIDEyMiBtb2R1
bGVzDQpFUlJPUjogIl9fdWRpdmRpMyIgW2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dS5rb10gdW5kZWZpbmVkIQ0Kc2NyaXB0cy9NYWtlZmlsZS5tb2Rwb3N0OjkzOiByZWNpcGUgZm9y
IHRhcmdldCAnX19tb2Rwb3N0JyBmYWlsZWQNCm1ha2VbMV06ICoqKiBbX19tb2Rwb3N0XSBFcnJv
ciAxDQpNYWtlZmlsZToxMjgyOiByZWNpcGUgZm9yIHRhcmdldCAnbW9kdWxlcycgZmFpbGVkDQpt
YWtlOiAqKiogW21vZHVsZXNdIEVycm9yIDINCg0KDQoNCkJlc3QgUmVnYXJkcywNCg0KTGlzb3Zz
a2l5IFN0YW5pc2xhdg0KDQpPcmdhbml6YXRpb246IEludGVsIEZpbmxhbmQgT3kgLSBCSUMgMDM1
NzYwNi00IC0gV2VzdGVuZGlua2F0dSA3LCAwMjE2MCBFc3Bvbw0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCkZyb206IFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVz
a3RvcC5vcmc+DQpTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgMTUsIDIwMjAgMTI6MzM6MjIgUE0N
ClRvOiBMaXNvdnNraXksIFN0YW5pc2xhdg0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNClN1YmplY3Q6IOKclyBGaS5DSS5CVUlMRDogd2FybmluZyBmb3IgRW5hYmxlIHNlY29u
ZCBEQnVmIHNsaWNlIGZvciBJQ0wgYW5kIFRHTCAocmV2MTMpDQoNCj09IFNlcmllcyBEZXRhaWxz
ID09DQoNClNlcmllczogRW5hYmxlIHNlY29uZCBEQnVmIHNsaWNlIGZvciBJQ0wgYW5kIFRHTCAo
cmV2MTMpDQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NzAwNTkvDQpTdGF0ZSA6IHdhcm5pbmcNCg0KPT0gU3VtbWFyeSA9PQ0KDQpDQUxMICAgIHNjcmlw
dHMvY2hlY2tzeXNjYWxscy5zaA0KICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21p
Y3Muc2gNCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgNCktlcm5lbDogYXJj
aC94ODYvYm9vdC9iekltYWdlIGlzIHJlYWR5ICAoIzEpDQogIEJ1aWxkaW5nIG1vZHVsZXMsIHN0
YWdlIDIuDQogIE1PRFBPU1QgMTIyIG1vZHVsZXMNCkVSUk9SOiAiX191ZGl2ZGkzIiBbZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1LmtvXSB1bmRlZmluZWQhDQpzY3JpcHRzL01ha2Vm
aWxlLm1vZHBvc3Q6OTM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdfX21vZHBvc3QnIGZhaWxlZA0KbWFr
ZVsxXTogKioqIFtfX21vZHBvc3RdIEVycm9yIDENCk1ha2VmaWxlOjEyODI6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdtb2R1bGVzJyBmYWlsZWQNCm1ha2U6ICoqKiBbbW9kdWxlc10gRXJyb3IgMg0KDQo9
PSBMb2dzID09DQoNCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNjEwNy9idWlsZF8zMmJpdC5sb2cNCg==

--_000_d514b5af56354c6bbe26da4a8c291c00intelcom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHRleHQg
LS0+PHN0eWxlPjwhLS0gLkVtYWlsUXVvdGUgeyBtYXJnaW4tbGVmdDogMXB0OyBwYWRkaW5nLWxl
ZnQ6IDRwdDsgYm9yZGVyLWxlZnQ6ICM4MDAwMDAgMnB4IHNvbGlkOyB9IC0tPjwvc3R5bGU+DQo8
L2hlYWQ+DQo8Ym9keT4NCjxtZXRhIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1VVEYtOCI+
DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSIiPg0KPCEtLQ0KcA0KCXttYXJnaW4tdG9w
OjA7DQoJbWFyZ2luLWJvdHRvbTowfQ0KLS0+DQo8L3N0eWxlPg0KPGRpdiBkaXI9Imx0ciI+DQo8
ZGl2IGlkPSJ4X2RpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9Imx0ciIgc3R5bGU9ImZvbnQtc2l6
ZToxMnB0OyBjb2xvcjojMDAwMDAwOyBmb250LWZhbWlseTpDYWxpYnJpLEhlbHZldGljYSxzYW5z
LXNlcmlmIj4NCjxkaXY+VGhlcmUgaXMgc29tZSBraW5kIG9mIGJ1aWxkIGZhaWx1cmUgaGFwcGVu
aW5nIHdpdGggYWxsIHJlY2VudCBzZXJpZXM6PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRp
dj4NCjxwcmUgY2xhc3M9InhfcGFuZWwtYm9keSB4X3Rlc3QtcmVzdWx0Ij5DQUxMICAgIHNjcmlw
dHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWlj
cy5zaAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCktlcm5lbDogYXJjaC94
ODYvYm9vdC9iekltYWdlIGlzIHJlYWR5ICAoIzEpCiAgQnVpbGRpbmcgbW9kdWxlcywgc3RhZ2Ug
Mi4KICBNT0RQT1NUIDEyMiBtb2R1bGVzCkVSUk9SOiAmcXVvdDtfX3VkaXZkaTMmcXVvdDsgW2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdS5rb10gdW5kZWZpbmVkIQpzY3JpcHRzL01h
a2VmaWxlLm1vZHBvc3Q6OTM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdfX21vZHBvc3QnIGZhaWxlZApt
YWtlWzFdOiAqKiogW19fbW9kcG9zdF0gRXJyb3IgMQpNYWtlZmlsZToxMjgyOiByZWNpcGUgZm9y
IHRhcmdldCAnbW9kdWxlcycgZmFpbGVkCm1ha2U6ICoqKiBbbW9kdWxlc10gRXJyb3IgMjwvcHJl
Pg0KPGJyPg0KPC9kaXY+DQo8cD48YnI+DQo8L3A+DQo8ZGl2IGlkPSJ4X1NpZ25hdHVyZSI+DQo8
ZGl2IHN0eWxlPSJmb250LWZhbWlseTpUYWhvbWE7IGZvbnQtc2l6ZToxM3B4Ij48Zm9udCBzaXpl
PSIyIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwcHQiPkJlc3QgUmVnYXJkcyw8YnI+DQo8YnI+
DQpMaXNvdnNraXkgU3RhbmlzbGF2IDxicj4NCjxicj4NCk9yZ2FuaXphdGlvbjogSW50ZWwgRmlu
bGFuZCBPeSAtIEJJQyAwMzU3NjA2LTQgLSBXZXN0ZW5kaW5rYXR1IDcsIDAyMTYwIEVzcG9vPGJy
Pg0KPC9zcGFuPjwvZm9udD48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8aHIgdGFiaW5kZXg9Ii0x
IiBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7IHdpZHRoOjk4JSI+DQo8ZGl2IGlkPSJ4X2Rp
dlJwbHlGd2RNc2ciIGRpcj0ibHRyIj48Zm9udCBmYWNlPSJDYWxpYnJpLCBzYW5zLXNlcmlmIiBj
b2xvcj0iIzAwMDAwMCIgc3R5bGU9ImZvbnQtc2l6ZToxMXB0Ij48Yj5Gcm9tOjwvYj4gUGF0Y2h3
b3JrICZsdDtwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZyZndDs8YnI+DQo8Yj5TZW50
OjwvYj4gV2VkbmVzZGF5LCBKYW51YXJ5IDE1LCAyMDIwIDEyOjMzOjIyIFBNPGJyPg0KPGI+VG86
PC9iPiBMaXNvdnNraXksIFN0YW5pc2xhdjxicj4NCjxiPkNjOjwvYj4gaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzxicj4NCjxiPlN1YmplY3Q6PC9iPiDinJcgRmkuQ0kuQlVJTEQ6IHdh
cm5pbmcgZm9yIEVuYWJsZSBzZWNvbmQgREJ1ZiBzbGljZSBmb3IgSUNMIGFuZCBUR0wgKHJldjEz
KTwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPGZvbnQgc2l6ZT0i
MiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyI+DQo8ZGl2IGNsYXNzPSJQbGFpblRleHQi
Pj09IFNlcmllcyBEZXRhaWxzID09PGJyPg0KPGJyPg0KU2VyaWVzOiBFbmFibGUgc2Vjb25kIERC
dWYgc2xpY2UgZm9yIElDTCBhbmQgVEdMIChyZXYxMyk8YnI+DQpVUkwmbmJzcDsmbmJzcDsgOiA8
YSBocmVmPSJodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMDU5LyI+
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDA1OS88L2E+PGJyPg0K
U3RhdGUgOiB3YXJuaW5nPGJyPg0KPGJyPg0KPT0gU3VtbWFyeSA9PTxicj4NCjxicj4NCkNBTEwm
bmJzcDsmbmJzcDsmbmJzcDsgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoPGJyPg0KJm5ic3A7IENB
TEwmbmJzcDsmbmJzcDsmbmJzcDsgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaDxicj4N
CiZuYnNwOyBDSEsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgaW5jbHVkZS9nZW5lcmF0ZWQvY29t
cGlsZS5oPGJyPg0KS2VybmVsOiBhcmNoL3g4Ni9ib290L2J6SW1hZ2UgaXMgcmVhZHkmbmJzcDsg
KCMxKTxicj4NCiZuYnNwOyBCdWlsZGluZyBtb2R1bGVzLCBzdGFnZSAyLjxicj4NCiZuYnNwOyBN
T0RQT1NUIDEyMiBtb2R1bGVzPGJyPg0KRVJST1I6ICZxdW90O19fdWRpdmRpMyZxdW90OyBbZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1LmtvXSB1bmRlZmluZWQhPGJyPg0Kc2NyaXB0
cy9NYWtlZmlsZS5tb2Rwb3N0OjkzOiByZWNpcGUgZm9yIHRhcmdldCAnX19tb2Rwb3N0JyBmYWls
ZWQ8YnI+DQptYWtlWzFdOiAqKiogW19fbW9kcG9zdF0gRXJyb3IgMTxicj4NCk1ha2VmaWxlOjEy
ODI6IHJlY2lwZSBmb3IgdGFyZ2V0ICdtb2R1bGVzJyBmYWlsZWQ8YnI+DQptYWtlOiAqKiogW21v
ZHVsZXNdIEVycm9yIDI8YnI+DQo8YnI+DQo9PSBMb2dzID09PGJyPg0KPGJyPg0KRm9yIG1vcmUg
ZGV0YWlscyBzZWU6IDxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE2MTA3L2J1aWxkXzMyYml0LmxvZyI+DQpodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNjEwNy9idWlsZF8zMmJpdC5sb2c8
L2E+PGJyPg0KPC9kaXY+DQo8L3NwYW4+PC9mb250Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_d514b5af56354c6bbe26da4a8c291c00intelcom_--

--===============1341409096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1341409096==--
