Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A0B282924
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Oct 2020 08:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0546E0A6;
	Sun,  4 Oct 2020 06:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4516E0A6
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Oct 2020 06:12:23 +0000 (UTC)
IronPort-SDR: aXMjNvdTWQ4mWzxCUxB5z4ahbwz5O3N81CjkS1rhLJ40M/QRMhxYlLupF2q8amCy0przCciSoe
 5Yz2FSUVhe9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9763"; a="181389963"
X-IronPort-AV: E=Sophos;i="5.77,334,1596524400"; d="scan'208";a="181389963"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2020 23:12:19 -0700
IronPort-SDR: DxUYpsDTP15PxAskNzR9Erg11Nje7TwC3Lb/Su/lLlvf80cn+fEzQej9K4dKRUersGQzIQDXC8
 h7Ag8140XTxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,334,1596524400"; d="scan'208";a="459083188"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga004.jf.intel.com with ESMTP; 03 Oct 2020 23:12:19 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 4 Oct 2020 07:12:17 +0100
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.1713.004;
 Sun, 4 Oct 2020 14:12:15 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Sarvela, Tomi P"
 <tomi.p.sarvela@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsOiBGaXgg?=
 =?utf-8?B?Q29tYm8gUEhZIERQTEwgZnJhY3Rpb25hbCBkaXZpZGVyIGZvciAzOC40TUh6?=
 =?utf-8?Q?_ref_clock_(rev3)?=
Thread-Index: AQHWmYv0es761jxI5EKL903Kqgmn8qmG92Qg
Date: Sun, 4 Oct 2020 06:12:15 +0000
Message-ID: <5e8b6ede06264165847cf43a1ae1d2df@intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
 <160169736013.24066.4200219438161051461@emeril.freedesktop.org>
 <20201003134854.GA1278041@ideak-desk.fi.intel.com>
In-Reply-To: <20201003134854.GA1278041@ideak-desk.fi.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Fix_Combo_PHY_DPLL_fractional_divider_for_38=2E4MH?=
 =?utf-8?q?z_ref_clock_=28rev3=29?=
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

