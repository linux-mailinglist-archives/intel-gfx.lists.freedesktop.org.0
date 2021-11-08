Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C023F449EE9
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 00:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4516E170;
	Mon,  8 Nov 2021 23:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0736E170
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 23:03:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="232586037"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="232586037"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 15:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="491416523"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 08 Nov 2021 15:03:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 15:03:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 15:03:24 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Mon, 8 Nov 2021 15:03:24 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKckyBGaS5DSS5CQVQ6IHN1Y2Nlc3MgZm9yIGRybS9p?=
 =?utf-8?Q?915:_Fix_Memory_BW_formulae_for_ADL-P?=
Thread-Index: AQHX1PKkxMYqPEHbVU6wKtZfrypFaKv6x7gA
Date: Mon, 8 Nov 2021 23:03:24 +0000
Message-ID: <fd2f82ccbc77853a2fea0496de58c9ea63ac6c9b.camel@intel.com>
References: <20211106003714.17894-1-radhakrishna.sripada@intel.com>
 <163616346424.20040.16141034785961562209@emeril.freedesktop.org>
 <0e70d5ab2346450182ae4f3d8d085deb@intel.com>
In-Reply-To: <0e70d5ab2346450182ae4f3d8d085deb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F4AAFBEAFB7DF489EE8E8A5072B91E9@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_Memory_BW_formulae_for_ADL-P?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTExLTA4IGF0IDIyOjQ2ICswMDAwLCBTcmlwYWRhLCBSYWRoYWtyaXNobmEg
d3JvdGU6DQo+IENJIElHVCByZXBvcnRlZCBzb21lIGZhaWx1cmVzIGJ1dCB0aGV5IGRvIG5vdCBs
b29rIHRvIGJlIHJlbGF0ZWQgdG8gdGhlIGNoYW5nZXMgcHJvcG9zZWQuDQoNClB1c2hlZCB0byBk
cm0taW50ZWwtbmV4dC4NCg0KPiANCj4gVGhhbmtzLA0KPiBSYWRoYWtyaXNobmEoUkspIFNyaXBh
ZGENCj4gwqANCj4gRnJvbTogUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9w
Lm9yZz4NCj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciA1LCAyMDIxIDY6NTEgUE0NCj4gVG86IFNy
aXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiBD
YzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OuKckyBGaS5DSS5C
QVQ6IHN1Y2Nlc3MgZm9yIGRybS9pOTE1OiBGaXggTWVtb3J5IEJXIGZvcm11bGFlIGZvciBBREwt
UA0KPiDCoA0KPiBQYXRjaCBEZXRhaWxzDQo+IFNlcmllczogZHJtL2k5MTU6IEZpeCBNZW1vcnkg
QlcgZm9ybXVsYWUgZm9yIEFETC1QIFVSTDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy85NjYzNS8gU3RhdGU6IHN1Y2Nlc3MgRGV0YWlsczogaHR0cHM6Ly9pbnRlbC1n
ZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIxNTMwL2luZGV4Lmh0bWwg
Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTA4NTIgLT4gUGF0Y2h3b3JrXzIxNTMw
U3VtbWFyeVNVQ0NFU1MNCj4gTm8gcmVncmVzc2lvbnMgZm91bmQuDQo+IEV4dGVybmFsIFVSTDog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjE1MzAv
aW5kZXguaHRtbA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0MCAtPiAzNSlBZGRpdGlvbmFsICgz
KTogZmktdGdsLTExMTVnNCBmaS1iZHctc2FtdXMgZmktdGdsLXUyDQo+IE1pc3NpbmcgKDgpOiBm
aS1rYmwtc29yYWthIGJhdC1hZGxzLTUgYmF0LWRnMS02IGJhdC1kZzEtNSBmaS1oc3ctNDIwMHUg
ZmktYnN3LWN5YW4gYmF0LWFkbHAtNCBmaS1jdGctcDg2MDANCj4gS25vd24gaXNzdWVzSGVyZSBh
cmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzIxNTMwIHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoNCj4gSUdUIGNoYW5nZXNJc3N1ZXMgaGl0ICogaWd0QGFtZGdwdS9hbWRfYmFz
aWNAcXVlcnktaW5mbzoNCj4gwqDCoMKgwqAtIGZpLXRnbC0xMTE1ZzQ6IE5PVFJVTiAtPlNLSVAg
KGZkbyMxMDkzMTUpDQo+IMKgKiBpZ3RAYW1kZ3B1L2FtZF9jc19ub3BAbm9wLWdmeDA6DQo+IMKg
wqDCoMKgLSBmaS10Z2wtMTExNWc0OiBOT1RSVU4gLT5TS0lQIChmZG8jMTA5MzE1IC9pOTE1IzI1
NzUpICsxNiBzaW1pbGFyIGlzc3Vlcw0KPiDCoCogaWd0QGNvcmVfaG90dW5wbHVnQHVuYmluZC1y
ZWJpbmQ6DQo+IMKgwqDCoMKgLSBmaS10Z2wtdTI6IE5PVFJVTiAtPklOQ09NUExFVEUgKGk5MTUj
NDAwNikNCj4gwqAqIGlndEBnZW1faHVjX2NvcHlAaHVjLWNvcHk6DQo+IMKgwqDCoMKgLSBmaS10
Z2wtdTI6IE5PVFJVTiAtPlNLSVAgKGk5MTUjMjE5MCkNCj4gwqDCoMKgwqAtIGZpLXRnbC0xMTE1
ZzQ6IE5PVFJVTiAtPlNLSVAgKGk5MTUjMjE5MCkNCj4gwqAqIGlndEBpOTE1X3BtX2JhY2tsaWdo
dEBiYXNpYy1icmlnaHRuZXNzOg0KPiDCoMKgwqDCoC0gZmktdGdsLTExMTVnNDogTk9UUlVOIC0+
U0tJUCAoaTkxNSMxMTU1KQ0KPiDCoCogaWd0QGttc19jaGFtZWxpdW1AY29tbW9uLWhwZC1hZnRl
ci1zdXNwZW5kOg0KPiDCoMKgwqDCoC0gZmktdGdsLTExMTVnNDogTk9UUlVOIC0+U0tJUCAoZmRv
IzExMTgyNykgKzggc2ltaWxhciBpc3N1ZXMNCj4gwqAqIGlndEBrbXNfY2hhbWVsaXVtQGRwLWhw
ZC1mYXN0Og0KPiDCoMKgwqDCoC0gZmktdGdsLXUyOiBOT1RSVU4gLT5TS0lQIChmZG8jMTA5Mjg0
IC9mZG8jMTExODI3KSArOCBzaW1pbGFyIGlzc3Vlcw0KPiDCoCogaWd0QGttc19jaGFtZWxpdW1A
aGRtaS1lZGlkLXJlYWQ6DQo+IMKgwqDCoMKgLSBmaS1iZHctc2FtdXM6IE5PVFJVTiAtPlNLSVAg
KGZkbyMxMDkyNzEgL2ZkbyMxMTE4MjcpICs4IHNpbWlsYXIgaXNzdWVzDQo+IMKgKiBpZ3RAa21z
X2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItYXRvbWljOg0KPiDC
oMKgwqDCoC0gZmktdGdsLXUyOiBOT1RSVU4gLT5TS0lQIChpOTE1IzQxMDMpICsxIHNpbWlsYXIg
aXNzdWUNCj4gwqDCoMKgwqAtIGZpLXRnbC0xMTE1ZzQ6IE5PVFJVTiAtPlNLSVAgKGk5MTUjNDEw
MykgKzEgc2ltaWxhciBpc3N1ZQ0KPiDCoCogaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNA
Zm9yY2UtbG9hZC1kZXRlY3Q6DQo+IMKgwqDCoMKgLSBmaS10Z2wtMTExNWc0OiBOT1RSVU4gLT5T
S0lQIChmZG8jMTA5Mjg1KQ0KPiDCoMKgwqDCoC0gZmktdGdsLXUyOiBOT1RSVU4gLT5TS0lQIChm
ZG8jMTA5Mjg1KQ0KPiDCoCogaWd0QGttc19waXBlX2NyY19iYXNpY0Bjb21wYXJlLWNyYy1zYW5p
dHljaGVjay1waXBlLWQ6DQo+IMKgwqDCoMKgLSBmaS1iZHctc2FtdXM6IE5PVFJVTiAtPlNLSVAg
KGZkbyMxMDkyNzEpICsyOSBzaW1pbGFyIGlzc3Vlcw0KPiDCoCogaWd0QGttc19wc3JAcHJpbWFy
eV9tbWFwX2d0dDoNCj4gwqDCoMKgwqAtIGZpLXRnbC0xMTE1ZzQ6IE5PVFJVTiAtPlNLSVAgKGk5
MTUjMTA3MikgKzMgc2ltaWxhciBpc3N1ZXMNCj4gwqAqIGlndEBwcmltZV92Z2VtQGJhc2ljLXVz
ZXJwdHI6DQo+IMKgwqDCoMKgLSBmaS10Z2wtdTI6IE5PVFJVTiAtPlNLSVAgKGk5MTUjMzMwMSkN
Cj4gwqDCoMKgwqAtIGZpLXRnbC0xMTE1ZzQ6IE5PVFJVTiAtPlNLSVAgKGk5MTUjMzMwMSkNCj4g
wqAqIGlndEBydW5uZXJAYWJvcnRlZDoNCj4gwqDCoMKgwqAtIGZpLWJkdy01NTU3dTogTk9UUlVO
IC0+RkFJTCAoaTkxNSMxNjAyIC9pOTE1IzI0MjYgLyBpOTE1IzQzMTIpDQo+IMKgwqDCoMKgLSBm
aS10Z2wtdTI6IE5PVFJVTiAtPkZBSUwgKGk5MTUjMTYwMiAvaTkxNSMyNzIyIC8gaTkxNSM0MzEy
KQ0KPiBCdWlsZCBjaGFuZ2VzICogTGludXg6IENJX0RSTV8xMDg1MiAtPiBQYXRjaHdvcmtfMjE1
MzANCj4gQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+IENJX0RSTV8xMDg1MjogODExOTc5ODlhYWZh
ZjI2N2M2OTgwNTU1MmNmNDE1NzAyZWViZDE5MiBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Au
b3JnL2dmeC1jaS9saW51eA0KPiBJR1RfNjI3NDogNTY5ZGU1MTE0NWZiYTE5N2E4ZDkzYjI0MTcz
NDhkNDc1MDdiZjQ4NSBAIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdw
dS10b29scy5naXQNCj4gUGF0Y2h3b3JrXzIxNTMwOiA3ZGY4OGI0NjJkODk0NTRlMjZlNjQ3YWMw
OTE4ZDAzN2ZiYzNiMDJiIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4DQo+ID09IExpbnV4IGNvbW1pdHMgPT0NCj4gN2RmODhiNDYyZDg5IGRybS9pOTE1OiBGaXgg
TWVtb3J5IEJXIGZvcm11bGFlIGZvciBBREwtUA0KDQo=
