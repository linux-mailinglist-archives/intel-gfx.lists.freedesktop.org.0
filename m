Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA83840229E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 06:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A1B89781;
	Tue,  7 Sep 2021 04:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3375189781
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 04:14:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="216932158"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="216932158"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 21:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="692071966"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2021 21:13:59 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 7 Sep 2021 05:13:57 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Tue, 7 Sep 2021 09:43:56 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Latvala, Petri" <petri.latvala@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
CC: "jim.cromie@gmail.com" <jim.cromie@gmail.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, "Bhatt, Jigar" <jigar.bhatt@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdXNlIERZ?=
 =?utf-8?Q?NAMIC=5FDEBUG_to_implement_DRM.debug_(rev2)?=
Thread-Index: AQHXoLcGcvSYsBbzRkC0wxvuvNSXXKuR6eeAgASFjYCAABbGgIABc9gA
Date: Tue, 7 Sep 2021 04:13:56 +0000
Message-ID: <fc0ff49e5e6848f3ba80a5690779f651@intel.com>
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
 <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
 <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
 <1f670a6b-af77-0e07-880e-57b1e28bfc7b@linux.intel.com>
 <YTIcl3pp+ut4z6Ct@platvala-desk.ger.corp.intel.com>
 <a9388b74-ca2e-19d1-123e-f4892750529c@linux.intel.com>
 <YTX6t3PtgFxD7Ers@platvala-desk.ger.corp.intel.com>
