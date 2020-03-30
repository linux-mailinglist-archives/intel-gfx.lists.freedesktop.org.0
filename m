Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70C3198457
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B2B89EF7;
	Mon, 30 Mar 2020 19:24:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D5089EF7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 19:24:56 +0000 (UTC)
IronPort-SDR: CR1CoDBy3giuA2rQzdVPw80yx/S6Ffq5s+NCi8zkxt6bX2f71BvXM0O8AATc4CtmdcrCmy8oKj
 pX03WIc0hrKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 12:24:55 -0700
IronPort-SDR: /6Q8tfOQi6lKwJ2ueNMzHXr2U/oSEfXf1TIlRxC1QmJr5yJA2JP2IfpgJsNySIj+pm8+DeX0L5
 Oqb+ds10/dYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="239897123"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 30 Mar 2020 12:24:55 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 30 Mar 2020 12:24:55 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.172]) with mapi id 14.03.0439.000;
 Mon, 30 Mar 2020 12:24:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/dp: Return the right vswing
 tables
Thread-Index: AQHWBH9MHOwDHZM2o0Kes+We08kgT6hhsXkAgABNFAA=
Date: Mon, 30 Mar 2020 19:24:55 +0000
Message-ID: <848c3ddd53f140bfe4f6e5a5d9c4bee544be9cf7.camel@intel.com>
References: <20200327213413.166623-1-jose.souza@intel.com>
 <20200330145032.GJ13686@intel.com>
