Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC07463C13
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 21:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27846E0A5;
	Tue,  9 Jul 2019 19:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893A26E0A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 19:43:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 12:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="188934695"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jul 2019 12:43:51 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.14]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 12:43:51 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 13/25] drm/i915/tgl: Add additional ports for Tiger
 Lake
Thread-Index: AQHVNeNDzOUDldLprkSpj2/OYqO8dabDJtUA
Date: Tue, 9 Jul 2019 19:43:50 +0000
Message-ID: <49a7d97b6d556699a83883e9918c99ba7f01ce50.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-14-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-14-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <2EFB40FA4E63D844822CE24F0FD9DB18@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 13/25] drm/i915/tgl: Add additional ports
 for Tiger Lake
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

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0K
PiANCj4gVGhlcmUgYXJlIDIgbmV3IGFkZGl0aW9uYWwgdHlwZUMgcG9ydHMgaW4gVGlnZXIgTGFr
ZSBhbmQgUE9SVC1DIGlzDQo+IG5vdyBhDQo+IGNvbWJvcGh5IHBvcnQuIFRoaXMgcmVzdWx0cyBp
biA2IHR5cGVDIHBvcnRzIGFuZCAzIGNvbWJvcGh5IHBvcnRzLg0KPiBUaGVzZSA2IFRDIHBvcnRz
IGNhbiBiZSBEUCBhbHRlcm5hdGUgbW9kZSwgRFAgb3ZlciB0aHVuZGVyYm9sdCwNCj4gbmF0aXZl
DQo+IERQIG9uIGxlZ2FjeSBEUCBjb25uZWN0b3Igb3IgbmF0aXZlIEhETUkgb24gbGVnYWN5IGNv
bm5lY3Rvci4NCj4gDQo+IHYyOiBSZWJhc2Ugb24gbmV3IG1vZHVsYXIgRklBIGNvZGUgKEx1Y2Fz
KQ0KPiANCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgICAgIHwgMTIgKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCB8ICAyICsrDQo+ICBpbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVu
dC5oICAgICAgICAgICAgICAgICB8ICAyICstDQo+ICBpbmNsdWRlL2RybS9pOTE1X2RybS5oICAg
ICAgICAgICAgICAgICAgICAgICB8ICAzICsrKw0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggMzBlNDg2MDlkYjFkLi5lNzJjZjBiYjQ4YTcgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtNDI5
Nyw2ICs0Mjk3LDE4IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUNCj4gKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkNCj4gIAkJaW50ZWxfZGlnX3BvcnQtPmRk
aV9pb19wb3dlcl9kb21haW4gPQ0KPiAgCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0ZfSU87DQo+
ICAJCWJyZWFrOw0KPiArCWNhc2UgUE9SVF9HOg0KPiArCQlpbnRlbF9kaWdfcG9ydC0+ZGRpX2lv
X3Bvd2VyX2RvbWFpbiA9DQo+ICsJCQlQT1dFUl9ET01BSU5fUE9SVF9ERElfR19JTzsNCj4gKwkJ
YnJlYWs7DQo+ICsJY2FzZSBQT1JUX0g6DQo+ICsJCWludGVsX2RpZ19wb3J0LT5kZGlfaW9fcG93
ZXJfZG9tYWluID0NCj4gKwkJCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9IX0lPOw0KPiArCQlicmVh
azsNCj4gKwljYXNlIFBPUlRfSToNCj4gKwkJaW50ZWxfZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9k
b21haW4gPQ0KPiArCQkJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lfSU87DQo+ICsJCWJyZWFrOw0K
PiAgCWRlZmF1bHQ6DQo+ICAJCU1JU1NJTkdfQ0FTRShwb3J0KTsNCj4gIAl9DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+IGluZGV4IGU3ODFk
ZjQ2M2ZmYS4uMjcwYjFmMThkZWRkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KDQpOaXQ6IE1pc3NpbmcgYWRkIG5ldyBwb3J0cyB0byBw
b3J0X2lkZW50aWZpZXIoKSBvbiB0aGlzIGZpbGUgYnV0IHRoZXkNCmNhbid0IGJlIEhETUkgc28g
aXQgc2hvdWxkIG5vdCBjYXVzZSBhbnkgYnVncywgZXZlbiBiZXR0ZXIgd291bGQgYmUNCm1ha2Ug
dXNlIG9mIHBvcnRfbmFtZSgpDQoNCk90aGVyIHRoYW4gdGhhdDoNCg0KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IEBAIC0xODks
NiArMTg5LDggQEAgZW51bSB0Y19wb3J0IHsNCj4gIAlQT1JUX1RDMiwNCj4gIAlQT1JUX1RDMywN
Cj4gIAlQT1JUX1RDNCwNCj4gKwlQT1JUX1RDNSwNCj4gKwlQT1JUX1RDNiwNCj4gIA0KPiAgCUk5
MTVfTUFYX1RDX1BPUlRTDQo+ICB9Ow0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9j
b21wb25lbnQuaA0KPiBiL2luY2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50LmgNCj4gaW5kZXggZGNi
OTViZDlkZWU2Li41NWMzYjEyMzU4MWIgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVf
Y29tcG9uZW50LmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaA0KPiBAQCAt
MzQsNyArMzQsNyBAQCBlbnVtIGk5MTVfY29tcG9uZW50X3R5cGUgew0KPiAgLyogTUFYX1BPUlQg
aXMgdGhlIG51bWJlciBvZiBwb3J0DQo+ICAgKiBJdCBtdXN0IGJlIHN5bmMgd2l0aCBJOTE1X01B
WF9QT1JUUyBkZWZpbmVkIGk5MTVfZHJ2LmgNCj4gICAqLw0KPiAtI2RlZmluZSBNQVhfUE9SVFMg
Ng0KPiArI2RlZmluZSBNQVhfUE9SVFMgOQ0KPiAgDQo+ICAvKioNCj4gICAqIHN0cnVjdCBpOTE1
X2F1ZGlvX2NvbXBvbmVudCAtIFVzZWQgZm9yIGRpcmVjdCBjb21tdW5pY2F0aW9uDQo+IGJldHdl
ZW4gaTkxNSBhbmQgaGRhIGRyaXZlcnMNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVf
ZHJtLmggYi9pbmNsdWRlL2RybS9pOTE1X2RybS5oDQo+IGluZGV4IDc1MjNlOWE3YjZlMi4uZWIz
MDA2MjM1OWQxIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2RybS9pOTE1X2RybS5oDQo+ICsrKyBi
L2luY2x1ZGUvZHJtL2k5MTVfZHJtLmgNCj4gQEAgLTEwOSw2ICsxMDksOSBAQCBlbnVtIHBvcnQg
ew0KPiAgCVBPUlRfRCwNCj4gIAlQT1JUX0UsDQo+ICAJUE9SVF9GLA0KPiArCVBPUlRfRywNCj4g
KwlQT1JUX0gsDQo+ICsJUE9SVF9JLA0KPiAgDQo+ICAJSTkxNV9NQVhfUE9SVFMNCj4gIH07DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