In-Reply-To: <YTX6t3PtgFxD7Ers@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdXNl?=
 =?utf-8?q?_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev2=29?=
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGF0dmFsYSwgUGV0cmkg
PHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIFNlcHRlbWJlciA2LCAy
MDIxIDQ6NTYgUE0NCj4gVG86IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5p
bnRlbC5jb20+DQo+IENjOiBqaW0uY3JvbWllQGdtYWlsLmNvbTsgSW50ZWwgR3JhcGhpY3MgRGV2
ZWxvcG1lbnQgPGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPjsgQmhhdHQsIEpp
Z2FyIDxqaWdhci5iaGF0dEBpbnRlbC5jb20+OyBHdXB0YSwNCj4gQW5zaHVtYW4gPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5J
R1Q6IGZhaWx1cmUgZm9yIHVzZSBEWU5BTUlDX0RFQlVHIHRvDQo+IGltcGxlbWVudCBEUk0uZGVi
dWcgKHJldjIpDQo+IA0KPiBPbiBNb24sIFNlcCAwNiwgMjAyMSBhdCAxMTowNDoxM0FNICswMTAw
LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gPg0KPiA+IE9uIDAzLzA5LzIwMjEgMTQ6MDEsIFBl
dHJpIExhdHZhbGEgd3JvdGU6DQo+ID4gPiBPbiBGcmksIFNlcCAwMywgMjAyMSBhdCAxMjoyOTo1
MVBNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gT24gMDMv
MDkvMjAyMSAwMTozMSwgamltLmNyb21pZUBnbWFpbC5jb20gd3JvdGU6DQo+ID4gPiA+ID4NCj4g
PiA+ID4gPg0KPiA+ID4gPiA+IE9uIFR1ZSwgQXVnIDMxLCAyMDIxIGF0IDU6MzggUE0gUGF0Y2h3
b3JrDQo+ID4gPiA+ID4gPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+
ID4gPG1haWx0bzpwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4+IHdyb3RlOg0KPiA+
ID4gPiA+DQo+ID4gPiA+ID4gICAgICBfXw0KPiA+ID4gPiA+ICAgICAgKlBhdGNoIERldGFpbHMq
DQo+ID4gPiA+ID4gICAgICAqU2VyaWVzOioJdXNlIERZTkFNSUNfREVCVUcgdG8gaW1wbGVtZW50
IERSTS5kZWJ1ZyAocmV2MikNCj4gPiA+ID4gPiAgICAgICpVUkw6KglodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkzOTE0Lw0KPiA+ID4gPiA+ICAgICAgPGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvOTM5MTQvPg0KPiA+ID4gPiA+ICAgICAg
KlN0YXRlOioJZmFpbHVyZQ0KPiA+ID4gPiA+ICAgICAgKkRldGFpbHM6Kg0KPiA+ID4gPiA+ICAg
ICAgaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjA5
MzEvaW5kZXguaHRtbA0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIwOTMxL2luZGV4Lg0KPiA+ID4gPiA+IGh0
bWw+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAgICAgICBDSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV8xMDU0MV9mdWxsIC0+DQo+ID4gPiA+ID4gUGF0Y2h3b3JrXzIw
OTMxX2Z1bGwNCj4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gICAgICAgICAgU3VtbWFy
eQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gICAgICAqRkFJTFVSRSoNCj4gPiA+ID4gPg0KPiA+ID4g
PiA+ICAgICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzIw
OTMxX2Z1bGwNCj4gYWJzb2x1dGVseQ0KPiA+ID4gPiA+ICAgICAgbmVlZCB0byBiZQ0KPiA+ID4g
PiA+ICAgICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgICAgIElm
IHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0
aGUgY2hhbmdlcw0KPiA+ID4gPiA+ICAgICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMjA5MzFf
ZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvDQo+ID4gPiA+ID4gICAgICBhbGxv
dyB0aGVtDQo+ID4gPiA+ID4gICAgICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUs
IHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcw0KPiA+ID4gPiA+ICAgICAgaW4gQ0ku
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IGhpIFRlYW0gIQ0KPiA+ID4gPiA+DQo+
ID4gPiA+ID4gSSB0aGluayBJIG5lZWQgYcKgYml0IG9mIG9yaWVudGF0aW9uLg0KPiA+ID4gPiA+
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgICAgICAgICBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+ID4g
PiA+ID4NCj4gPiA+ID4gPiAgICAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBt
YXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4NCj4gPiA+ID4gPiAgICAgIFBhdGNod29ya18yMDkz
MV9mdWxsOg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgICAgICAgICAgIElHVCBj
aGFuZ2VzDQo+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICAgICAgICAgICAgICBQb3Nz
aWJsZSByZWdyZXNzaW9ucw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gICAgICAgICogaWd0QGdlbV9l
eGVjX3NjaGVkdWxlQHUtc3VibWl0LWdvbGRlbi1zbGljZUB2Y3MwOg0KPiA+ID4gPiA+ICAgICAg
ICAgICAgbyBzaGFyZC1za2w6IE5PVFJVTiAtPiBJTkNPTVBMRVRFDQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MjA5MzEvc2hhcmQtDQo+ID4gPiA+ID4gc2tsMTAvaWd0QGdlbV9leGVjX3NjaGVkdWxlQHUtc3Vi
bWl0LWdvbGRlbi1zbGljZUB2Y3MwLmh0bWw+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4g
PiA+ICAgICAgICAgICAgICBXYXJuaW5ncw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gICAgICAgICog
aWd0QGk5MTVfcG1fZGNAZGM5LWRwbXM6DQo+ID4gPiA+ID4gICAgICAgICAgICBvIHNoYXJkLXNr
bDogU0tJUA0KPiA+ID4gPiA+ICAgICAgICAgICAgICA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTA1NDEvc2hhcmQtDQo+IHNrbDYvaWd0QGk5MTVfcG1f
ZGNAZGM5LWRwbXMuaHRtbD4NCj4gPiA+ID4gPiAgICAgICAgICAgICAgKFtmZG8jMTA5MjcxXSkg
LT4gRkFJTA0KSTkxNV9wbV9kYyB0ZXN0IGZhaWx1cmVzIGFyZSBub3QgcmVsYXRlZCB0byB5b3Vy
IHNlcmllcyAsIHByb2JhYmx5ICB0aGlzIGZhaWx1cmUgY2FuIGJlIGlnbm9yZWQuDQpCciwNCkFu
c2h1bWFuIEd1cHRhLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIwOTMxL3NoYXJkLQ0KPiA+ID4gPiA+IHNr
bDgvaWd0QGk5MTVfcG1fZGNAZGM5LWRwbXMuaHRtbD4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+
ID4gPiA+ID4NCj4gPiA+ID4gPiBJbSBhc3N1bWluZ8KgdGhlIEZBSUwgaXMgdGhlIHN0aWNraW5n
IHBvaW50LA0KPiA+ID4gPg0KPiA+ID4gPiBCb3RoIElOQ09NUExFVEUgYW5kIEZBSUwgd2lsbCBj
YXVzZSBhIGZhaWx1cmUgdG8gYmUgZGVjbGFyZWQsIGJ1dCBpbiB0aGlzDQo+IGNhc2UgaXQgbG9v
a3MgdG8gbWUgdGhpcyBzZXJpZXMgaXMgbm90IGF0IGZhdWx0Lg0KPiA+ID4gPg0KPiA+ID4gPiAx
KQ0KPiA+ID4gPg0KPiA+ID4gPiBUaGUgZ2VtX2V4ZWNfc2NoZWR1bGUgZmFpbHVyZSBsb29rcyBs
aWtlIGEgdGVzdCBydW5uZXIgdGltZW91dCBpc3N1ZSAoYW5kDQo+IGFwcGFyZW50bHkgdGVzdCBk
b2VzIG5vdCBoYW5kbGUgd2VsbCBydW5uaW5nIHRoZSB0aGUgZmVuY2UgdGltZW91dCBlbmFibGVk
KS4NCj4gPiA+ID4NCj4gPiA+ID4gQFBldHJpIC0gZG9lcyB0aGUgYmVsb3cgbG9vayBsaWtlIElH
VCBydW5uZXIgcnVubmluZyBvdXIgb2YgdGltZQ0KPiA+ID4gPiBidWRnZXQgZm9yIHRoZSB0ZXN0
IHJ1bj8gV291bGQgaXQgbG9nDQo+ID4gPiA+DQo+ID4gPiA+IFsxMDUxLjk0MzYyOV0gWzExNC8x
MzhdICggMTFzIGxlZnQpIGdlbV9leGVjX3NjaGVkdWxlDQo+ID4gPiA+ICh1LXN1Ym1pdC1nb2xk
ZW4tc2xpY2UpIFN0YXJ0aW5nIHN1YnRlc3Q6IHUtc3VibWl0LWdvbGRlbi1zbGljZQ0KPiA+ID4g
PiBTdGFydGluZyBkeW5hbWljIHN1YnRlc3Q6IHJjczAgRHluYW1pYyBzdWJ0ZXN0IHJjczA6IFNV
Q0NFU1MNCj4gPiA+ID4gKDgwLjE3NXMpIFN0YXJ0aW5nIGR5bmFtaWMgc3VidGVzdDogYmNzMCBE
eW5hbWljIHN1YnRlc3QgYmNzMDoNCj4gPiA+ID4gU1VDQ0VTUyAoODAuMTk1cykgU3RhcnRpbmcg
ZHluYW1pYyBzdWJ0ZXN0OiB2Y3MwIER5bmFtaWMgc3VidGVzdA0KPiA+ID4gPiB2Y3MwOiBTVUND
RVNTICg4MC4yNDNzKSBTdGFydGluZyBkeW5hbWljIHN1YnRlc3Q6IHZlY3MwDQo+ID4gPiA+DQo+
ID4gPiA+IEludGVyZXN0aW5nIHBhcnQgaXMgdGhhdCBhY2NvcmRpbmcgdG8gZG1lc2cgaXQgbmV2
ZXIgZ290IHRvIHRoZSB2ZWNzMA0KPiBkeW5hbWljIHN1YnRlc3QgLSBhbnkgaWRlYSB3aGF0IGhh
cHBlbmVkIHRoZXJlPw0KPiA+ID4NCj4gPiA+IFllcCwgd2UgcmFuIG91dCBvZiB0aW1lLiBXZSBz
dGlsbCBoYWQgMTEgc2Vjb25kcyBsZWZ0IHRvIGV4ZWN1dGUNCj4gPiA+IHNvbWV0aGluZyBidXQg
dGhlbiB0aGF0IHRlc3QgdG9vayBjZW50dXJpZXMuDQo+ID4NCj4gPiBPa2F5IGF0IGxlYXN0IHRo
YXQncyBleHBsYWluZWQgdGhlbi4NCj4gPg0KPiA+IFBlcmhhcHMgY291bGQgbWFrZSB0aGF0IGFj
dCBvZiB0ZXJtaW5hdGlvbiBsb2dnZWQgaW4gaWd0X3J1bm5lciBsb2c/DQo+IA0KPiBXZSBkbyBs
b2cgZXZlcnl0aGluZyB3ZSBjYW4sIGJ1dCB1bmZvcnR1bmF0ZWx5IHRoaXMgd2FzIHN1Y2ggYW4g
ZXh0cmVtZSBjYXNlDQo+IHRoYXQgaXQgaGl0IHRoZSB0aW1lb3V0IHRoYXQganVzdCBjdXRzIG9m
ZiBBQyBwb3dlci4NCj4gDQo+IHJ1bi5sb2cgaGFzIHRoaXMgYWN0IGxvZ2dlZC4NCj4gDQo+ID4N
Cj4gPiBBbHNvLCBhbnkgZXhwbGFuYXRpb24gb24gd2h5IGRtZXNnIGFuZCBpZ3RfcnVubmVyIGxv
ZyBkaXNhZ3JlZSBvbiBob3cNCj4gPiBmYXIgdGhlIHRlc3QgcHJvZ3Jlc3NlZCAoaW4gdGVybXMg
b2Ygd2hpY2ggc3VidGVzdCB3YXMgYWN0aXZlIHdoZW4NCj4gPiB0aGluZ3MgZW5kZWQpPw0KPiA+
DQo+IA0KPiBMb29rcyBsaWtlIGEgcmFjZSBjb25kaXRpb24gd2l0aCB0aGUgYWJvdmUgbWVudGlv
bmVkIEFDIGN1dG9mZi4gVGhlIHRlc3QgcHJpbnRlZA0KPiB0aGF0IHZjczAgaXMgZmluaXNoZWQg
YW5kIHZlY3MwIHN0YXJ0cywgdGhhdCBpbmZvIHdhcyBwcmludGVkIHRvIGlndF9ydW5uZXIncw0K
PiBzdGRvdXQsIGJ1dCB0aGUgd3JpdGUoKSB0byB0aGUgdGVzdCBsb2dzIGRpZG4ndCBnZXQgY2Fs
bGVkIGJlZm9yZSBjdXRvZmYuDQo+IA0KPiANCj4gLS0NCj4gUGV0cmkgTGF0dmFsYQ0KPiANCj4g
DQo+ID4gUmVnYXJkcywNCj4gPg0KPiA+IFR2cnRrbw0KPiA+DQo+ID4NCj4gPiA+DQo+ID4gPg0K
PiA+ID4gPg0KPiA+ID4gPiAyKQ0KPiA+ID4gPg0KPiA+ID4gPiBJOTE1X3BtX2RjIEknZCBzYXkg
eW91IGp1c3QgZ290dGVuIHVubHVja3kgdGhhdCB0ZXN0IHdlbnQgZnJvbSBhbHdheXMNCj4gc2tp
cHBpbmcgb24gU0tMIHRvIHRyeWluZyB0byBydW4gaXQgYW5kIHRoZW4gaXQgZmFpbGVkLiBCdXQg
SSBkb24ndCBrbm93IGVub3VnaA0KPiBhYm91dCB0aGUgdGVzdCB0byB0ZWxsIHlvdSB3aHkuIEFk
ZGluZyBKaWdhciBhbmQgQW5zaHVtYW4gYXMgdGVzdCBhdXRob3IgYW5kDQo+IHJldmlld2VyIHdo
byBtaWdodCBiZSBhYmxlIHRvIHNoZWQgc29tZSBsaWdodCBoZXJlLg0KPiA+ID4gPg0KPiA+ID4g
PiBSZWdhcmRzLA0KPiA+ID4gPg0KPiA+ID4gPiBUdnJ0a28NCj4gPiA+ID4NCj4gPiA+ID4gPiBJ
IGZvdW5kIGNvZGUgdGhhdCBzZWVtZWQgdG8gYmUgcmVsZXZhbnQNCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IFtqaW1jQGZyb2RvIGlndC1jaS10YWdzLmdpdF0kIGdpdCByZW1vdGUgLXYNCj4gPiA+ID4g
PiBvcmlnaW4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9pZ3QtY2ktdGFn
cy5naXQNCj4gPiA+ID4gPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9p
Z3QtY2ktdGFncy5naXQ+IChmZXRjaCkNCj4gPiA+ID4gPiBvcmlnaW4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9pZ3QtY2ktdGFncy5naXQNCj4gPiA+ID4gPiA8aHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9pZ3QtY2ktdGFncy5naXQ+IChwdXNoKQ0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gSSBidWlsdCBpdCwgZ290IGFuIGVycm9yLCB0aHJldyB0aGF0
IHRvIGdvb2dsZSwNCj4gPiA+ID4gPiBmb3VuZCBhIHBhdGNoIG9uIGktZy10IGZyb20NCj4gPiA+
ID4gPiBjb21taXQgMWZmM2U1YWU5OWNlYjY2ZDI5MjZkNTg2MzVkMDM3OWNlOTcxMDY1YSAoSEVB
RCAtPg0KPiBtYXN0ZXIpDQo+ID4gPiA+ID4gQXV0aG9yOiBMeXVkZSBQYXVsIDxseXVkZUByZWRo
YXQuY29tIDxtYWlsdG86bHl1ZGVAcmVkaGF0LmNvbT4+DQo+ID4gPiA+ID4gRGF0ZTogwqAgTW9u
IEFwciAxNSAxNDo1NzoyMyAyMDE5IC0wNDAwDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBhbmQgYXBw
bGllZCBpdA0KPiA+ID4gPiA+IGl0IGZpeGVkIHRoZcKgb25lIHByb2JsZW0NCj4gPiA+ID4gPg0K
PiA+ID4gPiA+IHRoZW4gSSBsb29rZWQgYXQgcHJldmlvdXMgaGVhZA0KPiA+ID4gPiA+DQo+ID4g
PiA+ID4gY29tbWl0IGYwNTJlNDlhNDNjYzk3MDRlYTVmMjQwZGYxNWRkOWQzZGZlZDY4YWIgKG9y
aWdpbi9tYXN0ZXIsDQo+IG9yaWdpbi9IRUFEKQ0KPiA+ID4gPiA+IEF1dGhvcjogU2ltb24gU2Vy
IDxzaW1vbi5zZXJAaW50ZWwuY29tDQo+IDxtYWlsdG86c2ltb24uc2VyQGludGVsLmNvbT4+DQo+
ID4gPiA+ID4gRGF0ZTogwqAgV2VkIEFwciAyNCAxOToxNToyNiAyMDE5ICswMzAwDQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiBJdCBzdXJlIHNlZW1zIHRoYXQgdHJlZSBpcyBzdGFsZS4NCj4gPiA+DQo+
ID4gPiBUaGF0IHRyZWUncyBtYXN0ZXIgcmVmIGRvZXMgbm90IGdldCB1cGRhdGVkLiBJdCdzIG9u
bHkgZm9yIHN0b3JpbmcgdGFncy4NCj4gPiA+DQo+ID4gPiBUaGF0IHRlc3QgcmVzdWx0IGNvbXBh
cmlzb24gd2FzIHRvbyBsb25nIHRvIGZpdCBpbnRvIHBhdGNod29yayBzbyB0aGUNCj4gPiA+IGJ1
aWxkIGluZm9ybWF0aW9uIGF0IHRoZSBib3R0b20gaXMgbWlzc2luZywgYnV0IHRoZSBCQVQgcmVz
dWx0cyBoYXZlDQo+ID4gPiBpdDoNCj4gPiA+DQo+ID4gPiBJR1RfNjE5MzogMDgwODY5ZjgwNGNi
ODZiMjVhMzg4ODllNWNlOWE4NzA1NzFjZDhjNCBADQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gPiA+DQo+ID4gPg0KPiA+ID4NCg==
