Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A4D5C5A9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 00:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE1089A4B;
	Mon,  1 Jul 2019 22:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B9989A4B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 22:26:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 15:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,441,1557212400"; d="scan'208";a="165967612"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 01 Jul 2019 15:26:37 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jul 2019 15:26:37 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.152]) with mapi id 14.03.0439.000;
 Mon, 1 Jul 2019 15:26:36 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
Thread-Index: AQHVJvMVU9N/RGQoqEq4aTOv8rPaoaakp28AgACdgwCABoUugIAGoTKAgAR0NYA=
Date: Mon, 1 Jul 2019 22:26:36 +0000
Message-ID: <8e20188439f9dcb8312ddaedb8582ffac386548b.camel@intel.com>
References: <20190619230222.4346-1-jose.souza@intel.com>
 <20190619230222.4346-3-jose.souza@intel.com> <878stwu12j.fsf@intel.com>
 <a0e7424a0c7e856c79fc3a05959f475b9fe67f8b.camel@intel.com>
 <5263d1cfbc1fe95596dfa47b2e794e298fd670fa.camel@intel.com>
 <ee78f346f2f98c1856764f8bc38a771cde8cbe97.camel@intel.com>
In-Reply-To: <ee78f346f2f98c1856764f8bc38a771cde8cbe97.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <0F1479887F06F64DB021D789E665EF36@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
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

