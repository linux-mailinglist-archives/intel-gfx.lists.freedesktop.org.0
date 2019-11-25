Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD8410919A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 17:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAA489E5B;
	Mon, 25 Nov 2019 16:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D43789CD8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 16:08:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 08:08:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="239584490"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2019 08:08:42 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.37]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 16:08:41 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915: Support more QGV points
Thread-Index: AQHVoT8Ny6LpEZy2XUmm7KXOn+b9caecCGKAgAAF3QCAAAMZgIAAALWA
Date: Mon, 25 Nov 2019 16:08:40 +0000
Message-ID: <b8a1eebd2da7c451b228e2bd4c8793a83861dd67.camel@intel.com>
References: <20191122141049.25608-1-stanislav.lisovskiy@intel.com>
 <20191125153143.GX1208@intel.com>
 <908f3f1acb69c12e9e880fb269d6d55a60ac3ab3.camel@intel.com>
 <43D4F724E12AB6478FC1572B3FBE89D0769F0DDC@IRSMSX106.ger.corp.intel.com>
In-Reply-To: <43D4F724E12AB6478FC1572B3FBE89D0769F0DDC@IRSMSX106.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <E0EBDE737052BD4680C139D580686434@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support more QGV points
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTExLTI1IGF0IDE2OjAzICswMDAwLCBTYWFyaW5lbiwgSmFuaSB3cm90ZToN
Cj4gSGksDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogTGlz
b3Zza2l5LCBTdGFuaXNsYXYgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IFNl
bnQ6IG1hYW5hbnRhaSAyNS4gbWFycmFza3V1dGEgMjAxOSAxNy41NQ0KPiA+IFRvOiB2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+IENjOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFy
aW5lbkBpbnRlbC5jb20+OyANCj4gPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0K
PiA+IFJvcGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyANCj4gPiBq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb207DQo+ID4gU2FydmVsYSwgVG9taSBQIDx0b21pLnAu
c2FydmVsYUBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTU6
IFN1cHBvcnQgbW9yZSBRR1YgcG9pbnRzDQo+ID4gDQo+ID4gT24gTW9uLCAyMDE5LTExLTI1IGF0
IDE3OjMxICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiBPbiBGcmksIE5vdiAy
MiwgMjAxOSBhdCAwNDoxMDo0OVBNICswMjAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5DQo+ID4gPiB3
cm90ZToNCj4gPiA+ID4gQWNjb3JkaW5nIHRvIEJTcGVjIDUzOTk4LCB0aGVyZSBpcyBhIG1hc2sg
b2YgbWF4IDggU0FHVi9RR1YNCj4gPiA+ID4gcG9pbnRzDQo+ID4gPiA+IHdlIG5lZWQgdG8gc3Vw
cG9ydC4NCj4gPiA+ID4gDQo+ID4gPiA+IEJ1bXBpbmcgdGhpcyB1cCB0byBrZWVwIHRoZSBDSSBo
YXBweShjdXJyZW50bHkgcHJldmVudGluZyB0ZXN0cw0KPiA+ID4gPiB0bw0KPiA+ID4gPiBydW4p
LCB1bnRpbCBhbGwgU0FHViBjaGFuZ2VzIGxhbmQuDQo+ID4gPiA+IA0KPiA+ID4gPiBGaXhlczog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTg5DQo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPA0KPiA+ID4gPiBzdGFuaXNs
YXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAyMg0KPiA+ID4gPiArKysrKysrKysrKysr
KysrKy0tDQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgIHwgIDYgKysrKystDQo+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIyIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiA+IGluZGV4IDg2ZTc1
ZTg1ODAwOC4uZDFiODA1YjMwMTc3IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiA+IEBAIC0xNSw3ICsxNSw3IEBAIHN0cnVj
dCBpbnRlbF9xZ3ZfcG9pbnQgeyAgfTsNCj4gPiA+ID4gDQo+ID4gPiA+ICBzdHJ1Y3QgaW50ZWxf
cWd2X2luZm8gew0KPiA+ID4gPiAtCXN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgcG9pbnRzWzNdOw0K
PiA+ID4gPiArCXN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgcG9pbnRzW0k5MTVfTlVNX1NBR1ZfUE9J
TlRTXTsNCj4gPiA+ID4gIAl1OCBudW1fcG9pbnRzOw0KPiA+ID4gPiAgCXU4IG51bV9jaGFubmVs
czsNCj4gPiA+ID4gIAl1OCB0X2JsOw0KPiA+ID4gPiBAQCAtMjc2LDE1ICsyNzYsMjcgQEAgdm9p
ZCBpbnRlbF9id19pbml0X2h3KHN0cnVjdA0KPiA+ID4gPiBkcm1faTkxNV9wcml2YXRlDQo+ID4g
PiA+ICpkZXZfcHJpdikNCj4gPiA+ID4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfbWF4X2Rh
dGFfcmF0ZShzdHJ1Y3QNCj4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiAqZGV2X3By
aXYsDQo+ID4gPiA+ICAJCQkJCWludA0KPiA+IA0KPiA+IG51bV9wbGFuZXMpDQo+ID4gPiA+ICB7
DQo+ID4gPiA+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpDQo+ID4gPiA+ICsJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsNCj4gPiA+ID4gKwkJLyoNCj4gPiA+ID4gKwkJ
ICogQW55IGJ3IGdyb3VwIGhhcyBzYW1lIGFtb3VudCBvZiBRR1YgcG9pbnRzDQo+ID4gPiA+ICsJ
CSAqLw0KPiA+ID4gPiArCQljb25zdCBzdHJ1Y3QgaW50ZWxfYndfaW5mbyAqYmkgPQ0KPiA+ID4g
PiArCQkJJmRldl9wcml2LT5tYXhfYndbMF07DQo+ID4gPiA+ICsJCXVuc2lnbmVkIGludCBtaW5f
YncgPSBVSU5UX01BWDsNCj4gPiA+ID4gKwkJaW50IGk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gIAkJ
LyoNCj4gPiA+ID4gIAkJICogRklYTUUgd2l0aCBTQUdWIGRpc2FibGVkIG1heWJlIHdlIGNhbiBh
c3N1bWUNCj4gPiA+ID4gIAkJICogcG9pbnQgMSB3aWxsIGFsd2F5cyBiZSB1c2VkPyBTZWVtcyB0
byBtYXRjaA0KPiA+ID4gPiAgCQkgKiB0aGUgYmVoYXZpb3VyIG9ic2VydmVkIGluIHRoZSB3aWxk
Lg0KPiA+ID4gPiAgCQkgKi8NCj4gPiA+ID4gLQkJcmV0dXJuIG1pbjMoaWNsX21heF9idyhkZXZf
cHJpdiwgbnVtX3BsYW5lcywNCj4gPiA+ID4gMCksDQo+ID4gPiA+IC0JCQkgICAgaWNsX21heF9i
dyhkZXZfcHJpdiwgbnVtX3BsYW5lcywNCj4gPiANCj4gPiAxKSwNCj4gPiA+ID4gLQkJCSAgICBp
Y2xfbWF4X2J3KGRldl9wcml2LCBudW1fcGxhbmVzLA0KPiA+IA0KPiA+IDIpKTsNCj4gPiA+ID4g
KwkJZm9yIChpID0gMDsgaSA8IGJpLT5udW1fcWd2X3BvaW50czsgaSsrKSB7DQo+ID4gPiA+ICsJ
CQl1bnNpZ25lZCBpbnQgYncgPSBpY2xfbWF4X2J3KGRldl9wcml2LA0KPiA+ID4gPiBudW1fcGxh
bmVzLCBpKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCQkJbWluX2J3ID0gbWluKGJ3LCBtaW5fYncp
Ow0KPiA+ID4gPiArCQl9DQo+ID4gPiA+ICsJCXJldHVybiBtaW5fYnc7DQo+ID4gPiA+ICsJfQ0K
PiA+ID4gPiAgCWVsc2UNCj4gPiA+ID4gIAkJcmV0dXJuIFVJTlRfTUFYOw0KPiA+ID4gPiAgfQ0K
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggaW5kZXgNCj4gPiA+ID4gZmRh
ZTVhOTE5YmM4Li5kNDVhOWZmYWVkNGYNCj4gPiA+ID4gMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+ID4gPiBAQCAtNjIxLDYgKzYyMSw5IEBAIHN0cnVjdCBp
OTE1X2dlbV9tbSB7DQo+ID4gPiA+IA0KPiA+ID4gPiAgI2RlZmluZSBJOTE1X0VOR0lORV9XRURH
RURfVElNRU9VVCAgKDYwICogSFopICAvKiBSZXNldCBidXQgbm8NCj4gPiA+ID4gcmVjb3Zlcnk/
ICovDQo+ID4gPiA+IA0KPiA+ID4gPiArLyogQlNwZWMgcHJlY2lzZWx5IGRlZmluZXMgdGhpcyAq
Lw0KPiA+ID4gPiArI2RlZmluZSBJOTE1X05VTV9TQUdWX1BPSU5UUyA4DQo+ID4gPiANCj4gPiA+
IEkgdGhpbmsgZXZlcnl0aGluZyBlbHNlIHRhbGtzIGFib3V0ICJRR1YgcG9pbnRzIiByYXRoZXIg
dGhhbg0KPiA+ID4gIlNBR1YNCj4gPiA+IHBvaW50cyIgbm93PyBXb3VsZCBiZSBuaWNlIHRvIGJl
IGNvbnNpc3RlbnQuDQo+ID4gDQo+ID4gQWdyZWUsIF9TQUdWXyBpcyBub3QgdGhhdCBhY2N1cmF0
ZSBoZXJlLg0KPiA+IFdpbGwgY2hhbmdlIHRoZSBuYW1pbmcuDQo+IA0KPiBDYW4gd2UgZG8gdGhh
dCB3aGlsZSBtZXJnaW5nPyANCg0KSSBoYXZlIGFscmVhZHkgY2hhbmdlZCB0aGUgbmFtZSwgd2ls
bCBub3cgc2VuZCBhIHYzLA0KYXMgdGhpcyBpcyBhIHRyaXZpYWwgZml4LCBJIGd1ZXNzIHdlIGNh
biB0aGVuIHB1c2ggaXQuDQoNCj4gDQo+ID4gDQo+ID4gU3Rhbg0KPiA+IA0KPiA+ID4gDQo+ID4g
PiBBcGFydCBmcm9tIHRoYXQNCj4gPiA+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiA+ICsNCj4gPiA+ID4g
IHN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyB7DQo+ID4gPiA+ICAJLyogTm9uLU5VTEwgaWYgcG9y
dCBwcmVzZW50LiAqLw0KPiA+ID4gPiAgCWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmln
ICpjaGlsZDsgQEAgLTEyMzIsNw0KPiA+ID4gPiArMTIzNSw4IEBADQo+ID4gPiA+IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlIHsNCj4gPiA+ID4gIAl9IGRyYW1faW5mbzsNCj4gPiA+ID4gDQo+ID4g
PiA+ICAJc3RydWN0IGludGVsX2J3X2luZm8gew0KPiA+ID4gPiAtCQl1bnNpZ25lZCBpbnQgZGVy
YXRlZGJ3WzNdOyAvKiBmb3IgZWFjaCBRR1YNCj4gPiA+ID4gcG9pbnQgKi8NCj4gPiA+ID4gKwkJ
LyogZm9yIGVhY2ggUUdWIHBvaW50ICovDQo+ID4gPiA+ICsJCXVuc2lnbmVkIGludCBkZXJhdGVk
YndbSTkxNV9OVU1fU0FHVl9QT0lOVFNdOw0KPiA+ID4gPiAgCQl1OCBudW1fcWd2X3BvaW50czsN
Cj4gPiA+ID4gIAkJdTggbnVtX3BsYW5lczsNCj4gPiA+ID4gIAl9IG1heF9id1s2XTsNCj4gPiA+
ID4gLS0NCj4gPiA+ID4gMi4xNy4xDQo+ID4gPiANCj4gPiA+IA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
