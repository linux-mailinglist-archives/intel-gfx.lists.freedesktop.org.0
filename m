Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA4B2ED3B0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 16:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670B36E492;
	Thu,  7 Jan 2021 15:45:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20B66E492
 for <Intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 15:45:25 +0000 (UTC)
IronPort-SDR: 1Zb8e3FJzO9c2rKqR4agYa0bowPsRFo1OZSuIB4ZayOZ1JITVgmTz9eEc38LrDKY/2eoQt5mrC
 8e1gKClFUenA==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="238993427"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="238993427"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 07:45:24 -0800
IronPort-SDR: Y04xV7oIz9gOtFUpOpR0A9dd3RzT0WNIJwwwea7o33+zKLzjB4VlEUPRrXYorqisqNZHkJ9MR9
 Arpk+wVWoezg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="566179110"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 07 Jan 2021 07:45:24 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 07:45:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 07:45:23 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Thu, 7 Jan 2021 07:45:23 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 05/13] drm/i915/pxp: Func to send hardware
 session termination
Thread-Index: AQHW5IFw8oCtBpsHg06/2/PckQdPWqoc1VAA
Date: Thu, 7 Jan 2021 15:45:23 +0000
Message-ID: <b378ebceaa7f791954e227b3623daf3e3420b440.camel@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-6-sean.z.huang@intel.com>
In-Reply-To: <20210106231223.8323-6-sean.z.huang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.2 (3.38.2-1.fc33) 
x-originating-ip: [10.1.200.100]
Content-ID: <07FE96B47AA56642B7810CAD342C3878@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v19 05/13] drm/i915/pxp: Func to send hardware
 session termination
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