In-Reply-To: <20200330145032.GJ13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <9667A4E7EED33F4A887A9110F83C293D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dp: Return the right vswing
 tables
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTAzLTMwIGF0IDE3OjUwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTWFyIDI3LCAyMDIwIGF0IDAyOjM0OjExUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gRERJIHBvcnRzIGhhdmUgaXRzIGVuY29kZXJzIGlu
aXRpYWxpemVkIHdpdGggSU5URUxfT1VUUFVUX0RESSB0eXBlDQo+ID4gYW5kDQo+ID4gbGF0ZXIg
ZURQIHBvcnRzIHRoYXQgaGF2ZSB0aGUgdHlwZSBjaGFuZ2VkIHRvIElOVEVMX09VVFBVVF9FRFAu
DQo+ID4gQnV0IGZvciBhbGwgb3RoZXIgRERJIHBvcnRzIGl0IGNhbiBkcml2ZSBIRE1JIG9yIERQ
IGRlcGVuZGluZyBvbg0KPiA+IHdoYXQNCj4gPiB1c2VyIGNvbm5lY3RzIHRvIHRoZSBwb3J0cy4N
Cj4gPiANCj4gPiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucygpIGFuZCB0Z2xfZ2V0X2NvbWJvX2J1
Zl90cmFucygpIHdhcw0KPiA+IGNoZWNraW5nDQo+ID4gZm9yIElOVEVMX09VVFBVVF9EUCB0aGF0
IHdhcyBuZXZlciB0cnVlLCBjYXVzaW5nIGVEUCB2c3dpbmcgdGFibGVzDQo+ID4gYmVpbmcgdXNl
ZC4NCj4gPiANCj4gPiBTbyBoZXJlIGNoYW5naW5nIHRoZSBjaGVjayB0byBJTlRFTF9PVVRQVVRf
RERJLCBIRE1JIGNhc2VzIHdpbGwgYmUNCj4gPiBjb3JyZWN0bHkgaGFuZGxlZCBhcyBpdCBkbyBu
b3QgdXNlIGVuY29kZXItPnR5cGUsIGluc3RlYWQgaXQgY2FsbHMNCj4gPiB0aGUNCj4gPiBmdW5j
dGlvbnMgd2l0aCBJTlRFTF9PVVRQVVRfSERNSSBhcyB0eXBlIHBhcmFtZXRlciBhbmQgSERNSSBk
b24ndA0KPiA+IGhhdmUNCj4gPiByZXRyYWluaW5nLg0KPiA+IA0KPiA+IEZpeGVzOiBiZDNjZjZm
N2NlMjAgKCJkcm0vaTkxNS9kcC90Z2wrOiBVcGRhdGUgY29tYm8gcGh5IHZzd2luZw0KPiA+IHRh
YmxlcyIpDQo+ID4gQ2M6IENsaW50b24gQSBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwu
Y29tPg0KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gPiBpbmRleCA5MTZhODAyYWY3ODguLjdhZjE1NzJkNGYxZCAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC05NDcs
NyArOTQ3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyAqDQo+ID4g
IGVobF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgaW50DQo+ID4gdHlwZSwgaW50IHJhdGUsDQo+ID4gIAkJCWludCAqbl9lbnRyaWVzKQ0KPiA+
ICB7DQo+ID4gLQlpZiAodHlwZSA9PSBJTlRFTF9PVVRQVVRfRFAgJiYgcmF0ZSA+IDI3MDAwMCkg
ew0KPiA+ICsJaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0RESSAmJiByYXRlID4gMjcwMDAwKSB7
DQo+IA0KPiBQbGVhc2Ugbm8uIEknZCByYXRoZXIgbm90IHNlZSAiRERJIiBoZXJlLiBXZSB3YW50
IHRvIGNoZWNrIHdoaWNoIG1vZGUNCj4gd2UncmUgZHJpdmluZyB0aGUgb3V0cHV0IGluLCBhbmQg
IkRESSIgaXNuJ3Qgb25lIG9mIHRoZSB2YWxpZA0KPiBjaG9pY2VzLg0KPiANCj4gVGhlIGZhY3Qg
dGhhdCB3ZSBzb21ldGltZXMgcGFzcyBpbiBlbmNvZGVyLT50eXBlIGlzIGEgYml0IG9mIHNob3J0
Y3V0DQo+IHRvIG1ha2UgdGhlIERQIHZzLiBFRFAgZGlzdGluY3Rpb24uIEFuZCBzbyBmYXIgZXZl
cnkgZnVuY3Rpb24ga25ldyB0bw0KPiBvbmx5IGNvbXBhcmUgdGhlIHZhbHVlIGFnYWluc3QgRURQ
L0hETUkgYW5kIG5ldmUgYWdhaW5zdCBEUC4gTG9va3MNCj4gbGlrZQ0KPiBzb21lb25lIGJyb2tl
IHRoYXQgKGFkbWl0dGVkbHkgY3JhcHB5KSBjb252ZW50aW9uLg0KPiANCj4gV2Ugc2hvdWxkIHBy
b2JhYmx5IGZpeCB0aGlzIGEgYml0IGhpZ2hlciB1cCBhbmQgbWFrZSBzdXJlIHdlIG9ubHkNCj4g
ZXZlcg0KPiBwYXNzIGluIEVEUC9EUC9IRE1JLCBuZXZlciBEREkuDQoNCk9rYXkgc28gZm9yIG5v
dyBJIHdpbGwganVzdCBkbyB0aGUgYmVsbG93Og0KDQppZiAodHlwZSAhPSBJTlRFTF9PVVRQVVRf
RURQICYmIHR5cGUgIT0gSU5URUxfT1VUUFVUX0hETUkgJiYgcmF0ZSA+DQoyNzAwMDApIHsNCg0K
R29vZCBlbm91Z2ggZm9yIG5vdz8NCj4gDQo+ID4gIAkJKm5fZW50cmllcyA9DQo+ID4gQVJSQVlf
U0laRShlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzKTsNCj4gPiAgCQly
ZXR1cm4gZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hicjJfaGJyMzsNCj4gPiAgCX0N
Cj4gPiBAQCAtOTU5LDcgKzk1OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZf
dHJhbnMgKg0KPiA+ICB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGludA0KPiA+IHR5cGUsIGludCByYXRlLA0KPiA+ICAJCQlpbnQgKm5f
ZW50cmllcykNCj4gPiAgew0KPiA+IC0JaWYgKHR5cGUgIT0gSU5URUxfT1VUUFVUX0RQKSB7DQo+
ID4gKwlpZiAodHlwZSAhPSBJTlRFTF9PVVRQVVRfRERJKSB7DQo+ID4gIAkJcmV0dXJuIGljbF9n
ZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCB0eXBlLCByYXRlLA0KPiA+IG5fZW50cmllcyk7
DQo+ID4gIAl9IGVsc2UgaWYgKHJhdGUgPiAyNzAwMDApIHsNCj4gPiAgCQkqbl9lbnRyaWVzID0N
Cj4gPiBBUlJBWV9TSVpFKHRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyKTsN
Cj4gPiAtLSANCj4gPiAyLjI2LjANCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
