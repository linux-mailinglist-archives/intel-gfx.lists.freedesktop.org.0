Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C5C17B3CB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 02:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF8E6EC4C;
	Fri,  6 Mar 2020 01:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114CA6EC4C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 01:32:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 17:32:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,520,1574150400"; d="scan'208";a="439960115"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 05 Mar 2020 17:32:13 -0800
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Mar 2020 17:32:12 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.125]) with mapi id 14.03.0439.000;
 Thu, 5 Mar 2020 17:32:12 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3 3/3] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
Thread-Index: AQHV5sXDYnk1ET1GK0G6lh0J3zoDtqgk3jYAgBaIvgA=
Date: Fri, 6 Mar 2020 01:32:12 +0000
Message-ID: <647f33f4e86eb4edecd856b08d505e248afca1b9.camel@intel.com>
References: <20200219014230.145601-1-jose.souza@intel.com>
 <20200219014230.145601-3-jose.souza@intel.com>
 <20200220172602.GI13686@intel.com>
In-Reply-To: <20200220172602.GI13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <883870AD1AC3EC4EB7D2BFC3300F6A26@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTAyLTIwIGF0IDE5OjI2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRmViIDE4LCAyMDIwIGF0IDA1OjQyOjMwUE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gZEdGWCBoYXZlIGxvY2FsIG1lbW9yeSBzbyBpdCBk
byBub3QgaGF2ZSBhcGVydHVyZSBhbmQgZG8gbm90DQo+ID4gc3VwcG9ydA0KPiA+IENQVSBmZW5j
ZXMgYnV0IGV2ZW4gZm9yIGlHRlggaXQgaGF2ZSBhIHNtYWxsIG51bWJlciBvZiBmZW5jZXMuDQo+
ID4gDQo+ID4gQXMgcmVwbGFjZW1lbnQgZm9yIGZlbmNlcyB0byB0cmFjayBmcm9udGJ1ZmZlciBt
b2RpZmljYXRpb25zIGJ5IENQVQ0KPiA+IHdlIGhhdmUgYSBzb2Z0d2FyZSB0cmFja2luZyB0aGF0
IGlzIGFscmVhZHkgaW4gdXNlZCBieSBGQkMgYW5kIFBTUi4NCj4gPiBQU1IgZG9uJ3Qgc3VwcG9y
dCBmZW5jZXMgc28gaXQgc2hvd3MgdGhhdCB0aGlzIHRyYWNraW5nIGlzDQo+ID4gcmVsaWFibGUu
DQo+ID4gDQo+ID4gU28gbGV0cyBtYWtlIGZlbmNlcyBhIG5pY2UtdG8taGF2ZSB0byBhY3RpdmF0
ZSBGQkMgZm9yIEdFTjkrLCB0aGlzDQo+ID4gd2lsbCBhbGxvdyB1cyB0byBlbmFibGUgRkJDIGZv
ciBkR0ZYcyBhbmQgaUdGWHMgZXZlbiB3aGVuIHRoZXJlIGlzDQo+ID4gbm8NCj4gPiBhdmFpbGFi
bGUgZmVuY2UuDQo+ID4gDQo+ID4gV2UgZG8gbm90IHNldCBmZW5jZXMgdG8gcm90YXRlZCBwbGFu
ZXMgYnV0IEZCQyBvbmx5IGhhdmUNCj4gPiByZXN0cmljdGlvbnMNCj4gPiBhZ2FpbnN0IDE2YnBw
LCBzbyBhZGRpbmcgaXQgaGVyZS4NCj4gPiANCj4gPiBBbHNvIGFkZGluZyBhIG5ldyBjaGVjayBm
b3IgdGhlIHRpbGluZyBmb3JtYXQsIGZlbmNlcyBhcmUgb25seSBzZXQNCj4gPiB0byBYIGFuZCBZ
IHRpbGVkIHBsYW5lcyBidXQgYWdhaW4gRkJDIGRvbid0IGhhdmUgYW55IHJlc3RyaWN0aW9ucw0K
PiA+IGFnYWluc3QgdGlsaW5nIHNvIGFkZGluZyBsaW5lYXIgYXMgc3VwcG9ydGVkIGFzIHdlbGws
IG90aGVyIGZvcm1hdHMNCj4gPiBzaG91bGQgYmUgYWRkZWQgYWZ0ZXIgdGVzdGVkIGJ1dCBJR1Qg
b25seSBzdXBwb3J0cyBkcmF3aW5nIGluIHRoc2UNCj4gPiAzIGZvcm1hdHMuDQo+ID4gDQo+ID4g
aW50ZWxfZmJjX2h3X3RyYWNraW5nX2NvdmVyc19zY3JlZW4oKSBtYXliZSBjYW4gYWxzbyBoYXZl
IHRoZSBzYW1lDQo+ID4gdHJlYXRtZW50IGFzIGZlbmNlcyBidXQgQlNwZWMgaXMgbm90IGNsZWFy
IGlmIHRoZSBzaXplIGxpbWl0YXRpb24NCj4gPiBpcw0KPiA+IGZvciBoYXJkd2FyZSB0cmFja2lu
ZyBvciBnZW5lcmFsIHVzZSBvZiBGQkMgYW5kIEkgZG9uJ3QgaGF2ZSBhIDVLDQo+ID4gZGlzcGxh
eSB0byB0ZXN0IGl0LCBzbyBrZWVwaW5nIGFzIGlzIGZvciBzYWZldHkuDQo+ID4gDQo+ID4gdjI6
DQo+ID4gLSBBZGRlZCB0aWxpbmcgYW5kIHBpeGVsIGZvcm1hdCByb3RhdGlvbiBjaGVja3MNCj4g
PiAtIENoYW5nZWQgdGhlIEdFTiB2ZXJzaW9uIG5vdCByZXF1aXJpbmcgZmVuY2VzIHRvIDExIGZy
b20gOSwgRERYDQo+ID4gbmVlZHMgc29tZSBjaGFuZ2VzIGJ1dCBpdCBkb24ndCBoYXZlIHN1cHBv
cnQgZm9yIEdFTjExKw0KPiA+IA0KPiA+IHYzOg0KPiA+IC0gQ2hhbmdlZCBiYWNrIHRvIEdFTjkr
DQo+ID4gLSBNb3ZlZCBHRU4gdGVzdCB0byBpbnNpZGUgb2YgdGlsaW5nX2lzX3ZhbGlkKCkNCj4g
PiANCj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+DQo+ID4g
Q2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPg0K
PiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIHwgNDUNCj4gPiArKysrKysrKysrKysrKysrKysrKy0tLS0NCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICAxICsNCj4gPiAgMiBmaWxlcyBjaGFu
Z2VkLCAzOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggMWQ3NmUzNjQ2
YTI1Li5hMGQxZDY2MWEwMDYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMNCj4gPiBAQCAtNTg1LDcgKzU4NSw3IEBAIHN0YXRpYyBib29sIHN0cmlk
ZV9pc192YWxpZChzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAg
fQ0KPiA+ICANCj4gPiAgc3RhdGljIGJvb2wgcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9wcml2LA0KPiA+IC0JCQkJICB1MzIgcGl4ZWxfZm9y
bWF0KQ0KPiA+ICsJCQkJICB1MzIgcGl4ZWxfZm9ybWF0LCB1bnNpZ25lZCBpbnQNCj4gPiByb3Rh
dGlvbikNCj4gPiAgew0KPiA+ICAJc3dpdGNoIChwaXhlbF9mb3JtYXQpIHsNCj4gPiAgCWNhc2Ug
RFJNX0ZPUk1BVF9YUkdCODg4ODoNCj4gPiBAQCAtNTk5LDYgKzU5OSw5IEBAIHN0YXRpYyBib29s
IHBpeGVsX2Zvcm1hdF9pc192YWxpZChzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gPiAgCQkvKiBXYUZiY09ubHkxdG8xUmF0aW86Y3RnICovDQo+ID4gIAkJaWYgKElT
X0c0WChkZXZfcHJpdikpDQo+ID4gIAkJCXJldHVybiBmYWxzZTsNCj4gPiArCQlpZiAoKHJvdGF0
aW9uICYgKERSTV9NT0RFX1JPVEFURV85MCB8DQo+ID4gRFJNX01PREVfUk9UQVRFXzI3MCkpICYm
DQo+ID4gKwkJICAgIElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkNCj4gPiArCQkJcmV0dXJuIGZh
bHNlOw0KPiANCj4gV291bGQgc3RpbGwgd291bGQgcHJlZmVyIGEgcm90YXRpb25zX2lzX3ZhbGlk
KCkgb3Igc29tZSBzdWNoIHRoaW5nLg0KDQpMaWtlIHRoaXM/DQoNCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQpiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCmluZGV4IDVlMzVjODk0YmRmOS4uNjkyZWRkNDViNzY5
IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KQEAgLTYwMCwx
NSArNjAwLDIxIEBAIHN0YXRpYyBib29sIHBpeGVsX2Zvcm1hdF9pc192YWxpZChzdHJ1Y3QNCmRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KICAgICAgICAgICAgICAgIC8qIFdhRmJjT25seTF0
bzFSYXRpbzpjdGcgKi8NCiAgICAgICAgICAgICAgICBpZiAoSVNfRzRYKGRldl9wcml2KSkNCiAg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCi0gICAgICAgICAgICAgICBpZiAo
KHJvdGF0aW9uICYgKERSTV9NT0RFX1JPVEFURV85MCB8DQpEUk1fTU9ERV9ST1RBVEVfMjcwKSkg
JiYNCi0gICAgICAgICAgICAgICAgICAgSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQ0KLSAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KICAgICAgICAgICAgICAgIHJldHVybiB0
cnVlOw0KICAgICAgICBkZWZhdWx0Og0KICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCiAg
ICAgICAgfQ0KIH0NCg0KK3N0YXRpYyBib29sIHJvdGF0aW9uc19pc192YWxpZChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dTMyIHBpeGVsX2Zvcm1hdCwgdW5zaWduZWQgaW50IHJvdGF0aW9uKQ0KK3sNCisgICAgICAgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSAmJiBwaXhlbF9mb3JtYXQgPT0NCkRSTV9GT1JNQVRf
UkdCNTY1ICYmDQorICAgICAgICAgICByb3RhdGlvbiAmIChEUk1fTU9ERV9ST1RBVEVfOTAgfCBE
Uk1fTU9ERV9ST1RBVEVfMjcwKSkNCisgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7DQorICAg
ICAgIHJldHVybiB0cnVlOw0KK30NCisNCiAvKg0KICAqIEZvciBzb21lIHJlYXNvbiwgdGhlIGhh
cmR3YXJlIHRyYWNraW5nIHN0YXJ0cyBsb29raW5nIGF0IHdoYXRldmVyDQp3ZQ0KICAqIHByb2dy
YW1tZWQgYXMgdGhlIGRpc3BsYXkgcGxhbmUgYmFzZSBhZGRyZXNzIHJlZ2lzdGVyLiBJdCBkb2Vz
IG5vdA0KbG9vayBhdA0KQEAgLTgxMCw2ICs4MTYsMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJj
X2Nhbl9hY3RpdmF0ZShzdHJ1Y3QNCmludGVsX2NydGMgKmNydGMpDQogICAgICAgICAgICAgICAg
cmV0dXJuIGZhbHNlOw0KICAgICAgICB9DQoNCisgICAgICAgaWYgKCFyb3RhdGlvbnNfaXNfdmFs
aWQoZGV2X3ByaXYsIGNhY2hlLT5mYi5mb3JtYXQtPmZvcm1hdCwNCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY2FjaGUtPnBsYW5lLnJvdGF0aW9uKSkgew0KKyAgICAgICAgICAgICAg
IGZiYy0+bm9fZmJjX3JlYXNvbiA9ICJwbGFuZSByb3RhdGlvbiBpcyBpbnZhbGlkIjsNCisgICAg
ICAgICAgICAgICByZXR1cm4gZmFsc2U7DQorICAgICAgIH0NCisNCiAgICAgICAgaWYgKGNhY2hl
LT5wbGFuZS5waXhlbF9ibGVuZF9tb2RlICE9IERSTV9NT0RFX0JMRU5EX1BJWEVMX05PTkUNCiYm
DQogICAgICAgICAgICBjYWNoZS0+ZmIuZm9ybWF0LT5oYXNfYWxwaGEpIHsNCiAgICAgICAgICAg
ICAgICBmYmMtPm5vX2ZiY19yZWFzb24gPSAicGVyLXBpeGVsIGFscGhhIGJsZW5kaW5nIGlzDQpp
bmNvbXBhdGlibGUgd2l0aCBGQkMiOw0KDQoNCj4gDQo+ID4gIAkJcmV0dXJuIHRydWU7DQo+ID4g
IAlkZWZhdWx0Og0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiBAQCAtNjM5LDYgKzY0MiwyMiBA
QCBzdGF0aWMgYm9vbA0KPiA+IGludGVsX2ZiY19od190cmFja2luZ19jb3ZlcnNfc2NyZWVuKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ICAJcmV0dXJuIGVmZmVjdGl2ZV93IDw9IG1heF93
ICYmIGVmZmVjdGl2ZV9oIDw9IG1heF9oOw0KPiA+ICB9DQo+ID4gIA0KPiA+ICtzdGF0aWMgYm9v
bCB0aWxpbmdfaXNfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+
ICsJCQkgICAgdWludDY0X3QgbW9kaWZpZXIpDQo+ID4gK3sNCj4gPiArCXN3aXRjaCAobW9kaWZp
ZXIpIHsNCj4gPiArCWNhc2UgRFJNX0ZPUk1BVF9NT0RfTElORUFSOg0KPiA+ICsJCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDkpDQo+ID4gKwkJCXJldHVybiB0cnVlOw0KPiANCj4gSGF2ZSB3
ZSBjaGVja2VkIHRoYXQgZWcuIGZiY29uIGN1cnNvciBzdGlsbCBibGlua3MgY29ycmVjdGx5DQo+
IHdpdGggRkJDIGFjdGl2ZSBhbmQgYWxsPw0KDQpIdW0gb24gZmJjb24gRkJDIGlzIGVuYWJsZWQg
YnV0IGl0IG5ldmVyIGNvbXByZXNzLCBJR1QgdGVzdHMgd2l0aA0KZmVuY2VzIGNvbXBsZXRlIGRp
c2FibGVzIGFyZSB3b3JraW5nIGZpbmUsIHNjcmVlbiBpcyB1cGRhdGVkIHdoZW4gdGVzdHMNCmFz
a3MgdG8gd2l0aCBGQkMgZW5hYmxlZCBhbmQgY29tcHJlc3NpbmcuDQoNCkkgd2lsbCBkZWJ1ZyBm
YmNvbiBhIGxpdHRsZSBtb3JlIHRvIHVuZGVyc3RhbmQgd2h5IGl0IGlzIG5ldmVyDQpjb21wcmVz
c2luZy4gDQoNCj4gDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWF9USUxFRDoNCj4gPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6DQo+ID4g
KwkJcmV0dXJuIHRydWU7DQo+ID4gKwlkZWZhdWx0Og0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4g
PiArCX0NCj4gPiArfQ0KPiA+ICsNCj4gPiAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3VwZGF0ZV9z
dGF0ZV9jYWNoZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gPiAgCQkJCQkgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJCQkgY29uc3Qg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ID4gKnBsYW5lX3N0YXRlKQ0KPiA+IEBAIC02NzIs
NiArNjkxLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZShzdHJ1
Y3QNCj4gPiBpbnRlbF9jcnRjICpjcnRjLA0KPiA+ICANCj4gPiAgCWNhY2hlLT5mYi5mb3JtYXQg
PSBmYi0+Zm9ybWF0Ow0KPiA+ICAJY2FjaGUtPmZiLnN0cmlkZSA9IGZiLT5waXRjaGVzWzBdOw0K
PiA+ICsJY2FjaGUtPmZiLm1vZGlmaWVyID0gZmItPm1vZGlmaWVyOw0KPiA+ICANCj4gPiAgCWRy
bV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBwbGFuZV9zdGF0ZS0+ZmxhZ3MgJg0KPiA+IFBMQU5F
X0hBU19GRU5DRSAmJg0KPiA+ICAJCSAgICAhcGxhbmVfc3RhdGUtPnZtYS0+ZmVuY2UpOw0KPiA+
IEBAIC03MjAsMjMgKzc0MCwzMyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRl
KHN0cnVjdA0KPiA+IGludGVsX2NydGMgKmNydGMpDQo+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+
ICAJfQ0KPiA+ICANCj4gPiAtCS8qIFRoZSB1c2Ugb2YgYSBDUFUgZmVuY2UgaXMgbWFuZGF0b3J5
IGluIG9yZGVyIHRvIGRldGVjdA0KPiA+IHdyaXRlcw0KPiA+IC0JICogYnkgdGhlIENQVSB0byB0
aGUgc2Nhbm91dCBhbmQgdHJpZ2dlciB1cGRhdGVzIHRvIHRoZSBGQkMuDQo+ID4gKwkvKiBUaGUg
dXNlIG9mIGEgQ1BVIGZlbmNlIGlzIG9uZSBvZiB0d28gd2F5cyB0byBkZXRlY3Qgd3JpdGVzDQo+
ID4gYnkgdGhlDQo+ID4gKwkgKiBDUFUgdG8gdGhlIHNjYW5vdXQgYW5kIHRyaWdnZXIgdXBkYXRl
cyB0byB0aGUgRkJDLg0KPiA+ICsJICoNCj4gPiArCSAqIFRoZSBvdGhlciBtZXRob2QgaXMgYnkg
c29mdHdhcmUgdHJhY2tpbmcoc2VlDQo+ID4gKwkgKiBpbnRlbF9mYmNfaW52YWxpZGF0ZS9mbHVz
aCgpKSwgaXQgd2lsbCBtYW51YWxseSBub3RpZnkgRkJDDQo+ID4gYW5kIG51a2UNCj4gPiArCSAq
IHRoZSBjdXJyZW50IGNvbXByZXNzZWQgYnVmZmVyIGFuZCByZWNvbXByZXNzIGl0Lg0KPiA+ICAJ
ICoNCj4gPiAgCSAqIE5vdGUgdGhhdCBpcyBwb3NzaWJsZSBmb3IgYSB0aWxlZCBzdXJmYWNlIHRv
IGJlIHVubWFwcGFibGUNCj4gPiAoYW5kDQo+ID4gLQkgKiBzbyBoYXZlIG5vIGZlbmNlIGFzc29j
aWF0ZWQgd2l0aCBpdCkgZHVlIHRvIGFwZXJ0dXJlDQo+ID4gY29uc3RhaW50cw0KPiA+ICsJICog
c28gaGF2ZSBubyBmZW5jZSBhc3NvY2lhdGVkIHdpdGggaXQpIGR1ZSB0byBhcGVydHVyZQ0KPiA+
IGNvbnN0cmFpbnRzDQo+ID4gIAkgKiBhdCB0aGUgdGltZSBvZiBwaW5uaW5nLg0KPiA+ICAJICoN
Cj4gPiAgCSAqIEZJWE1FIHdpdGggOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiB3ZSBzaG91bGQgdXNl
IHRoZSBmZW5jZSBvbg0KPiA+ICAJICogdGhlIG5vcm1hbCBHVFQgdmlldyAodGhlIHJvdGF0ZWQg
dmlldyBkb2Vzbid0IGV2ZW4gaGF2ZSBhDQo+ID4gIAkgKiBmZW5jZSkuIFdvdWxkIG5lZWQgY2hh
bmdlcyB0byB0aGUgRkJDIGZlbmNlIFkgb2Zmc2V0IGFzDQo+ID4gd2VsbC4NCj4gPiAtCSAqIEZv
ciBub3cgdGhpcyB3aWxsIGVmZmVjaXZlbHkgZGlzYWJsZSBGQkMgd2l0aCA5MC8yNzAgZGVncmVl
DQo+ID4gKwkgKiBGb3Igbm93IHRoaXMgd2lsbCBlZmZlY3RpdmVseSBkaXNhYmxlIEZCQyB3aXRo
IDkwLzI3MCBkZWdyZWUNCj4gPiAgCSAqIHJvdGF0aW9uLg0KPiA+ICAJICovDQo+ID4gLQlpZiAo
Y2FjaGUtPmZlbmNlX2lkIDwgMCkgew0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA5
ICYmIGNhY2hlLT5mZW5jZV9pZCA8IDApIHsNCj4gPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAi
ZnJhbWVidWZmZXIgbm90IHRpbGVkIG9yIGZlbmNlZCI7DQo+ID4gIAkJcmV0dXJuIGZhbHNlOw0K
PiA+ICAJfQ0KPiA+ICsNCj4gPiArCWlmICghdGlsaW5nX2lzX3ZhbGlkKGRldl9wcml2LCBjYWNo
ZS0+ZmIubW9kaWZpZXIpKSB7DQo+ID4gKwkJZmJjLT5ub19mYmNfcmVhc29uID0gInRpbGluZyB1
bnN1cHBvcnRlZCI7DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAg
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDw9IDQgJiYgIUlTX0c0WChkZXZfcHJpdikgJiYNCj4g
PiAgCSAgICBjYWNoZS0+cGxhbmUucm90YXRpb24gIT0gRFJNX01PREVfUk9UQVRFXzApIHsNCj4g
PiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAicm90YXRpb24gdW5zdXBwb3J0ZWQiOw0KPiA+IEBA
IC03NDgsNyArNzc4LDggQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1
Y3QNCj4gPiBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiAgCX0N
Cj4gPiAgDQo+ID4gLQlpZiAoIXBpeGVsX2Zvcm1hdF9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUt
PmZiLmZvcm1hdC0+Zm9ybWF0KSkgDQo+ID4gew0KPiA+ICsJaWYgKCFwaXhlbF9mb3JtYXRfaXNf
dmFsaWQoZGV2X3ByaXYsIGNhY2hlLT5mYi5mb3JtYXQtPmZvcm1hdCwNCj4gPiArCQkJCSAgIGNh
Y2hlLT5wbGFuZS5yb3RhdGlvbikpIHsNCj4gPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAicGl4
ZWwgZm9ybWF0IGlzIGludmFsaWQiOw0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiAgCX0NCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IGluZGV4IDMzMzBiNTM4ZDM3OS4uYmY4
ODY2M2Q4MjE3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gQEAgLTQx
Myw2ICs0MTMsNyBAQCBzdHJ1Y3QgaW50ZWxfZmJjIHsNCj4gPiAgCQlzdHJ1Y3Qgew0KPiA+ICAJ
CQljb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICpmb3JtYXQ7DQo+ID4gIAkJCXVuc2lnbmVk
IGludCBzdHJpZGU7DQo+ID4gKwkJCXU2NCBtb2RpZmllcjsNCj4gPiAgCQl9IGZiOw0KPiA+ICAJ
CXUxNiBnZW45X3dhX2NmYl9zdHJpZGU7DQo+ID4gIAkJczggZmVuY2VfaWQ7DQo+ID4gLS0gDQo+
ID4gMi4yNS4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