T24gV2VkLCAyMDIxLTAxLTA2IGF0IDE1OjEyIC0wODAwLCBIdWFuZywgU2VhbiBaIHdyb3RlOg0K
PiBJbXBsZW1lbnQgdGhlIGZ1bmN0aW9ucyB0byBhbGxvdyBQWFAgdG8gc2VuZCBhIEdQVSBjb21t
YW5kLCBpbg0KPiBvcmRlciB0byB0ZXJtaW5hdGUgdGhlIGhhcmR3YXJlIHNlc3Npb24sIHNvIGhh
cmR3YXJlIGNhbiByZWN5Y2xlDQo+IHRoaXMgc2Vzc2lvbiBzbG90IGZvciB0aGUgbmV4dCB1c2Fn
ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEh1YW5nLCBTZWFuIFogPHNlYW4uei5odWFuZ0BpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhw
L2ludGVsX3B4cC5jwqDCoMKgwqDCoMKgIHzCoCAxMyArKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3B4cC9pbnRlbF9weHBfY21kLmPCoMKgIHwgMTU4DQo+ICsrKysrKysrKysrKysrKysrKysr
Kw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmjCoMKgIHzCoCAx
OCArKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3R5cGVzLmggfMKg
wqAgNCArDQo+IMKgNSBmaWxlcyBjaGFuZ2VkLCAxOTQgaW5zZXJ0aW9ucygrKQ0KPiDCoGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5jDQo+
IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBf
Y21kLmgNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+IGluZGV4IGFmOWU4N2U0YzYzYS4u
NTU5OWI5MmJlYTliIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZQ0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiBAQCAtMjYzLDYgKzI2
Myw3IEBAIGk5MTUteSArPSBpOTE1X3BlcmYubw0KPiDCoGk5MTUtJChDT05GSUdfRFJNX0k5MTVf
UFhQKSArPSBcDQo+IMKgwqDCoMKgwqDCoMKgwqBweHAvaW50ZWxfcHhwLm8gXA0KPiDCoMKgwqDC
oMKgwqDCoMKgcHhwL2ludGVsX3B4cF9hcmIubyBcDQo+ICvCoMKgwqDCoMKgwqDCoHB4cC9pbnRl
bF9weHBfY21kLm8gXA0KPiDCoMKgwqDCoMKgwqDCoMKgcHhwL2ludGVsX3B4cF9jb250ZXh0Lm8g
XA0KPiDCoMKgwqDCoMKgwqDCoMKgcHhwL2ludGVsX3B4cF90ZWUubw0KPiDCoA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+IGluZGV4IDM4NjhlOGM2OTdmOS4uMmY2Mzgw
MTc0OGY4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+IEBAIC0x
NywxMCArMTcsMjMgQEANCj4gwqB2b2lkIGludGVsX3B4cF9pbml0KHN0cnVjdCBpbnRlbF9weHAg
KnB4cCkNCj4gwqB7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gY29u
dGFpbmVyX29mKHB4cCwgc3RydWN0IGludGVsX2d0LA0KPiBweHApOw0KPiArwqDCoMKgwqDCoMKg
wqBpbnQgaTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChJTlRFTF9HRU4oZ3QtPmk5MTUp
IDwgMTIpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiDCoA0K
PiArwqDCoMKgwqDCoMKgwqAvKiBGaW5kIHRoZSBmaXJzdCBWQ1MgZW5naW5lIHByZXNlbnQgKi8N
Cj4gK8KgwqDCoMKgwqDCoMKgZm9yIChpID0gMDsgaSA8IEk5MTVfTUFYX1ZDUzsgaSsrKSB7DQo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoSEFTX0VOR0lORShndCwgX1ZDUyhp
KSkpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBw
eHAtPnZjc19lbmdpbmUgPSBndC0+ZW5naW5lW19WQ1MoaSldOw0KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOw0KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgfQ0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICvCoMKgwqDCoMKgwqDCoGlm
ICghcHhwLT52Y3NfZW5naW5lKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBk
cm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiQ291bGQgbm90IGZpbmQgYSBWQ1MNCj4gZW5naW5lXG4i
KTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gK8KgwqDCoMKg
wqDCoMKgfQ0KPiArDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9weHBfY3R4X2luaXQoJnB4cC0+
Y3R4KTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3VuY29yZV93cml0ZShndC0+dW5j
b3JlLCBLQ1JfSU5JVCwNCj4gS0NSX0lOSVRfQUxMT1dfRElTUExBWV9NRV9XUklURVMpOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9jbWQuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmMNCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kOTI5OGNmNWUxYTcNCj4gLS0tIC9kZXYv
bnVsbA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5jDQo+
IEBAIC0wLDAgKzEsMTU4IEBADQo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+
ICsvKg0KPiArICogQ29weXJpZ2h0KGMpIDIwMjAsIEludGVsIENvcnBvcmF0aW9uLiBBbGwgcmln
aHRzIHJlc2VydmVkLg0KPiArICovDQo+ICsNCj4gKyNpbmNsdWRlICJpbnRlbF9weHBfY21kLmgi
DQo+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gKyNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0
LmgiDQo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiDQo+ICsNCj4gK3N0cnVjdCBp
OTE1X3ZtYSAqaW50ZWxfcHhwX2NtZF9nZXRfYmF0Y2goc3RydWN0IGludGVsX3B4cCAqcHhwLA0K
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwNCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QNCj4gaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbm9kZSAq
cG9vbCwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIgKmNtZF9idWYsIGludA0KPiBjbWRf
c2l6ZV9pbl9kdykNCj4gK3sNCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGk5MTVfdm1hICpiYXRj
aCA9IEVSUl9QVFIoLUVJTlZBTCk7DQo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9ndCAq
Z3QgPSBjb250YWluZXJfb2YocHhwLCBzdHJ1Y3QgaW50ZWxfZ3QsDQo+IHB4cCk7DQo+ICvCoMKg
wqDCoMKgwqDCoHUzMiAqY21kOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoGlmICghY2UgfHwgIWNl
LT5lbmdpbmUgfHwgIWNtZF9idWYpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoY21kX3Np
emVfaW5fZHcgKiA0ID4gUEFHRV9TSVpFKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkcm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRvICVzLCBpbnZhbGlkDQo+IGNt
ZF9zaXplX2lkX2R3PVslZF1cbiIsDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgX19mdW5jX18sIGNtZF9zaXplX2luX2R3KTsNCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiArwqDCoMKgwqDC
oMKgwqB9DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgY21kID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9t
YXAocG9vbC0+b2JqLCBJOTE1X01BUF9GT1JDRV9XQyk7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChJ
U19FUlIoY21kKSkgew0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2Vycigm
Z3QtPmk5MTUtPmRybSwgIkZhaWxlZCB0bw0KPiBpOTE1X2dlbV9vYmplY3RfcGluX21hcCgpXG4i
KTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgbWVtY3B5KGNt
ZCwgY21kX2J1ZiwgY21kX3NpemVfaW5fZHcgKiA0KTsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBp
ZiAoZHJtX2RlYnVnX2VuYWJsZWQoRFJNX1VUX0RSSVZFUikpIHsNCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHByaW50X2hleF9kdW1wKEtFUk5fREVCVUcsICJjbWQgYmluYXJpZXM6
IiwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgRFVNUF9QUkVGSVhfT0ZGU0VULCA0LCA0LCBjbWQsDQo+IGNtZF9zaXplX2luX2R3
ICogNCwgdHJ1ZSk7DQo+ICvCoMKgwqDCoMKgwqDCoH0NCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBp
OTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHBvb2wtPm9iaik7DQo+ICsNCj4gK8KgwqDCoMKgwqDC
oMKgYmF0Y2ggPSBpOTE1X3ZtYV9pbnN0YW5jZShwb29sLT5vYmosIGNlLT52bSwgTlVMTCk7DQo+
ICvCoMKgwqDCoMKgwqDCoGlmIChJU19FUlIoYmF0Y2gpKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBkcm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRvDQo+IGk5MTVf
dm1hX2luc3RhbmNlKClcbiIpOw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIGJhdGNoOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgcmV0
dXJuIGJhdGNoOw0KPiArfQ0KPiArDQo+ICtpbnQgaW50ZWxfcHhwX2NtZF9zdWJtaXQoc3RydWN0
IGludGVsX3B4cCAqcHhwLCB1MzIgKmNtZCwgaW50DQo+IGNtZF9zaXplX2luX2R3KQ0KPiArew0K
PiArwqDCoMKgwqDCoMKgwqBpbnQgZXJyID0gLUVJTlZBTDsNCj4gK8KgwqDCoMKgwqDCoMKgc3Ry
dWN0IGk5MTVfdm1hICpiYXRjaDsNCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnE7DQo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IE5VTEw7
DQo+ICvCoMKgwqDCoMKgwqDCoGJvb2wgaXNfZW5naW5lX3BtX2dldCA9IGZhbHNlOw0KPiArwqDC
oMKgwqDCoMKgwqBib29sIGlzX2JhdGNoX3ZtYV9waW4gPSBmYWxzZTsNCj4gK8KgwqDCoMKgwqDC
oMKgYm9vbCBpc19za2lwX3JlcV9vbl9lcnIgPSBmYWxzZTsNCj4gK8KgwqDCoMKgwqDCoMKgYm9v
bCBpc19lbmdpbmVfZ2V0X3Bvb2wgPSBmYWxzZTsNCg0KSSByZW1lbWJlciB0aGF0IEkgYXNrZWQg
bXlzZWxmIGluIHNvbWUgaW50ZXJuYWwgdmVyc2lvbiB0byB0aGlzIHRvIGJlDQpjb252ZXJ0ZWQg
dG8gZ290b3MgYW5kIEkgcmVtZW1iZXIgc2VlaW5nIHRoZSBjaGFuZ2UuIEknbSBub3Qgc3VyZSB3
aHkNCnRoaXMgYWxzbyBjYW1lIGJhY2sgdG8gdGhlIHZlcnkgb3JpZ2luYWwgY29kZS4NCg0KVGhl
biBDaHJpcyBhbmQgSm9vbmFzIGFsc28gcmVxdWVzdGVkIGNoYW5nZXMgb24gb2xkZXIgdmVyc2lv
bnMgb2YgdGhpcw0KcGF0Y2guIE5vdCBvbmx5IGxpbWl0ZWQgdG8gdGhpcy4gUGxlYXNlIGFkZHJl
c3MgYWxsIG9sZCByZXF1ZXN0cy4NCg0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZ3Rf
YnVmZmVyX3Bvb2xfbm9kZSAqcG9vbCA9IE5VTEw7DQo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBp
bnRlbF9ndCAqZ3QgPSBjb250YWluZXJfb2YocHhwLCBzdHJ1Y3QgaW50ZWxfZ3QsDQo+IHB4cCk7
DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgY2UgPSBweHAtPnZjc19lbmdpbmUtPmtlcm5lbF9jb250
ZXh0Ow0KPiArwqDCoMKgwqDCoMKgwqBpZiAoIWNlKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkcm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiVkNTIGVuZ2luZSBkb2VzIG5vdCBo
YXZlDQo+IGNvbnRleHRcbiIpOw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZXJy
ID0gLUVJTlZBTDsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZW5kOw0K
PiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFjbWQgfHwgKGNt
ZF9zaXplX2luX2R3ICogNCkgPiBQQUdFX1NJWkUpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGRybV9lcnIoJmd0LT5pOTE1LT5kcm0sICJGYWlsZWQgdG8gJXMgYmFkIHBhcmFt
c1xuIiwNCj4gX19mdW5jX18pOw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIC1FSU5WQUw7DQo+ICvCoMKgwqDCoMKgwqDCoH0NCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBp
bnRlbF9lbmdpbmVfcG1fZ2V0KGNlLT5lbmdpbmUpOw0KPiArwqDCoMKgwqDCoMKgwqBpc19lbmdp
bmVfcG1fZ2V0ID0gdHJ1ZTsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBwb29sID0gaW50ZWxfZ3Rf
Z2V0X2J1ZmZlcl9wb29sKGd0LCBQQUdFX1NJWkUpOw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoSVNf
RVJSKHBvb2wpKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZXJyKCZn
dC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRvDQo+IGludGVsX2VuZ2luZV9nZXRfcG9vbCgpXG4iKTsN
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVyciA9IFBUUl9FUlIocG9vbCk7DQo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGVuZDsNCj4gK8KgwqDCoMKgwqDC
oMKgfQ0KPiArwqDCoMKgwqDCoMKgwqBpc19lbmdpbmVfZ2V0X3Bvb2wgPSB0cnVlOw0KPiArDQo+
ICvCoMKgwqDCoMKgwqDCoGJhdGNoID0gaW50ZWxfcHhwX2NtZF9nZXRfYmF0Y2gocHhwLCBjZSwg
cG9vbCwgY21kLA0KPiBjbWRfc2l6ZV9pbl9kdyk7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChJU19F
UlIoYmF0Y2gpKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZXJyKCZn
dC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRvDQo+IGludGVsX3B4cF9jbWRfZ2V0X2JhdGNoKClcbiIp
Ow0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZXJyID0gUFRSX0VSUihiYXRjaCk7
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGVuZDsNCj4gK8KgwqDCoMKg
wqDCoMKgfQ0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoGVyciA9IGk5MTVfdm1hX3BpbihiYXRjaCwg
MCwgMCwgUElOX1VTRVIpOw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoZXJyKSB7DQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRv
DQo+IGk5MTVfdm1hX3BpbigpXG4iKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGdvdG8gZW5kOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICvCoMKgwqDCoMKgwqDCoGlzX2JhdGNo
X3ZtYV9waW4gPSB0cnVlOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoHJxID0gaW50ZWxfY29udGV4
dF9jcmVhdGVfcmVxdWVzdChjZSk7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChJU19FUlIocnEpKSB7
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZXJyKCZndC0+aTkxNS0+ZHJt
LCAiRmFpbGVkIHRvDQo+IGludGVsX2NvbnRleHRfY3JlYXRlX3JlcXVlc3QoKVxuIik7DQo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlcnIgPSBQVFJfRVJSKHJxKTsNCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZW5kOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+
ICvCoMKgwqDCoMKgwqDCoGlzX3NraXBfcmVxX29uX2VyciA9IHRydWU7DQo+ICsNCj4gK8KgwqDC
oMKgwqDCoMKgZXJyID0gaW50ZWxfZ3RfYnVmZmVyX3Bvb2xfbWFya19hY3RpdmUocG9vbCwgcnEp
Ow0KPiArwqDCoMKgwqDCoMKgwqBpZiAoZXJyKSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBkcm1fZXJyKCZndC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRvDQo+IGludGVsX2VuZ2lu
ZV9wb29sX21hcmtfYWN0aXZlKClcbiIpOw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZ290byBlbmQ7DQo+ICvCoMKgwqDCoMKgwqDCoH0NCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBp
OTE1X3ZtYV9sb2NrKGJhdGNoKTsNCj4gK8KgwqDCoMKgwqDCoMKgZXJyID0gaTkxNV9yZXF1ZXN0
X2F3YWl0X29iamVjdChycSwgYmF0Y2gtPm9iaiwgZmFsc2UpOw0KPiArwqDCoMKgwqDCoMKgwqBp
ZiAoIWVycikNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVyciA9IGk5MTVfdm1h
X21vdmVfdG9fYWN0aXZlKGJhdGNoLCBycSwgMCk7DQo+ICvCoMKgwqDCoMKgwqDCoGk5MTVfdm1h
X3VubG9jayhiYXRjaCk7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChlcnIpIHsNCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9lcnIoJmd0LT5pOTE1LT5kcm0sICJGYWlsZWQgdG8N
Cj4gaTkxNV9yZXF1ZXN0X2F3YWl0X29iamVjdCgpXG4iKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGdvdG8gZW5kOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gK8KgwqDC
oMKgwqDCoMKgaWYgKGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKSB7DQo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlcnIgPSBjZS0+ZW5naW5lLT5lbWl0X2luaXRfYnJl
YWRjcnVtYihycSk7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoZXJyKSB7
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2Vy
cigmZ3QtPmk5MTUtPmRybSwgIkZhaWxlZCB0bw0KPiBlbWl0X2luaXRfYnJlYWRjcnVtYigpXG4i
KTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3Rv
IGVuZDsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0NCj4gK8KgwqDCoMKgwqDC
oMKgfQ0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoGVyciA9IGNlLT5lbmdpbmUtPmVtaXRfYmJfc3Rh
cnQocnEsIGJhdGNoLT5ub2RlLnN0YXJ0LA0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgYmF0Y2gtPm5vZGUuc2l6ZSwgMCk7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChlcnIpIHsNCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9lcnIoJmd0LT5pOTE1LT5kcm0sICJG
YWlsZWQgdG8NCj4gZW1pdF9iYl9zdGFydCgpXG4iKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGdvdG8gZW5kOw0KPiArwqDCoMKgwqDCoMKgwqB9DQo+ICsNCj4gK8KgwqDCoMKg
wqDCoMKgaTkxNV9yZXF1ZXN0X2FkZChycSk7DQo+ICsNCj4gK2VuZDoNCj4gK8KgwqDCoMKgwqDC
oMKgaWYgKHVubGlrZWx5KGVycikgJiYgaXNfc2tpcF9yZXFfb25fZXJyKQ0KPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaTkxNV9yZXF1ZXN0X3NldF9lcnJvcl9vbmNlKHJxLCBlcnIp
Ow0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoGlmIChpc19iYXRjaF92bWFfcGluKQ0KPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaTkxNV92bWFfdW5waW4oYmF0Y2gpOw0KPiArDQo+ICvC
oMKgwqDCoMKgwqDCoGlmIChpc19lbmdpbmVfZ2V0X3Bvb2wpDQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9ndF9idWZmZXJfcG9vbF9wdXQocG9vbCk7DQo+ICsNCj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKGlzX2VuZ2luZV9wbV9nZXQpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9lbmdpbmVfcG1fcHV0KGNlLT5lbmdpbmUpOw0KPiArDQo+ICvCoMKg
wqDCoMKgwqDCoHJldHVybiBlcnI7DQo+ICt9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX2NtZC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhw
L2ludGVsX3B4cF9jbWQuaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAw
MDAwMDAuLmQwNDQ2Mzk2MjQyMQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfY21kLmgNCj4gQEAgLTAsMCArMSwxOCBAQA0KPiArLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLw0KPiArLyoNCj4gKyAqIENvcHlyaWdodChj
KSAyMDIwLCBJbnRlbCBDb3Jwb3JhdGlvbi4gQWxsIHJpZ2h0cyByZXNlcnZlZC4NCj4gKyAqLw0K
PiArDQo+ICsjaWZuZGVmIF9fSU5URUxfUFhQX0NNRF9IX18NCj4gKyNkZWZpbmUgX19JTlRFTF9Q
WFBfQ01EX0hfXw0KPiArDQo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfYnVmZmVyX3Bvb2wuaCIN
Cj4gKyNpbmNsdWRlICJpbnRlbF9weHAuaCINCj4gKw0KPiArc3RydWN0IGk5MTVfdm1hICppbnRl
bF9weHBfY21kX2dldF9iYXRjaChzdHJ1Y3QgaW50ZWxfcHhwICpweHAsDQo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLA0KPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdA0KPiBpbnRlbF9ndF9idWZmZXJfcG9vbF9ub2RlICpwb29sLA0KPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHUzMiAqY21kX2J1ZiwgaW50DQo+IGNtZF9zaXplX2luX2R3KTsN
Cj4gKw0KPiAraW50IGludGVsX3B4cF9jbWRfc3VibWl0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCwg
dTMyICpjbWQsIGludA0KPiBjbWRfc2l6ZV9pbl9kdyk7DQo+ICsjZW5kaWYgLyogX19JTlRFTF9Q
WFBfU01fSF9fICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50
ZWxfcHhwX3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3R5
cGVzLmgNCj4gaW5kZXggMjg3YmExZTBlZDlkLi5mM2Q5MzM1YWVlNWYgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdHlwZXMuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3R5cGVzLmgNCj4gQEAgLTgsNiArOCw4IEBA
DQo+IMKgDQo+IMKgI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+DQo+IMKgDQo+ICtzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzOw0KPiArDQo+IMKgLyoqDQo+IMKgICogc3RydWN0IHB4cF9wcm90ZWN0ZWRf
c2Vzc2lvbiAtIHN0cnVjdHVyZSB0byB0cmFjayBhbGwgYWN0aXZlDQo+IHNlc3Npb25zLg0KPiDC
oCAqLw0KPiBAQCAtNDQsNiArNDYsOCBAQCBzdHJ1Y3QgcHhwX2NvbnRleHQgew0KPiDCoA0KPiDC
oHN0cnVjdCBpbnRlbF9weHAgew0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHB4cF9jb250ZXh0
IGN0eDsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICp2Y3Nf
ZW5naW5lOw0KPiDCoH07DQo+IMKgDQo+IMKgI2VuZGlmIC8qIF9fSU5URUxfUFhQX1RZUEVTX0hf
XyAqLw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