VGhhbmtzIGZvciB0aGUgcG9pbnRlcnMgSW1yZS4gSSBoYXZlIHJlLXJlcG9ydGVkIHRoZSByZXN1
bHRzLg0KDQpMYWtzaG1pLg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4gDQpTZW50OiBTYXR1cmRheSwgT2N0b2JlciAzLCAy
MDIwIDY6NDkgQU0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWdWR1bSwg
TGFrc2htaW5hcmF5YW5hIDxsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPjsgU2FydmVs
YSwgVG9taSBQIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTog4pyXIEZp
LkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsOiBGaXggQ29tYm8gUEhZIERQTEwgZnJh
Y3Rpb25hbCBkaXZpZGVyIGZvciAzOC40TUh6IHJlZiBjbG9jayAocmV2MykNCg0KSGkgTGFrc2ht
aSwgVG9taSwNCg0KT24gU2F0LCBPY3QgMDMsIDIwMjAgYXQgMDM6NTY6MDBBTSArMDAwMCwgUGF0
Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0v
aTkxNS90Z2w6IEZpeCBDb21ibyBQSFkgRFBMTCBmcmFjdGlvbmFsIGRpdmlkZXIgZm9yIDM4LjRN
SHogcmVmIGNsb2NrIChyZXYzKQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvODIxNzMvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFy
eSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fOTA5M19mdWxsIC0+
IFBhdGNod29ya18xODYyMF9mdWxsIA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09DQo+IA0KPiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4gDQo+ICAg
KipGQUlMVVJFKioNCj4gDQo+ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGgg
UGF0Y2h3b3JrXzE4NjIwX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQg
bWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhh
dmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRj
aHdvcmtfMTg2MjBfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRo
ZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVk
dWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgDQo+IA0KPiBQb3NzaWJsZSBuZXcg
aXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIHVua25v
d24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTg2
MjBfZnVsbDoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUg
cmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBnZW1fdXNlcnB0cl9ibGl0c0B1bnN5bmMt
dW5tYXAtY3ljbGVzOg0KPiAgICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBb
VElNRU9VVF1bMl0NCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV85MDkzL3NoYXJkLXNrbDYvaWd0QGdlbV91c2VycHRyX2JsaXRzQHVuc3lu
Yy11bm1hcC1jeWNsZXMuaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODYyMC9zaGFyZC1za2w0L2lnDQo+IHRAZ2Vt
X3VzZXJwdHJfYmxpdHNAdW5zeW5jLXVubWFwLWN5Y2xlcy5odG1sDQoNClRoaXMgbG9va3MgbGlr
ZQ0KaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yNDI0
DQpzdGlsbCBoYXBwZW5pbmcgYXQNCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzkwOTAvc2hhcmQtc2tsNS9pZ3RAZ2VtX3VzZXJwdHJfYmxpdHNAc3luYy11
bm1hcC1jeWNsZXMuaHRtbA0KDQpDb3VsZCB5b3UgdXBkYXRlIHRoZSBmaWx0ZXIgdG8gaW5jbHVk
ZSBzeW5jLXVubWFwLWN5Y2xlcyBhcyB3ZWxsPw0KDQoNCj4gICAqIGlndEBrbXNfZmxpcEBmbGlw
LXZzLXN1c3BlbmRAYy1lZHAxOg0KPiAgICAgLSBzaGFyZC1pY2xiOiAgICAgICAgIFtQQVNTXVsz
XSAtPiBbSU5DT01QTEVURV1bNF0NCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV85MDkzL3NoYXJkLWljbGIzL2lndEBrbXNfZmxpcEBmbGlw
LXZzLXN1c3BlbmRAYy1lZHAxLmh0bWwNCj4gICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTg2MjAvc2hhcmQtaWNsYjMvaQ0KPiBn
dEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmRAYy1lZHAxLmh0bWwNCg0KTG9va3MgbGlrZSBzaGFy
ZC1pY2xiMyBoYXMgYSBmaWxlIHN5c3RlbSBjb3JydXB0aW9uLCBvciBqdXN0IGJyb2tlbiBzdG9y
YWdlIGRldmljZS9ob3N0Og0KPDM+WyAgMjQwLjAxMjc4MF0gYmxrX3VwZGF0ZV9yZXF1ZXN0OiBJ
L08gZXJyb3IsIGRldiBzZGEsIHNlY3RvciA3Njg2MzEyMCBvcCAweDE6KFdSSVRFKSBmbGFncyAw
eDgwMCBwaHlzX3NlZyAxMCBwcmlvIGNsYXNzIDANCg0KVGhpcyBoYXMgYmVlbiBjb25zaXN0ZW50
bHkgaGFwcGVuaW5nIG5vdyBmb3IgYSB3aGlsZSBvbiB0aGUgc2hhcmQtaWNsYjMgbWFjaGluZSBs
ZWFkaW5nIHRvIHRoZSBzYW1lIGhhbmcsIHNlZSBmb3IgaW5zdGFuY2UgaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fOTA2My9zaGFyZC1pY2xiMy9wc3RvcmU3
LTE2MDEzMDI3NzBfUGFuaWNfMS50eHQNCg0KU2ltaWxhciBzcG9yYWRpYyBmaWxlc3lzdGVtIGVy
cm9ycyBoYXZlIGJlZW4gYWxzbyBoYXBwZW5pbmcgb24gc2hhcmQtaWNsYjQuDQoNCkkgaGF2ZW4n
dCBzZWVuIGFueSByZWNlbnQgSS9PIGVycm9ycyBvbiBhbnkgb2YgdGhlIG90aGVyIDcgc2hhcmQt
aWNsIG1hY2hpbmVzLg0KDQpzaGFyZC1pY2xiMy80IHdvdWxkIHByb2JhYmx5IG5lZWQgcmVpbnN0
YWxsL25ldyBzdG9yYWdlIGRldmljZS9uZXcgaG9zdC4NCg0KLS1JbXJlDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
