Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA22207CEF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 22:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5966E831;
	Wed, 24 Jun 2020 20:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7192E6E831
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 20:30:10 +0000 (UTC)
IronPort-SDR: 21Ww2TiPgCZ1JiUvdOqa4AJEidJBF7ULKgwmlv0VvObvpgpZPukSr+ViVaC4pWRXaFcFPbagIy
 g4M68fe26Xqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="133061398"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="133061398"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 13:30:08 -0700
IronPort-SDR: iujLkvQTcmGiQ0KpuN8jNyIB4mlSdJ1icZyCq0/YV1Xbp148PqsDPpPCjrX1ka3FdzefhSlq8T
 3P6gmWAwsk5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="263736375"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jun 2020 13:30:07 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX153.ger.corp.intel.com (163.33.192.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 21:30:06 +0100
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 24 Jun 2020 21:30:06 +0100
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Wed, 24 Jun 2020 21:30:06 +0100
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Ausmus, James" <james.ausmus@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?Q?15/gt:_Implement_WA=5F1406941453?=
Thread-Index: AQHWSlVLa5o1ByF6mkGijQl4lc4U4qjoN7BA
Date: Wed, 24 Jun 2020 20:30:06 +0000
Message-ID: <0c3605548e86437299af7c7888bed0f7@intel.com>
References: <20200611233108.19205-1-clinton.a.taylor@intel.com>
 <159192027560.21335.2442323093114834329@emeril.freedesktop.org>
 <20200624183139.GB28937@jausmus-gentoo-dev6.jf.intel.com>
In-Reply-To: <20200624183139.GB28937@jausmus-gentoo-dev6.jf.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTMzM2E2M2ItZTMwMC00Y2ViLWIwNjctZTg5OGIyYmUxMWZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR0xTWkJyV1JWSERONTc1eFlUSDIra3pWblRPanlrM3Q0MzYyT2hXRkl5V2VmVlhYaDFRdTBLaEtcL1V4M0JINzUifQ==
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Implement_WA=5F1406941453?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmUtcmVwb3J0ZWQuIA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQXVzbXVz
LCBKYW1lcyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4gDQpTZW50OiBXZWRuZXNkYXksIEp1bmUg
MjQsIDIwMjAgOTozMiBQTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1
ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQpD
YzogVGF5bG9yLCBDbGludG9uIEEgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPg0KU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2d0
OiBJbXBsZW1lbnQgV0FfMTQwNjk0MTQ1Mw0KDQpPbiBGcmksIEp1biAxMiwgMjAyMCBhdCAxMjow
NDozNUFNICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+
IA0KPiBTZXJpZXM6IGRybS9pOTE1L2d0OiBJbXBsZW1lbnQgV0FfMTQwNjk0MTQ1Mw0KPiBVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzgyNDMvDQo+IFN0
YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNo
YW5nZXMgZnJvbSBDSV9EUk1fODYxOCAtPiBQYXRjaHdvcmtfMTc5MzEgDQo+ID09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gDQo+IFN1bW1hcnkN
Cj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4gICBTZXJpb3VzIHVua25vd24g
Y2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTc5MzEgYWJzb2x1dGVseSBuZWVkIHRvIGJl
DQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRoZSByZXBv
cnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTc5MzEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0
byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGlj
aCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiAgIEV4dGVybmFsIFVS
TDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE3OTMxL2luZGV4Lmh0bWwNCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNzkzMToNCj4gDQo+ICMjIyBJR1Qg
Y2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiANCj4g
ICAqIGlndEBydW5uZXJAYWJvcnRlZDoNCj4gICAgIC0gZmktYmR3LTU1NTd1OiAgICAgICBOT1RS
VU4gLT4gW0ZBSUxdWzFdDQo+ICAgIFsxXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3OTMxL2ZpLWJkdy01NTU3dS8NCj4gaWd0QHJ1bm5l
ckBhYm9ydGVkLmh0bWwNCg0KTGFrc2htaSAtIHRoaXMgZmFpbHVyZSBpc24ndCByZWxhdGVkIC0g
Y2FuIHlvdSByZS1yZXBvcnQ/DQoNClRoYW5rcyENCg0KLUphbWVzDQoNCj4gDQo+ICAgDQo+IEtu
b3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIGNoYW5nZXMg
Zm91bmQgaW4gUGF0Y2h3b3JrXzE3OTMxIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoNCj4g
DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgSXNzdWVzIGhpdCAjIyMjDQo+IA0K
PiAgICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczA6DQo+ICAgICAtIGZpLXRnbC11Mjog
ICAgICAgICAgW1BBU1NdWzJdIC0+IFtGQUlMXVszXSAoW2k5MTUjMTg4OF0pDQo+ICAgIFsyXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODYxOC9maS10
Z2wtdTIvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczAuaHRtbA0KPiAgICBbM106IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzkzMS9m
aS10Z2wtdTIvaWd0DQo+IEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwLmh0bWwNCj4gDQo+ICAg
KiBpZ3RAZ2VtX3N5bmNAYmFzaWMtYWxsOg0KPiAgICAgLSBmaS1pY2wtZ3VjOiAgICAgICAgIFtQ
QVNTXVs0XSAtPiBbRE1FU0ctV0FSTl1bNV0gKFtpOTE1IzE5ODJdKQ0KPiAgICBbNF06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2MTgvZmktaWNsLWd1
Yy9pZ3RAZ2VtX3N5bmNAYmFzaWMtYWxsLmh0bWwNCj4gICAgWzVdOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc5MzEvZmktaWNsLWd1Yy9p
Zw0KPiB0QGdlbV9zeW5jQGJhc2ljLWFsbC5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVfbW9kdWxl
X2xvYWRAcmVsb2FkOg0KPiAgICAgLSBmaS10Z2wtdTI6ICAgICAgICAgIFtQQVNTXVs2XSAtPiBb
RE1FU0ctV0FSTl1bN10gKFtpOTE1IzE5ODJdKQ0KPiAgICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2MTgvZmktdGdsLXUyL2lndEBpOTE1X21v
ZHVsZV9sb2FkQHJlbG9hZC5odG1sDQo+ICAgIFs3XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3OTMxL2ZpLXRnbC11Mi9pZ3QNCj4gQGk5
MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9wbV9ycG1AYmFz
aWMtcGNpLWQzLXN0YXRlOg0KPiAgICAgLSBmaS1ic3cta2Vma2E6ICAgICAgIFtQQVNTXVs4XSAt
PiBbRE1FU0ctV0FSTl1bOV0gKFtpOTE1IzE5ODJdKQ0KPiAgICBbOF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2MTgvZmktYnN3LWtlZmthL2lndEBp
OTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3RhdGUuaHRtbA0KPiAgICBbOV06IA0KPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzkzMS9maS1ic3ct
a2Vma2EvDQo+IGlndEBpOTE1X3BtX3JwbUBiYXNpYy1wY2ktZDMtc3RhdGUuaHRtbA0KPiANCj4g
ICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLXdmX3ZibGFua0BiLWVkcDE6DQo+ICAgICAt
IGZpLWljbC11MjogICAgICAgICAgW1BBU1NdWzEwXSAtPiBbRE1FU0ctV0FSTl1bMTFdIChbaTkx
NSMxOTgyXSkgKzEgc2ltaWxhciBpc3N1ZQ0KPiAgICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjE4L2ZpLWljbC11Mi9pZ3RAa21zX2ZsaXBA
YmFzaWMtZmxpcC12cy13Zl92YmxhbmtAYi1lZHAxLmh0bWwNCj4gICAgWzExXTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3OTMxL2ZpLWlj
bC11Mi9pZ3QNCj4gQGttc19mbGlwQGJhc2ljLWZsaXAtdnMtd2ZfdmJsYW5rQGItZWRwMS5odG1s
DQo+IA0KPiAgIA0KPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4gDQo+ICAgKiBpZ3RAa21z
X2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItYXRvbWljOg0KPiAg
ICAgLSBmaS1ieXQtajE5MDA6ICAgICAgIFtETUVTRy1XQVJOXVsxMl0gKFtpOTE1IzE5ODJdKSAt
PiBbUEFTU11bMTNdDQo+ICAgIFsxMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzg2MTgvZmktYnl0LWoxOTAwL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBi
YXNpYy1idXN5LWZsaXAtYmVmb3JlLWN1cnNvci1hdG9taWMuaHRtbA0KPiAgICBbMTNdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc5MzEv
ZmktYnl0LWoxOTAwLw0KPiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJl
Zm9yZS1jdXJzb3ItYXRvbWljLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2lj
QHJlYWQtY3JjLXBpcGUtYS1mcmFtZS1zZXF1ZW5jZToNCj4gICAgIC0gZmktdGdsLXUyOiAgICAg
ICAgICBbRE1FU0ctV0FSTl1bMTRdIChbaTkxNSM0MDJdKSAtPiBbUEFTU11bMTVdDQo+ICAgIFsx
NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2MTgv
ZmktdGdsLXUyL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtcGlwZS1hLWZyYW1lLXNl
cXVlbmNlLmh0bWwNCj4gICAgWzE1XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3OTMxL2ZpLXRnbC11Mi9pZ3QNCj4gQGttc19waXBlX2Ny
Y19iYXNpY0ByZWFkLWNyYy1waXBlLWEtZnJhbWUtc2VxdWVuY2UuaHRtbA0KPiANCj4gICANCj4g
IyMjIyBXYXJuaW5ncyAjIyMjDQo+IA0KPiAgICogaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMt
czA6DQo+ICAgICAtIGZpLWtibC14MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzE2XSAoW2k5MTUj
NjJdIC8gW2k5MTUjOTJdIC8gW2k5MTUjOTVdKSAtPiBbRE1FU0ctV0FSTl1bMTddIChbaTkxNSM2
Ml0gLyBbaTkxNSM5Ml0pICsyIHNpbWlsYXIgaXNzdWVzDQo+ICAgIFsxNl06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2MTgvZmkta2JsLXgxMjc1L2ln
dEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwLmh0bWwNCj4gICAgWzE3XTogDQo+IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3OTMxL2ZpLWtibC14
MTI3NS8NCj4gaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczAuaHRtbA0KPiANCj4gICAqIGln
dEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXRAYS1kcDE6DQo+ICAgICAtIGZpLWtibC14
MTI3NTogICAgICAgW0RNRVNHLVdBUk5dWzE4XSAoW2k5MTUjNjJdIC8gW2k5MTUjOTJdKSAtPiBb
RE1FU0ctV0FSTl1bMTldIChbaTkxNSM2Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pICs0IHNp
bWlsYXIgaXNzdWVzDQo+ICAgIFsxOF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzg2MTgvZmkta2JsLXgxMjc1L2lndEBrbXNfZmxpcEBiYXNpYy1mbGlw
LXZzLW1vZGVzZXRAYS1kcDEuaHRtbA0KPiAgICBbMTldOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc5MzEvZmkta2JsLXgxMjc1Lw0KPiBp
Z3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1tb2Rlc2V0QGEtZHAxLmh0bWwNCj4gDQo+ICAgDQo+
ICAgW2k5MTUjMTg4OF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
aXNzdWVzLzE4ODgNCj4gICBbaTkxNSMxOTgyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvMTk4Mg0KPiAgIFtpOTE1IzQwMl06IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQwMg0KPiAgIFtpOTE1IzYyXTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjINCj4gICBbaTkx
NSM5Ml06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzky
DQo+ICAgW2k5MTUjOTVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy85NQ0KPiANCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDUwIC0+IDQyKQ0KPiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgTWlzc2luZyAgICAoOCk6IGZp
LWNtbC11MiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5
YW4gZmktY3RnLXA4NjAwIGZpLWJ5dC1jbGFwcGVyIGZpLWJkdy1zYW11cyANCj4gDQo+IA0KPiBC
dWlsZCBjaGFuZ2VzDQo+IC0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgKiBMaW51eDogQ0lfRFJNXzg2
MTggLT4gUGF0Y2h3b3JrXzE3OTMxDQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAg
IENJX0RSTV84NjE4OiA4ODg0MWUzMGU3ZjhjNjBmZjQ2NGJlMjc3ZTViOGZlZjQ5ZWJhZWEwIEAg
Z2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzU3MDM6
IGMzMzQ3MWI0YWEwYTBhZTlkZDQyMjAyMDQ4ZTcwMzdhNjYxZTA1NzQgQCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMNCj4gICBQYXRjaHdvcmtf
MTc5MzE6IDM5NDY2YzlhYzcyZTIwOTEzYjYwYWRhOWZkZjUzYjc4ZTRhNmY3MGIgQCANCj4gZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IA0KPiANCj4gPT0gTGlu
dXggY29tbWl0cyA9PQ0KPiANCj4gMzk0NjZjOWFjNzJlIGRybS9pOTE1L2d0OiBJbXBsZW1lbnQg
V0FfMTQwNjk0MTQ1Mw0KPiANCj4gPT0gTG9ncyA9PQ0KPiANCj4gRm9yIG1vcmUgZGV0YWlscyBz
ZWU6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNzkzMS9pbmRleC5odG1sDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIEZpbmxhbmQgT3kKUmVnaXN0
ZXJlZCBBZGRyZXNzOiBQTCAyODEsIDAwMTgxIEhlbHNpbmtpIApCdXNpbmVzcyBJZGVudGl0eSBD
b2RlOiAwMzU3NjA2IC0gNCAKRG9taWNpbGVkIGluIEhlbHNpbmtpIAoKVGhpcyBlLW1haWwgYW5k
IGFueSBhdHRhY2htZW50cyBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgbWF0ZXJpYWwgZm9yCnRo
ZSBzb2xlIHVzZSBvZiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50KHMpLiBBbnkgcmV2aWV3IG9yIGRp
c3RyaWJ1dGlvbgpieSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBu
b3QgdGhlIGludGVuZGVkCnJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQg
ZGVsZXRlIGFsbCBjb3BpZXMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