T24gRnJpLCAyMDE5LTA2LTI4IGF0IDE5OjI1IC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdy
b3RlOg0KPiBPbiBNb24sIDIwMTktMDYtMjQgYXQgMTQ6MTEgLTA3MDAsIFNvdXphLCBKb3NlIHdy
b3RlOg0KPiA+ID4gPiA+ICsjZGVmaW5lIF9IU1dfRURQX1BTUl9CQVNFICAgICAgICAgICAgICAg
ICAgICAgICAgMHg2NDgwMA0KPiA+ID4gPiA+ICsjZGVmaW5lIF9TUkRfQ1RMX0EgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgMHg2MDgwMA0KPiA+ID4gPiA+ICsjZGVmaW5lIF9TUkRfQ1RM
X0VEUCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMHg2ZjgwMA0KPiA+ID4gPiA+ICsjZGVm
aW5lIF9IU1dfUFNSX0FESihyZWcpICAgICAgICAgICAgICAgICAgICAgICAgKChyZWcpIC0NCj4g
PiA+ID4gPiBfU1JEX0NUTF9BICsNCj4gPiA+ID4gPiBfSFNXX0VEUF9QU1JfQkFTRSkNCj4gPiA+
ID4gPiArI2RlZmluZSBfUFNSX0FESih0cmFuLA0KPiA+ID4gPiA+IHJlZykgICAgICAgICAgICAg
ICAgICAgICAgKElTX0hBU1dFTEwoZGV2DQo+ID4gPiA+ID4gX3ByaXYpID8gX0hTV19QU1JfQURK
KHJlZykgOiBfVFJBTlMyKHRyYW4sIHJlZykpDQo+ID4gPiA+ID4gKyNkZWZpbmUNCj4gPiA+ID4g
PiBFRFBfUFNSX0NUTCh0cmFuKSAgICAgICAgICAgICAgICAgICAgICAgIF9NTUlPKF9QU1JfQURK
KA0KPiA+ID4gPiA+IHRyYW4sDQo+ID4gPiA+ID4gX1NSRF9DVExfQSkpDQo+ID4gPiA+IA0KPiA+
ID4gPiBUaGVyZSBhcmUgY3VycmVudGx5IHRocmVlIGluc3RhbmNlcyBvZiBwbGF0Zm9ybS9nZW4g
Y2hlY2tzIGluDQo+ID4gPiA+IGk5MTVfcmVnLmguIFRoZXkgYXJlIHRoZSBleGNlcHRpb24sIGFu
ZCB0aGV5J3JlIGluIGluZGl2aWR1YWwNCj4gPiA+ID4gbWFjcm9zDQo+ID4gPiA+IHRoYXQgYXJl
bid0IGV2ZW4gcmVnaXN0ZXIgb2Zmc2V0IGRlZmluaXRpb25zIGxldCBhbG9uZSBoZWxwZXJzDQo+
ID4gPiA+IHRoYXQNCj4gPiA+ID4gZ2V0DQo+ID4gPiA+IHByb2xpZmVyYXRlZCB0byBzZXZlcmFs
IG90aGVyIG1hY3Jvcy4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgY2hhbmdlIGhlcmUgaXMgcXVp
dGUgYSBiaWcgcHJlY2VkZW50IGluIHRoYXQgcmVnYXJkLCBhbmQNCj4gPiA+ID4gbm90DQo+ID4g
PiA+IHRvDQo+ID4gPiA+IGJlDQo+ID4gPiA+IGRvbmUgbGlnaHRseS4gVXN1YWxseSB0aGUgY2Fz
ZSBpcyBvdGhlcnMgd2lsbCBmb2xsb3cgc3VpdCwgc28NCj4gPiA+ID4gdGhpcw0KPiA+ID4gPiBp
cw0KPiA+ID4gPiBub3QganVzdCBhYm91dCB0aGlzIG9uZSBpbnN0YW5jZS4gSXQncyBhYm91dCBk
ZWNpZGluZyB3aGV0aGVyDQo+ID4gPiA+IHRoaXMNCj4gPiA+ID4gaXMNCj4gPiA+ID4gdGhlIGRp
cmVjdGlvbiB3ZSB3YW50IHRvIHRha2UuIEhvdyBmYXIgYXJlIHdlIHByZXBhcmVkIHRvIGdvDQo+
ID4gPiA+IGFuZA0KPiA+ID4gPiBob3cNCj4gPiA+ID4gZG8NCj4gPiA+ID4gd2Ugc3RvcCB0aGVy
ZT8NCj4gPiA+ID4gDQo+ID4gPiA+IFRoZXJlJ3MgcmVhbGx5IG5vIHdheSB0byBzZXQgdGhlIHBz
ci0+dHJhbnNjb2RlciBzdWNoIG9uIEhTVw0KPiA+ID4gPiB0aGF0DQo+ID4gPiA+IGl0DQo+ID4g
PiA+IHdvdWxkIHdvcmsgd2l0aCBNTUlPX1RSQU5TMigpPw0KPiA+ID4gDQo+ID4gPiBJJ20gZ29p
bmcgdG8gdGhpbmsgYWJvdXQgYnV0IHJpZ2h0IG5vdyB0aGUgb25seSBvdGhlciBvcHRpb24gdGhh
dA0KPiA+ID4gY29tZXMNCj4gPiA+IGluIG15IG1pbmQgaXMgdG8gaGF2ZSB0aGUgdHJhbnNjb2Rl
ciBvZmZzZXQgYXMgbWFjcm8gcGFyYW1ldGVyOg0KPiA+ID4gDQo+ID4gPiAjZGVmaW5lIF9TUkRf
Q1RMIDB4ODAwDQo+ID4gPiAjZGVmaW5lIEVEUF9QU1JfQ1RMKHRyYW5zKSBfTU1JTyh0cmFucyAr
IF9TUkRfQ1RMKQ0KPiA+ID4gDQo+ID4gPiBCdXQgd2Ugd291bGQgbG9zZSB0aGUgZnVsbCBvZmZz
ZXQgYWRkcmVzcyBvZiBQU1IgcmVnaXN0ZXJzLg0KPiA+IA0KPiA+IFRoaXMgaXMgdGhlIG9ubHkg
b3RoZXIgZ29vZCBvcHRpb24gdGhhdCBJIGNhbiB0aGluayBhYm91dC4NCj4gPiANCj4gPiBBbnkg
b3RoZXIgaWRlYSBESz8NCj4gTm8gZ29vZCBvbmVzIHVuZm9ydHVuYXRlbHkuIFRoaXMgaXMgdGhl
IHNpbXBsZXN0IG9uZSBJIGNvdWxkIHRoaW5rIG9mDQo+IA0KPiBpbnRlbF9wc3JfaW5pdCgpDQo+
IHsNCj4gLi4uDQo+IGlmKElTX0hBU1dFTEwoZGV2X3ByaXYpKQ0KPiAJZGV2X3ByaXYtPnBzci5o
c3dfYWRqdXN0ID0gX1NSRF9DVExfRURQIC0gX0hTV19FRFBfUFNSX0JBU0U7IA0KPiAuLi4NCj4g
fQ0KPiANCj4gDQo+ICNkZWZpbmUgX01NSU9fUFNSKHRyYW4sIHJlZykgX01NSU9fVFJBTlMyKHRy
YW4sIHJlZyAtDQo+IGRldl9wcml2LnBzci5oc3dfYWRqdXN0KQ0KPiAjZGVmaW5lIEVEUF9QU1Jf
Q1RMKHRyYW4pIF9NTUlPX1BTUih0cmFuLCBfU1JEX0NUTF9BKQ0KPiANCj4gDQo+IHNob3VsZCB3
b3JrIGJlY2F1c2UgdHJhbiA9PSBUUkFOU0NPREVSX0VEUCBmb3IgSFNXDQoNCg0KVGhlIHByb2Js
ZW0gd2l0aCB0aGlzIHN1Z2dlc3Rpb24gaXMgdGhhdCBpdCB3b3VsZCByZXF1aXJlIG1vcmUgY2hh
bmdlcw0KdG8gc3VwcG9ydCBtdWx0aXBsZSBQU1IgaW5zdGFuY2VzIGluIGZ1dHVyZSwgdW5sZXNz
IHdlIG1ha2UgaXQgcmVxdWlyZWQNCnRvIGhhdmUgc3RydWN0IGludGVsX3BzciAqcHNyIGRlZmlu
ZWQgbGlrZSBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KKmRldl9wcml2IGlzIHJlcXVpcmVkIGJ5
IEk5MTVfV1JJVEUvUkVBRCgpLg0KDQoNCiNkZWZpbmUgX01NSU9fUFNSKHRyYW4sIHJlZykgX01N
SU9fVFJBTlMyKHRyYW4sIHJlZyAtIHBzci0+aHN3X2FkanVzdCkNCg0KSWYgY2hvc2VuIHRoaXMg
YXBwcm9hY2ggd2UgY291bGQgYWxyZWFkeSBjb21wbGV0ZSByZW1vdmUgdGhlIHRyYW4NCnBhcmFt
ZXRlcjoNCg0KI2RlZmluZSBfTU1JT19QU1IocmVnKSBfTU1JT19UUkFOUzIocHNyLT50cmFuc2Nv
ZGVyLCByZWcgLSBwc3ItDQo+aHN3X2FkanVzdCkNCg0KIw0KDQpTbyB3ZSBoYXZlIDQgb3B0aW9u
czoNCg0KMSAtIFRoZSBvbmUgaW1wbGVtZW50ZWQgaW4gdGhpcyBwYXRjaA0KDQoyIC0gT2Zmc2V0
IGFzIHBhcmFtZXRlcg0KCSNkZWZpbmUgX1NSRF9DVEwgMHg4MDANCgkjZGVmaW5lIEVEUF9QU1Jf
Q1RMKHRyYW5zX29mZnNldCkgX01NSU8odHJhbnNfb2Zmc2V0ICsNCl9TUkRfQ1RMKQ0KDQozIC0g
REtzIHN1Z2dlc3Rpb24gd2l0aCBvbmUgb2YgdGhlIHN1Z2dlc3Rpb25zIGFib3ZlIHRvIHN1cHBv
cnQNCm11bHRpcGxlIFBTUiBpbnN0YW5jZXMNCg0KNCAtIEhhdmUgSFNXIFBTUiBzcGVjaWZpYyBt
YWNyb3MgYW5kIGhhdmUgc2V2ZXJhbCBpZiAoSVNfSEFTV0VMTCgpKQ0Kc3ByZWFkIHRvIFBTUiBj
b2RlDQoNCg0KTXkgdm90ZSBpcyBvcHRpb24gMS4NCg0KUGxlYXNlIGxldCBtZSBrbm93IHlvdXIg
dGhvdWdodHM/DQoJDQoNCj4gDQo+IA0KPiAtREsNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
