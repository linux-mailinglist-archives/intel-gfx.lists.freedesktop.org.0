Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFF83EF0B6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 19:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345C26E1F9;
	Tue, 17 Aug 2021 17:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE0A6E1F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 17:17:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="238239471"
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="238239471"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 10:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="531158800"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 10:17:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 10:17:33 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 10:17:32 -0700
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2242.010;
 Wed, 18 Aug 2021 01:17:30 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvYWRsX3A6IEFs?=
 =?utf-8?Q?so_disable_underrun_recovery_with_MSO?=
Thread-Index: AQHXk4ScIhwKdFCjtEOmh66N0PdJz6t38HEQ
Date: Tue, 17 Aug 2021 17:17:30 +0000
Message-ID: <58031426cb67477f824d5c7c57eddf21@intel.com>
References: <20210816204112.2960624-1-matthew.d.roper@intel.com>
 <162921613493.22609.5351941758725285675@emeril.freedesktop.org>
 <20210817162616.GT1556418@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210817162616.GT1556418@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Also_disable_underrun_recovery_with_MSO?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSb3Blciwg
TWF0dGhldyBEIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPiANClNlbnQ6IFR1ZXNkYXksIEF1
Z3VzdCAxNywgMjAyMSA5OjI2IEFNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KQ2M6IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRl
bC5jb20+DQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUv
YWRsX3A6IEFsc28gZGlzYWJsZSB1bmRlcnJ1biByZWNvdmVyeSB3aXRoIE1TTw0KDQpPbiBUdWUs
IEF1ZyAxNywgMjAyMSBhdCAwNDowMjoxNFBNICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09
IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRybS9pOTE1L2FkbF9wOiBBbHNvIGRp
c2FibGUgdW5kZXJydW4gcmVjb3Zlcnkgd2l0aCBNU08NCj4gVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkzNzMyLw0KPiBTdGF0ZSA6IGZhaWx1cmUNCj4g
DQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJN
XzEwNDkwIC0+IFBhdGNod29ya18yMDgzNSANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0K
PiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3
aXRoIFBhdGNod29ya18yMDgzNSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBt
YW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18yMDgzNSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4g
ICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZh
bHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjA4MzUvaW5kZXguaHRt
bA0KPiANCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0K
PiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJv
ZHVjZWQgaW4gUGF0Y2h3b3JrXzIwODM1Og0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiAN
Cj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUBoYW5nY2hlY2s6DQo+ICAgICAtIGZpLWl2Yi0zNzcwOiAgICAgICAgW1BBU1Nd
WzFdIC0+IFtJTkNPTVBMRVRFXVsyXQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzEwNDkwL2ZpLWl2Yi0zNzcwL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAaGFuZ2NoZWNrLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjA4MzUvZmktaXZiLTM3NzAvaQ0KPiBn
dEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrLmh0bWwNCg0KVGhpcyBJVkIgZXJyb3IgaXMg
dW5yZWxhdGVkIHRvIHRoZSBwYXRjaCBoZXJlICh3aGljaCB3b3VsZCBvbmx5IGFmZmVjdCBwbGF0
Zm9ybXMgd2l0aCBkaXNwbGF5IHZlcnNpb24gPj0gMTMpLg0KDQoNCk1hdHQNCg0KPiANCj4gICAN
Cj4gS25vd24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgY2hh
bmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMjA4MzUgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVz
Og0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMN
Cj4gDQo+ICAgKiBpZ3RAYW1kZ3B1L2FtZF9iYXNpY0BzZW1hcGhvcmU6DQo+ICAgICAtIGZpLWJk
dy01NTU3dTogICAgICAgTk9UUlVOIC0+IFtTS0lQXVszXSAoW2ZkbyMxMDkyNzFdKSArMjcgc2lt
aWxhciBpc3N1ZXMNCj4gICAgWzNdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjA4MzUvZmktYmR3LTU1NTd1Lw0KPiBpZ3RAYW1kZ3B1L2Ft
ZF9iYXNpY0BzZW1hcGhvcmUuaHRtbA0KPiANCj4gICAqIGlndEBjb3JlX2hvdHVucGx1Z0B1bmJp
bmQtcmViaW5kOg0KPiAgICAgLSBmaS1iZHctNTU1N3U6ICAgICAgIE5PVFJVTiAtPiBbV0FSTl1b
NF0gKFtpOTE1IzM3MThdKQ0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMDgzNS9maS1iZHctNTU1N3UvDQo+IGlndEBjb3Jl
X2hvdHVucGx1Z0B1bmJpbmQtcmViaW5kLmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2NoYW1lbGl1
bUBkcC1jcmMtZmFzdDoNCj4gICAgIC0gZmktYmR3LTU1NTd1OiAgICAgICBOT1RSVU4gLT4gW1NL
SVBdWzVdIChbZmRvIzEwOTI3MV0gLyBbZmRvIzExMTgyN10pICs4IHNpbWlsYXIgaXNzdWVzDQo+
ICAgIFs1XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzIwODM1L2ZpLWJkdy01NTU3dS8NCj4gaWd0QGttc19jaGFtZWxpdW1AZHAtY3JjLWZh
c3QuaHRtbA0KPiANCj4gICAqIGlndEBydW5uZXJAYWJvcnRlZDoNCj4gICAgIC0gZmktaXZiLTM3
NzA6ICAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzZdIChbZmRvIzEwOTI3MV0pDQo+ICAgIFs2XTog
DQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIw
ODM1L2ZpLWl2Yi0zNzcwL2kNCj4gZ3RAcnVubmVyQGFib3J0ZWQuaHRtbA0KPiANCj4gICANCj4g
ICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTEwOTI3MQ0KPiAgIFtmZG8jMTExODI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTExODI3DQo+ICAgW2k5MTUjMzcxOF06IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzM3MTgNCj4gDQo+IA0KPiBQYXJ0aWNp
cGF0aW5nIGhvc3RzICgzNiAtPiAzNCkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQo+IA0KPiAgIE1pc3NpbmcgICAgKDIpOiBmaS1ic3ctY3lhbiBmaS1iZHctc2FtdXMgDQo+IA0K
PiANCj4gQnVpbGQgY2hhbmdlcw0KPiAtLS0tLS0tLS0tLS0tDQo+IA0KPiAgICogTGludXg6IENJ
X0RSTV8xMDQ5MCAtPiBQYXRjaHdvcmtfMjA4MzUNCj4gDQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkw
NTI5DQo+ICAgQ0lfRFJNXzEwNDkwOiAzYmQ3NGIzNzc5ODZmY2I4OWNmNDU2MzYyOWY5N2M1YjMx
OTljYTZmIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAg
SUdUXzYxNzc6IGY0NzQ2NDRlNzIyNmRkMzE5MTk1Y2EwM2IzY2RlODJhZDEwYWM1NGMgQCBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+ICAgUGF0
Y2h3b3JrXzIwODM1OiA0YTliYWM5OWRkZmZiMWUzNTVmMjA4NGQxYjQ2NDY1YWFjMjBiNmM4IEAg
DQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiANCj4gDQo+
ID09IExpbnV4IGNvbW1pdHMgPT0NCj4gDQo+IDRhOWJhYzk5ZGRmZiBkcm0vaTkxNS9hZGxfcDog
QWxzbyBkaXNhYmxlIHVuZGVycnVuIHJlY292ZXJ5IHdpdGggTVNPDQo+IA0KPiA9PSBMb2dzID09
DQo+IA0KPiBGb3IgbW9yZSBkZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIwODM1L2luZGV4Lmh0bWwNCg0KLS0NCk1hdHQg
Um9wZXINCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyDQpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFi
bGVtZW50DQpJbnRlbCBDb3Jwb3JhdGlvbg0KKDkxNikgMzU2LTI3OTUNCg==
