Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85201E9191
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 22:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BED6E78C;
	Tue, 29 Oct 2019 21:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBAD6E789
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 21:15:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 14:15:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="225113141"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga004.fm.intel.com with ESMTP; 29 Oct 2019 14:15:02 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 14:15:02 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.210]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.128]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 14:15:02 -0700
From: "Hiatt, Don" <don.hiatt@intel.com>
To: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
Thread-Index: AQHVjdY+8W8wNgAbCk2WEOY4pr8JLqdyA8YAgAAbEfA=
Date: Tue, 29 Oct 2019 21:15:01 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F97773A@ORSMSX106.amr.corp.intel.com>
References: <20191028212527.24401-1-don.hiatt@intel.com>
 <op.0ae85w05xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.0ae85w05xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGUyZmQ3OGEtNTZlMi00N2I1LTgwYzctZGU2NDQ3ZGI5NGE1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWTNpS2o0ZDdWOGs3RkR0UWd0aU9pbmorUmRrMUlPa050aFhDNWVcL25ocCs2TDhJT0o1cXRmdEZxcmxnaUxXMmMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

PiBGcm9tOiBXYWpkZWN6a28sIE1pY2hhbCA8TWljaGFsLldhamRlY3prb0BpbnRlbC5jb20+DQo+
IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgMjksIDIwMTkgNTozMyBBTQ0KPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgSGlhdHQsIERvbiA8ZG9uLmhpYXR0QGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZ3VjOiBTa2lwIHN1
c3BlbmQvcmVzdW1lIEd1QyBhY3Rpb24NCj4gb24gcGxhdGZvcm1zIHcvbyBHdUMgc3VibWlzc2lv
bg0KPiANCj4gT24gTW9uLCAyOCBPY3QgMjAxOSAyMjoyNToyNyArMDEwMCwgPGRvbi5oaWF0dEBp
bnRlbC5jb20+IHdyb3RlOg0KPiANCj4gPiBGcm9tOiBEb24gSGlhdHQgPGRvbi5oaWF0dEBpbnRl
bC5jb20+DQo+ID4NCj4gPiBPbiBzb21lIHBsYXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90
IHN1cHBvcnQgR3VDIHN1Ym1pc3Npb24sIGJ1dA0KPiA+IHRoZSB1c2VyIGVuYWJsZWQgdGhlIEd1
QyBjb21tdW5pY2F0aW9uIChlLmcgZm9yIEh1QyBhdXRoZW50aWNhdGlvbikNCj4gPiBjYWxsaW5n
IHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0eSB0
bw0KPiA+IGVudGVyIFJDNi4gV2UgY2FuIHJlbW92ZSB0aGUgR3VDIHN1c3BlbmQvcmVtb3ZlIGVu
dGlyZWx5IGFzIHdlIGRvDQo+ID4gbm90IG5lZWQgdG8gc2F2ZSB0aGUgR3VDIHN1Ym1pc3Npb24g
c3RhdHVzLg0KPiA+DQo+ID4gdjI6IERvIG5vdCBzdXNwZW5kL3Jlc3VtZSB0aGUgR3VDIG9uIHBs
YXRmb3JtcyB0aGF0IGRvIG5vdCBzdXBwb3J0DQo+ID4gICAgIEd1YyBTdWJtaXNzaW9uLg0KPiA+
DQo+ID4gU2lnbmVkLW9mZi1ieTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0KPiA+
IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMTcgKysr
KysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jDQo+ID4gaW5kZXgg
M2ZkYmM5MzVkMTU1Li4wNDAzMTU2NGYwYjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjLmMNCj4gPiBAQCAtNTcyLDEwICs1NzIsMTkgQEAgdm9pZCBpbnRlbF91
Y19ydW50aW1lX3N1c3BlbmQoc3RydWN0IGludGVsX3VjICp1YykNCj4gPiAgCWlmICghaW50ZWxf
Z3VjX2lzX3J1bm5pbmcoZ3VjKSkNCj4gPiAgCQlyZXR1cm47DQo+ID4gKwkvKg0KPiA+ICsJICog
SWYgR3VDIGNvbW11bmNpYXRpb24gaXMgZW5hYmxlZCBidXQgc3VibWlzc2lvbiBpcyBub3Qgc3Vw
cG9ydGVkLA0KPiANCj4gdHlwbw0KPiANCj4gPiArCSAqIHdlIGRvIG5vdCBuZWVkIHRvIHN1c3Bl
bmQgdGhlIEd1QyBidXQgd2UgZG8gbmVlZCB0byBkaXNhYmxlIHRoZQ0KPiA+ICsJICogR3VDIGNv
bW11bmljYXRpb24gb24gc3VzcGVuZC4NCj4gPiArCSAqLw0KPiA+ICsJaWYgKCFndWMtPnN1Ym1p
c3Npb25fc3VwcG9ydGVkKQ0KPiANCj4gVXNpbmcgc3VibWlzc2lvbl9zdXBwb3J0ZWQgZmxhZyBk
aXJlY3RseSBjYW4gYmUgdHJpY2t5LCBhcyB0b2RheSBpdA0KPiBpcyBhbHdheXMgc2V0IHRvIGZh
bHNlLCBidXQgaW4gdGhlIGZ1dHVyZSBpdCBtYXkgaW5kaWNhdGUgZWl0aGVyIHRoYXQNCj4gc3Vi
bWlzc2lvbiBpcyBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlci9mdyBhbmQvb3IgZW5hYmxlZCBieSBt
b2RwYXJhbS4NCj4gDQo+IFRoZXJlIGlzIG5vIGd1YXJhbnRlZSB0aGF0IGl0IHdpbGwgcmVmbGVj
dCBhY3R1YWwgcnVudGltZSBzdGF0dXMsDQo+IGFzIGV2ZW4gc3VwcG9ydGVkL3VuYmxvY2tlZCBn
dWMgc3VibWlzc2lvbiBtYXkgZmFsbGJhY2sgdG8gZXhlY2xpc3RzLg0KPiANCj4gV2UgbWF5IG5l
ZWQgc29tZXRoaW5nIGxpa2UgaW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfYWN0aXZlKCkgdGhhdCB3
aWxsDQo+IHJlZmxlY3QgYWN0dWFsIG1vZGUgb2Ygc3VibWlzc2lvbiBjdXJyZW50bHkgdXNlZCBi
eSB0aGUgZHJpdmVyLg0KDQpIaSBNaWNoYWwsDQoNCkkgbG9va2VkIGF0IHlvdXIgcGF0Y2ggd3J0
IGNoZWNraW5nIHRoZSBzZXRfZGVmYXVsdF9zdWJtaXNzaW9uIHZmdW5jIGJ1dA0KYXMgdGhhdCBp
cyBmb3IgdGhlIGVuZ2luZSwgYW5kIGhlcmUgSSBvbmx5IGhhdmUgYWNjZXNzIHRvIHRoZSBpbnRl
bF9ndWMgc3RydWN0Lg0KSSdtIG5vdCBzdXJlIGp1c3Qgd2hlcmUgSSBjYW4ga25vdyB3aGF0IHRo
ZSBkZWZhdWx0IHN1Ym1pc3Npb24gaXMgYW5kIHRoZW4NCmZsYWcgaXQgc29tZXdoZXJlIHRoYXQg
SSBjYW4gdGhlbiBjaGVjayBoZXJlIGluIHRoZSBzdXNwZW5kL3Jlc3VtZS4gSSdsbCBrZWVwDQps
b29raW5nIChzb3JyeSwgSSdtIHZlcnkgbmV3IHRvIHRoaXMgY29kZSkuIPCfmIoNCg0KVGhhbmtz
LA0KDQpkb24NCg0KDQoNCg0KDQoNCj4gDQo+ID4gKwkJZ290byBndWNfZGlzYWJsZV9jb21tOw0K
PiANCj4gYW5kIG1heWJlIHdlIGNhbiBtb3ZlIGFib3ZlIGxvZ2ljIHRvIGludGVsX2d1Y19zdXNw
ZW5kKCkNCj4gdG8gZG8gbm90IGludHJvZHVjZSBleHRyYSBnb3RvJ3MgPw0KPiANCj4gPiArDQo+
ID4gIAllcnIgPSBpbnRlbF9ndWNfc3VzcGVuZChndWMpOw0KPiA+ICAJaWYgKGVycikNCj4gPiAg
CQlEUk1fREVCVUdfRFJJVkVSKCJGYWlsZWQgdG8gc3VzcGVuZCBHdUMsIGVycj0lZCIsIGVycik7
DQo+ID4gK2d1Y19kaXNhYmxlX2NvbW06DQo+ID4gIAlndWNfZGlzYWJsZV9jb21tdW5pY2F0aW9u
KGd1Yyk7DQo+ID4gIH0NCj4gPiBAQCAtNjA1LDYgKzYxNCwxNCBAQCBzdGF0aWMgaW50IF9fdWNf
cmVzdW1lKHN0cnVjdCBpbnRlbF91YyAqdWMsIGJvb2wNCj4gPiBlbmFibGVfY29tbXVuaWNhdGlv
bikNCj4gPiAgCWlmIChlbmFibGVfY29tbXVuaWNhdGlvbikNCj4gPiAgCQlndWNfZW5hYmxlX2Nv
bW11bmljYXRpb24oZ3VjKTsNCj4gPiArCS8qDQo+ID4gKwkgKiBJZiBHdUMgY29tbXVuY2lhdGlv
biBpcyBlbmFibGVkIGJ1dCBzdWJtaXNzaW9uIGlzIG5vdCBzdXBwb3J0ZWQsDQo+IA0KPiB0eXBv
DQo+IA0KPiA+ICsJICogd2UgZG8gbm90IG5lZWQgdG8gcmVzdW1lIHRoZSBHdUMgYnV0IHdlIGRv
IG5lZWQgdG8gZW5hYmxlIHRoZQ0KPiA+ICsJICogR3VDIGNvbW11bmljYXRpb24gb24gcmVzdW1l
IChhYm92ZSkuDQo+ID4gKwkgKi8NCj4gPiArCWlmICghZ3VjLT5zdWJtaXNzaW9uX3N1cHBvcnRl
ZCkNCj4gPiArCQlyZXR1cm4gMDsNCj4gDQo+IHNlZSBzdXNwZW5kIGNhc2UgY29tbWVudA0KPiAN
Cj4gPiArDQo+ID4gIAllcnIgPSBpbnRlbF9ndWNfcmVzdW1lKGd1Yyk7DQo+ID4gIAlpZiAoZXJy
KSB7DQo+ID4gIAkJRFJNX0RFQlVHX0RSSVZFUigiRmFpbGVkIHRvIHJlc3VtZSBHdUMsIGVycj0l
ZCIsIGVycik7DQo+IA0KPiBUaGFua3MsDQo+IE1pY2hhbA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
