Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9732CA767
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 16:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5527989D52;
	Tue,  1 Dec 2020 15:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E4E589D52
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 15:51:20 +0000 (UTC)
IronPort-SDR: k96Al3P5naeOYuOQxnSUr9RjbopbTxrlET7QwjVG/afHLE2zf/HfcAmATHDXVooM4saxtBzfjd
 kahPj8qvVVQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="159903411"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="159903411"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 07:51:19 -0800
IronPort-SDR: kV7F9nIDchlw26X+khEqdS18XHYT/9gDKE6aqJrm8OWk0cFWJIsPmZbmA1xt059MzuxOqB8Cse
 qA48zx5zabLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="405162785"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 01 Dec 2020 07:51:18 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 07:51:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 21:21:13 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 07:51:11 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWx+nb0u4H3ZAS8kaebQ6z9eNofani6fEA
Date: Tue, 1 Dec 2020 15:51:11 +0000
Message-ID: <c15b78267f9c82e2eb4d6ff9989f013c51b4c4f7.camel@intel.com>
References: <20201201143042.22188-1-uma.shankar@intel.com>
 <20201201143042.22188-2-uma.shankar@intel.com>
In-Reply-To: <20201201143042.22188-2-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <4570FDBAF18FC841BA33F669E0D017D0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTEyLTAxIGF0IDIwOjAwICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4g
VGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVuYWJsZQ0K
PiBGQkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRpb24gZnJvbSBoYXJkd2FyZSBpcyB0
bw0KPiBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQuDQo+IA0KPiBCc3BlYzogNTA0MjIg
SFNEOiAxNDAxMDI2MDAwMg0KPiANCj4gdjI6IEFkZGVkIHBzcjIgZW5hYmxlZCBjaGVjayBmcm9t
IGNydGNfc3RhdGUgKEFuc2h1bWFuKQ0KPiBBZGRlZCBCc3BlYyBsaW5rIGFuZCBIU0QgcmVmZXJu
ZWNlcyAoSm9zZSkNCj4gDQo+IHYzOiBNb3ZlZCB0aGUgbG9naWMgdG8gZGlzYWJsZSBmYmMgdG8g
aW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZQ0KPiBhbmQgcmVtb3ZlZCB0aGUgY3J0Yy0+Y29u
ZmlnIHVzYWdlcywgYXMgcGVyIFZpbGxlJ3MgcmVjb21tZW5kYXRpb24uDQo+IA0KPiB2NDogSW50
cm9kdWNlZCBhIHZhcmlhYmxlIGluIGZiYyBzdGF0ZV9jYWNoZSBpbnN0ZWFkIG9mIHRoZSBlYXJs
aWVyDQo+IHBsYW5lLnZpc2libGUgV0EsIGFzIHN1Z2dlc3RlZCBieSBKb3NlLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gLS0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDI5ICsrKysrKysr
KysrKysrKysrKysrKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgfCAgMSArDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggYTViMDcy
ODE2YTdiLi5mZjJmMmMwMGExMGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiBAQCAtNzAwLDcgKzcwMCwyMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9m
YmNfdXBkYXRlX3N0YXRlX2NhY2hlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiDCoAlzdHJ1
Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlICpjYWNoZSA9ICZmYmMtPnN0YXRlX2NhY2hlOw0KPiDC
oAlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsNCj4gwqAN
Cj4gDQo+IA0KPiANCj4gKwlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BzcjIpDQo+ICsJCWNhY2hlLT5w
c3IyX2FjdGl2ZSA9IHRydWU7DQo+ICsJZWxzZQ0KPiArCQljYWNoZS0+cHNyMl9hY3RpdmUgPSBm
YWxzZTsNCg0KY2FjaGUtPnBzcjJfYWN0aXZlID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjI7DQoNCg0K
PiArDQo+ICsJLyoNCj4gKwkgKiBUaWdlcmxha2UgaXMgbm90IHN1cHBvcnRpbmcgRkJDIHdpdGgg
UFNSMi4NCj4gKwkgKiBSZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24g
ZGlzYWJsZWQNCj4gKwkgKiBCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiArCSAqLw0K
PiArCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpICYmIGNhY2hlLT5wc3IyX2FjdGl2ZSkNCj4g
KwkJcmV0dXJuOw0KDQoNCkhlcmUgeW91IHNob3VsZCBvbmx5IHNldCBwc3IyX2FjdGl2ZSwgYWRk
IGl0IHRvIHRoZSBib3R0b20gb2YgaW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZS4NClRoZSBj
aGVjayBzaG91bGQgb25seSBiZSBkb25lIGluIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoKS4NCg0K
PiArDQo+IMKgCWNhY2hlLT5wbGFuZS52aXNpYmxlID0gcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJs
ZTsNCj4gKw0KPiDCoAlpZiAoIWNhY2hlLT5wbGFuZS52aXNpYmxlKQ0KPiDCoAkJcmV0dXJuOw0K
PiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gQEAgLTc5OSw2ICs4MTMsMTYgQEAg
c3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykNCj4gwqAJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7DQo+IMKgCXN0
cnVjdCBpbnRlbF9mYmNfc3RhdGVfY2FjaGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+
IMKgDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiArCS8qDQo+ICsJICogVGlnZXJsYWtl
IGlzIG5vdCBzdXBwb3J0aW5nIEZCQyB3aXRoIFBTUjIuDQo+ICsJICogUmVjb21tZW5kYXRpb24g
aXMgdG8ga2VlcCB0aGlzIGNvbWJpbmF0aW9uIGRpc2FibGVkDQo+ICsJICogQnNwZWM6IDUwNDIy
IEhTRDogMTQwMTAyNjAwMDINCj4gKwkgKi8NCj4gKwlpZiAoZmJjLT5zdGF0ZV9jYWNoZS5wc3Iy
X2FjdGl2ZSAmJiBJU19USUdFUkxBS0UoZGV2X3ByaXYpKSB7DQo+ICsJCWZiYy0+bm9fZmJjX3Jl
YXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7DQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
Kwl9DQo+ICsNCj4gwqAJaWYgKCFpbnRlbF9mYmNfY2FuX2VuYWJsZShkZXZfcHJpdikpDQo+IMKg
CQlyZXR1cm4gZmFsc2U7DQo+IMKgDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiBAQCAt
MTI3Myw2ICsxMjk3LDExIEBAIHZvaWQgaW50ZWxfZmJjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJaWYgKCFjYWNoZS0+cGxhbmUudmlzaWJsZSkNCj4gwqAJ
CWdvdG8gb3V0Ow0KPiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gKwlpZiAoZmJj
LT5zdGF0ZV9jYWNoZS5wc3IyX2FjdGl2ZSAmJiBJU19USUdFUkxBS0UoZGV2X3ByaXYpKSB7DQo+
ICsJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7DQo+ICsJ
CWdvdG8gb3V0Ow0KPiArCX0NCj4gKw0KPiDCoAlpZiAoaW50ZWxfZmJjX2FsbG9jX2NmYihkZXZf
cHJpdiwNCj4gwqAJCQkJaW50ZWxfZmJjX2NhbGN1bGF0ZV9jZmJfc2l6ZShkZXZfcHJpdiwgY2Fj
aGUpLA0KPiDCoAkJCQlwbGFuZV9zdGF0ZS0+aHcuZmItPmZvcm1hdC0+Y3BwWzBdKSkgew0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gaW5kZXggMTViZThkZWJhZTU0Li5mNGUwOGMxYTU4Njcg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAtNDE2LDYgKzQxNiw3IEBAIHN0
cnVjdCBpbnRlbF9mYmMgew0KPiDCoAkJdTE2IGdlbjlfd2FfY2ZiX3N0cmlkZTsNCj4gwqAJCXUx
NiBpbnRlcnZhbDsNCj4gwqAJCXM4IGZlbmNlX2lkOw0KPiArCQlib29sIHBzcjJfYWN0aXZlOw0K
PiDCoAl9IHN0YXRlX2NhY2hlOw0KPiDCoA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4g
wqAJLyoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
