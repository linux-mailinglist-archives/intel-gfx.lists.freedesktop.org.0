Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D37100D3F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 21:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41AF6E08A;
	Mon, 18 Nov 2019 20:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9776E08A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 20:46:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 12:46:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; d="scan'208";a="231298221"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 18 Nov 2019 12:46:00 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 Nov 2019 12:46:00 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.117]) with mapi id 14.03.0439.000;
 Mon, 18 Nov 2019 12:46:00 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Add DKL PHY vswing table for
 HDMI
Thread-Index: AQHVnjo1iBk4VPiiH0m/Jpj947FX3qeR7AWA
Date: Mon, 18 Nov 2019 20:45:59 +0000
Message-ID: <914d86de2398a3750fa8e25cf7acd26e8fdf5c18.camel@intel.com>
References: <20191118180219.9309-1-matthew.d.roper@intel.com>
In-Reply-To: <20191118180219.9309-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <294D7CCC4241B044AC9EBD8D44549CC9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add DKL PHY vswing table for
 HDMI
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTExLTE4IGF0IDEwOjAyIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgYnNwZWMgaW5pdGlhbGx5IHByb3ZpZGVkIGEgc2luZ2xlIERLTCBQSFkgdnN3aW5nIHRhYmxl
IGZvciBib3RoDQo+IEhETUkNCj4gYW5kIERQLCBidXQgd2FzIHJlY2VudGx5IHVwZGF0ZWQgdG8g
aW5jbHVkZSBhbiBpbmRlcGVuZGVudCB0YWJsZSBmb3INCj4gSERNSS4NCj4gDQoNClRoYW5rcywg
SSBoYWQgdGhhdCBpbiBteSBUT0RPIGxpc3QgdG8gZmluaXNoIFRDIGxlZ2FjeS4NCg0KUmV2aWV3
ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+
IEJzcGVjOiA0OTI5Mg0KPiBGaXhlczogOTc4YzNlNTM5YmUyICgiZHJtL2k5MTUvdGdsOiBBZGQg
ZGtsIHBoeSBwcm9ncmFtbWluZw0KPiBzZXF1ZW5jZXMiKQ0KPiBDYzogQ2xpbnRvbiBBIFRheWxv
ciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+DQo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jIHwgMjkgKysrKysrKysrKysrKysrKysrKysNCj4gLS0tLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggOGY4MTdk
ZTM0NDYwLi5hOTc2NjA2ZDIxYzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiBAQCAtNTkzLDcgKzU5Myw3IEBAIHN0cnVjdCB0Z2xfZGtsX3BoeV9k
ZGlfYnVmX3RyYW5zIHsNCj4gIAl1MzIgZGtsX2RlX2VtcGhhc2lzX2NvbnRyb2w7DQo+ICB9Ow0K
PiAgDQo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJhbnMNCj4g
dGdsX2RrbF9waHlfZGRpX3RyYW5zbGF0aW9uc1tdID0gew0KPiArc3RhdGljIGNvbnN0IHN0cnVj
dCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zDQo+IHRnbF9ka2xfcGh5X2RwX2RkaV90cmFuc1td
ID0gew0KPiAgCQkJCS8qIFZTCXByZS1lbXAJTm9uLXRyYW5zIG1WCVByZS0NCj4gZW1waCBkQiAq
Lw0KPiAgCXsgMHg3LCAweDAsIDB4MDAgfSwJLyogMAkwCTQwMG1WCQkwIGRCDQo+ICovDQo+ICAJ
eyAweDUsIDB4MCwgMHgwMyB9LAkvKiAwCTEJNDAwbVYJCTMuNQ0KPiBkQiAqLw0KPiBAQCAtNjA3
LDYgKzYwNywyMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJh
bnMNCj4gdGdsX2RrbF9waHlfZGRpX3RyYW5zbGF0aW9uc1tdID0gew0KPiAgCXsgMHgwLCAweDAs
IDB4MDAgfSwJLyogMwkwCTEyMDBtVgkJMCBkQg0KPiBIRE1JIGRlZmF1bHQgKi8NCj4gIH07DQo+
ICANCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdGdsX2RrbF9waHlfZGRpX2J1Zl90cmFucw0KPiB0
Z2xfZGtsX3BoeV9oZG1pX2RkaV90cmFuc1tdID0gew0KPiArCQkJCS8qIEhETUkgUHJlc2V0CVZT
CVByZS1lbXBoICovDQo+ICsJeyAweDcsIDB4MCwgMHgwIH0sCS8qIDEJCTQwMG1WCTBkQiAqLw0K
PiArCXsgMHg2LCAweDAsIDB4MCB9LAkvKiAyCQk1MDBtVgkwZEIgKi8NCj4gKwl7IDB4NCwgMHgw
LCAweDAgfSwJLyogMwkJNjUwbVYJMGRCICovDQo+ICsJeyAweDIsIDB4MCwgMHgwIH0sCS8qIDQJ
CTgwMG1WCTBkQiAqLw0KPiArCXsgMHgwLCAweDAsIDB4MCB9LAkvKiA1CQkxMDAwbVYJMGRCICov
DQo+ICsJeyAweDAsIDB4MCwgMHg1IH0sCS8qIDYJCUZ1bGwJLTEuNSBkQiAqLw0KPiArCXsgMHgw
LCAweDAsIDB4NiB9LAkvKiA3CQlGdWxsCS0xLjggZEIgKi8NCj4gKwl7IDB4MCwgMHgwLCAweDcg
fSwJLyogOAkJRnVsbAktMiBkQiAqLw0KPiArCXsgMHgwLCAweDAsIDB4OCB9LAkvKiA5CQlGdWxs
CS0yLjUgZEIgKi8NCj4gKwl7IDB4MCwgMHgwLCAweEEgfSwJLyogMTAJCUZ1bGwJLTMgZEIgKi8N
Cj4gK307DQo+ICsNCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGRpX2J1Zl90cmFucyAqDQo+ICBi
ZHdfZ2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBp
bnQNCj4gKm5fZW50cmllcykNCj4gIHsNCj4gQEAgLTg5Nyw3ICs5MTEsNyBAQCBzdGF0aWMgaW50
IGludGVsX2RkaV9oZG1pX2xldmVsKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgZW51bSBwb3J0IHBvcg0KPiAgCQkJaWNsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYs
DQo+IElOVEVMX09VVFBVVF9IRE1JLA0KPiAgCQkJCQkJMCwgJm5fZW50cmllcyk7DQo+ICAJCWVs
c2UNCj4gLQkJCW5fZW50cmllcyA9DQo+IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfZGRpX3RyYW5z
bGF0aW9ucyk7DQo+ICsJCQluX2VudHJpZXMgPQ0KPiBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5X2hk
bWlfZGRpX3RyYW5zKTsNCj4gIAkJZGVmYXVsdF9lbnRyeSA9IG5fZW50cmllcyAtIDE7DQo+ICAJ
fSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExKSB7DQo+ICAJCWlmIChpbnRlbF9w
aHlfaXNfY29tYm8oZGV2X3ByaXYsIHBoeSkpDQo+IEBAIC0yMzU4LDcgKzIzNzIsNyBAQCB1OCBp
bnRlbF9kZGlfZHBfdm9sdGFnZV9tYXgoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIp
DQo+ICAJCQlpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgZW5jb2Rlci0NCj4gPnR5
cGUsDQo+ICAJCQkJCQlpbnRlbF9kcC0+bGlua19yYXRlLA0KPiAmbl9lbnRyaWVzKTsNCj4gIAkJ
ZWxzZQ0KPiAtCQkJbl9lbnRyaWVzID0NCj4gQVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9kZGlfdHJh
bnNsYXRpb25zKTsNCj4gKwkJCW5fZW50cmllcyA9DQo+IEFSUkFZX1NJWkUodGdsX2RrbF9waHlf
ZHBfZGRpX3RyYW5zKTsNCj4gIAl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEp
IHsNCj4gIAkJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkNCj4gIAkJCWlj
bF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCBlbmNvZGVyLQ0KPiA+dHlwZSwNCj4gQEAg
LTI4MTAsOCArMjgyNCwxMyBAQCB0Z2xfZGtsX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVj
dA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgbGlua19jbG9jaywNCj4gIAljb25zdCBz
dHJ1Y3QgdGdsX2RrbF9waHlfZGRpX2J1Zl90cmFucyAqZGRpX3RyYW5zbGF0aW9uczsNCj4gIAl1
MzIgbl9lbnRyaWVzLCB2YWwsIGxuLCBkcGNudF9tYXNrLCBkcGNudF92YWw7DQo+ICANCj4gLQlu
X2VudHJpZXMgPSBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5X2RkaV90cmFuc2xhdGlvbnMpOw0KPiAt
CWRkaV90cmFuc2xhdGlvbnMgPSB0Z2xfZGtsX3BoeV9kZGlfdHJhbnNsYXRpb25zOw0KPiArCWlm
IChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9IRE1JKSB7DQo+ICsJCW5fZW50cmllcyA9
IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfaGRtaV9kZGlfdHJhbnMpOw0KPiArCQlkZGlfdHJhbnNs
YXRpb25zID0gdGdsX2RrbF9waHlfaGRtaV9kZGlfdHJhbnM7DQo+ICsJfSBlbHNlIHsNCj4gKwkJ
bl9lbnRyaWVzID0gQVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9kcF9kZGlfdHJhbnMpOw0KPiArCQlk
ZGlfdHJhbnNsYXRpb25zID0gdGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zOw0KPiArCX0NCj4gIA0K
PiAgCWlmIChsZXZlbCA+PSBuX2VudHJpZXMpDQo+ICAJCWxldmVsID0gbl9lbnRyaWVzIC0gMTsN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
