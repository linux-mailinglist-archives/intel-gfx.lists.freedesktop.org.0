Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA8B397A1
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 23:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1176289270;
	Fri,  7 Jun 2019 21:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E4589270
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 21:20:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 14:20:10 -0700
X-ExtLoop1: 1
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga005.jf.intel.com with ESMTP; 07 Jun 2019 14:20:10 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 14:20:10 -0700
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.154]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.133]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 14:20:10 -0700
From: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Navare, 
 Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
Thread-Index: AQHVGlYCdFXRLI3Z/EWOU4yNuVKLHKaL6UMAgABzWACAAAjYgIAEyUoA
Date: Fri, 7 Jun 2019 21:20:09 +0000
Message-ID: <36bc29749295d936bf01836570b90fb6b0d4bdad.camel@intel.com>
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
 <20190604125158.GC5942@intel.com> <20190604194448.GC7353@intel.com>
 <20190604201627.GM5942@intel.com>
In-Reply-To: <20190604201627.GM5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.241.236.198]
Content-ID: <2E600C9474420340B7BE960B737BF2EF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDIzOjE2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSnVuIDA0LCAyMDE5IGF0IDEyOjQ0OjQ4UE0gLTA3MDAsIE1hbmFzaSBOYXZh
cmUgd3JvdGU6DQo+ID4gT24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDM6NTE6NThQTSArMDMwMCwg
VmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gT24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDI6
NDk6NDBQTSAtMDcwMCwgDQo+ID4gPiBtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbSB3cm90ZToN
Cj4gPiA+ID4gRnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0K
PiA+ID4gPiANCj4gPiA+ID4gaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcygpIGNhbGxzIGludGVs
X2RwX2lzX2VkcCgpLCB3aGljaCBpcw0KPiA+ID4gPiB1bnNhZmUgdG8NCj4gPiA+ID4gdXNlIGJl
Zm9yZSBlbmNvZGVyX3R5cGUgaXMgc2V0LiBUaGlzIGNhdXNlZCBHRU4xMSsgdG8NCj4gPiA+ID4g
aW5jb3JyZWN0bHkgc3RyaXANCj4gPiA+ID4gSEJSMyBmcm9tIHNvdXJjZSByYXRlcy4gTW92ZSBp
bnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKCkgdG8NCj4gPiA+ID4gYWZ0ZXINCj4gPiA+ID4gZW5j
b2Rlcl90eXBlIGlzIHNldC4gQWRkIGNvbW1lbnQgdG8gaW50ZWxfZHBfaXNfZWRwKCkNCj4gPiA+
ID4gZGVzY3JpYmluZyB1bnNhZmUNCj4gPiA+ID4gdXNhZ2VzLg0KPiA+ID4gPiANCj4gPiA+ID4g
Rml4ZXM6IGIyNjVhMmE2MjU1ZjUgKCJkcm0vaTkxNS9pY2w6IGNvbWJvIHBvcnQgdnN3aW5nDQo+
ID4gPiA+IHByb2dyYW1taW5nDQo+ID4gPiA+IGNoYW5nZXMgcGVyIEJTUEVDIikNCj4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0K
PiA+ID4gPiAtLS0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA2
ICsrKystLQ0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAu
Yw0KPiA+ID4gPiBpbmRleCAyNGI1NmIyYTc2YzguLmE0NDkwYmNhZDY4NCAxMDA2NDQNCj4gPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYw0KPiA+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jDQo+ID4gPiA+IEBAIC0xNDEsNiArMTQxLDgg
QEAgc3RhdGljIGNvbnN0IHU4IHZhbGlkX2RzY19zbGljZWNvdW50W10gPQ0KPiA+ID4gPiB7MSwg
MiwgNH07DQo+ID4gPiA+ICAgKg0KPiA+ID4gPiAgICogSWYgYSBDUFUgb3IgUENIIERQIG91dHB1
dCBpcyBhdHRhY2hlZCB0byBhbiBlRFAgcGFuZWwsIHRoaXMNCj4gPiA+ID4gZnVuY3Rpb24NCj4g
PiA+ID4gICAqIHdpbGwgcmV0dXJuIHRydWUsIGFuZCBmYWxzZSBvdGhlcndpc2UuDQo+ID4gPiA+
ICsgKg0KPiA+ID4gPiArICogVGhpcyBmdW5jdGlvbiBpcyBub3Qgc2FmZSB0byB1c2UgcHJpb3Ig
dG8gZW5jb2RlciB0eXBlDQo+ID4gPiA+IGJlaW5nIHNldC4NCj4gPiA+ID4gICAqLw0KPiA+ID4g
PiAgYm9vbCBpbnRlbF9kcF9pc19lZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+
ID4gIHsNCj4gPiA+ID4gQEAgLTczNDIsOCArNzM0NCw2IEBAIGludGVsX2RwX2luaXRfY29ubmVj
dG9yKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LA0K
PiA+ID4gPiAgCQkgaW50ZWxfZGlnX3BvcnQtPm1heF9sYW5lcywgcG9ydF9uYW1lKHBvcnQpKSkN
Cj4gPiA+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiAgDQo+ID4gPiA+IC0JaW50ZWxfZHBf
c2V0X3NvdXJjZV9yYXRlcyhpbnRlbF9kcCk7DQo+ID4gPiA+IC0NCj4gPiA+ID4gIAlpbnRlbF9k
cC0+cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOw0KPiA+ID4gPiAgCWludGVsX2RwLT5wcHNfcGlw
ZSA9IElOVkFMSURfUElQRTsNCj4gPiA+ID4gIAlpbnRlbF9kcC0+YWN0aXZlX3BpcGUgPSBJTlZB
TElEX1BJUEU7DQo+ID4gPiA+IEBAIC03Mzg4LDYgKzczODgsOCBAQCBpbnRlbF9kcF9pbml0X2Nv
bm5lY3RvcihzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9y
dCwNCj4gPiA+ID4gIAkJCXR5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCA/ICJlRFAiDQo+
ID4gPiA+IDogIkRQIiwNCj4gPiA+ID4gIAkJCXBvcnRfbmFtZShwb3J0KSk7DQo+ID4gPiA+ICAN
Cj4gPiA+ID4gKwlpbnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKGludGVsX2RwKTsNCj4gPiA+ID4g
Kw0KPiA+ID4gDQo+ID4gPiBJIHdvdWxkIHN1Z2dlc3QgbW92aW5nIHRoZSBlbmNvZGVyLT50eXBl
IHNldHVwIGVhcmxpZXIgc28gdGhhdCB3ZQ0KPiA+ID4gbWlnaHQNCj4gPiA+IGF2b2lkIGhpdHRp
bmcgdGhpcyBzYW1lIHByb2JsZW0gaW4gdGhlIGZ1dHVyZS4NCj4gPiANCj4gPiBJTUhPLCBJZGVh
bGx5IHRoaXMgZW5jb2Rlci0+dHlwZSBzaG91bGQgYmUgc2V0IGluIGludGVsX2RkaV9pbml0IG9y
DQo+ID4gaW50ZWxfZGRpX2luaXRfZHBfY29ubmVjdG9yKCkNCj4gPiBmb3IgdXMgdG8gbmV2ZXIg
Z2V0IGludG8gYSBzaXR1YXRpb24gd2hlcmUgaW50ZWxfZHBfaXNfZWRwKCkgaXMNCj4gPiBjYWxs
ZWQgYmVmb3JlIGVuY29kZXItPnR5cGUgaXMgc2V0Lg0KPiA+IA0KPiA+IElzIHRoYXQgd2hhdCB5
b3UgYXJlIHJlY29tbWVuZGluZz8NCj4gDQo+IEkgd2FzIHRoaW5raW5nIGp1c3QgbW92aW5nIGl0
IHRvIHRoZSBzdGFydCBvZg0KPiBpbnRlbF9kcF9pbml0X2Nvbm5lY3RvcigpLA0KPiBidXQgSSBz
dXBwb3NlIG1vdmluZyBpdCBldmVuIGVhcmxpZXIgd291bGQgYmUgcG9zc2libGUgc2luY2UNCj4g
aW50ZWxfZGRpLmMNCj4gZG9lc24ndCBzZWVtIHRvIGRvIGFueSBvZiB0aGUgZURQLT5IRE1JIGZh
bGxiYWNrIHdlIG5lZWRlZCB0byBhZGQgZm9yDQo+IFZMVi9DSFYuDQphY2sNCj4gDQo+ID4gDQo+
ID4gTWFuYXNpDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4gIAlkcm1fY29ubmVjdG9yX2luaXQoZGV2
LCBjb25uZWN0b3IsDQo+ID4gPiA+ICZpbnRlbF9kcF9jb25uZWN0b3JfZnVuY3MsIHR5cGUpOw0K
PiA+ID4gPiAgCWRybV9jb25uZWN0b3JfaGVscGVyX2FkZChjb25uZWN0b3IsDQo+ID4gPiA+ICZp
bnRlbF9kcF9jb25uZWN0b3JfaGVscGVyX2Z1bmNzKTsNCj4gPiA+ID4gIA0KPiA+ID4gPiAtLSAN
Cj4gPiA+ID4gMi4xNy4yDQo+ID4gPiA+IA0KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
DQo+ID4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gPiA+
IA0KPiA+ID4gLS0gDQo+ID4gPiBWaWxsZSBTeXJqw6Rsw6QNCj4gPiA+IEludGVsDQo+ID4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+ID4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngNCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
