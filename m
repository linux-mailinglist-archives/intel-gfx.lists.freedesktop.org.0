Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6B7349B58
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:00:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6726E0C6;
	Thu, 25 Mar 2021 21:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22606E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:00:47 +0000 (UTC)
IronPort-SDR: jmHk+NsN3q1sze9LJLPvSTzrj20E34/f0sBN4QZ7RIZ89CIjN/bxmvxB3jQVPcZN1EXZLPQu8C
 rdTXZkuBn9LA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="191116290"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="191116290"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:00:47 -0700
IronPort-SDR: Vk4QhXZ3l8n85YP6lIb76vmt14fAtcU2j1FNGKAxmLwfpNq7NO4njs4NhKN9VB3WjmvHEO+c8d
 i1LeIm4HuFKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="442985565"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2021 14:00:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 14:00:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 14:00:44 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 25 Mar 2021 14:00:44 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 8/8] drm/i915: rename
 i915_rev_steppings->intel_step_info
Thread-Index: AQHXFCMG4LnEQxDveEWFG22B2MHnBKqVwY2A
Date: Thu, 25 Mar 2021 21:00:44 +0000
Message-ID: <94e5e233a9a709db1751a0e87044a615fabacc0d.camel@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
 <b3d4119c030c2cf9f127b02a42c32aeb24787296.1615211711.git.jani.nikula@intel.com>
In-Reply-To: <b3d4119c030c2cf9f127b02a42c32aeb24787296.1615211711.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <A4F29662A2BC5B41804FF602AAF7C98B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 8/8] drm/i915: rename
 i915_rev_steppings->intel_step_info
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTAzLTA4IGF0IDE1OjU2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
TWF0dGVyIG9mIHRhc3RlLiBNYXRjaCB0aGUgcHJlZml4IGZvciBldmVyeXRoaW5nIGVsc2UgcmVs
YXRlZCB0bw0KPiBzdGVwcGluZ3MuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4NCg0KUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KRm9yIHRo
ZSByZW5hbWluZyBwYXRjaGVzLCA2LCA3IGFuZCA4IEknbSBhbHNvIGZpbmUgd2l0aCB0aGUgY3Vy
cmVudCBuYW1pbmcgdXAgdG8geW91Lg0KDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmggfCAgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3N0ZXAuYyAgICAgICAgfCAxMiArKysrKystLS0tLS0NCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zdGVwLmggICAgICAgIHwgIDIgKy0NCj4gwqAzIGZpbGVzIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPiBpbmRleCBmODQ1NjllOGU3MTEuLjFiY2FlMmE4Yzc5
YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+IEBA
IC0yMjgsNyArMjI4LDcgQEAgc3RydWN0IGludGVsX3J1bnRpbWVfaW5mbyB7DQo+IMKgDQo+IA0K
PiANCj4gDQo+IMKgCXUzMiByYXdjbGtfZnJlcTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLQlzdHJ1
Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHN0ZXA7DQo+ICsJc3RydWN0IGludGVsX3N0ZXBfaW5mbyBz
dGVwOw0KPiDCoH07DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgc3RydWN0IGludGVsX2RyaXZlcl9j
YXBzIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3N0ZXAuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3N0ZXAuYw0KPiBpbmRleCA5ZGYyZGQyNjQ4NDEu
LjkxNGE1ZGU0MzQ2ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
c3RlcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3N0ZXAuYw0KPiBAQCAt
MTUsNyArMTUsNyBAQA0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoC8q
IEZJWE1FOiB3aGF0IGFib3V0IFJFVklEX0UwICovDQo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGk5
MTVfcmV2X3N0ZXBwaW5ncyBrYmxfcmV2aWRzW10gPSB7DQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX3N0ZXBfaW5mbyBrYmxfcmV2aWRzW10gPSB7DQo+IMKgCVswXSA9IHsgLmd0X3N0ZXAg
PSBTVEVQX0EwLCAuZGlzcGxheV9zdGVwID0gU1RFUF9BMCB9LA0KPiDCoAlbMV0gPSB7IC5ndF9z
dGVwID0gU1RFUF9CMCwgLmRpc3BsYXlfc3RlcCA9IFNURVBfQjAgfSwNCj4gwqAJWzJdID0geyAu
Z3Rfc3RlcCA9IFNURVBfQzAsIC5kaXNwbGF5X3N0ZXAgPSBTVEVQX0IwIH0sDQo+IEBAIC0yNiw3
ICsyNiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIGtibF9yZXZp
ZHNbXSA9IHsNCj4gwqAJWzddID0geyAuZ3Rfc3RlcCA9IFNURVBfRzAsIC5kaXNwbGF5X3N0ZXAg
PSBTVEVQX0MwIH0sDQo+IMKgfTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLXN0YXRpYyBjb25zdCBz
dHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF91eV9yZXZpZF9zdGVwX3RibFtdID0gew0KPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zdGVwX2luZm8gdGdsX3V5X3JldmlkX3N0ZXBfdGJs
W10gPSB7DQo+IMKgCVswXSA9IHsgLmd0X3N0ZXAgPSBTVEVQX0EwLCAuZGlzcGxheV9zdGVwID0g
U1RFUF9BMCB9LA0KPiDCoAlbMV0gPSB7IC5ndF9zdGVwID0gU1RFUF9CMCwgLmRpc3BsYXlfc3Rl
cCA9IFNURVBfQzAgfSwNCj4gwqAJWzJdID0geyAuZ3Rfc3RlcCA9IFNURVBfQjEsIC5kaXNwbGF5
X3N0ZXAgPSBTVEVQX0MwIH0sDQo+IEBAIC0zNCwxMiArMzQsMTIgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgdGdsX3V5X3JldmlkX3N0ZXBfdGJsW10gPSB7DQo+IMKg
fTsNCj4gwqANCj4gDQo+IA0KPiANCj4gwqAvKiBTYW1lIEdUIHN0ZXBwaW5nIGJldHdlZW4gdGds
X3V5X3JldmlkcyBhbmQgdGdsX3JldmlkcyBkb24ndCBtZWFuIHRoZSBzYW1lIEhXICovDQo+IC1z
dGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyB0Z2xfcmV2aWRfc3RlcF90Ymxb
XSA9IHsNCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc3RlcF9pbmZvIHRnbF9yZXZpZF9z
dGVwX3RibFtdID0gew0KPiDCoAlbMF0gPSB7IC5ndF9zdGVwID0gU1RFUF9BMCwgLmRpc3BsYXlf
c3RlcCA9IFNURVBfQjAgfSwNCj4gwqAJWzFdID0geyAuZ3Rfc3RlcCA9IFNURVBfQjAsIC5kaXNw
bGF5X3N0ZXAgPSBTVEVQX0QwIH0sDQo+IMKgfTsNCj4gwqANCj4gDQo+IA0KPiANCj4gLXN0YXRp
YyBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIGFkbHNfcmV2aWRfc3RlcF90YmxbXSA9
IHsNCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfc3RlcF9pbmZvIGFkbHNfcmV2aWRfc3Rl
cF90YmxbXSA9IHsNCj4gwqAJWzB4MF0gPSB7IC5ndF9zdGVwID0gU1RFUF9BMCwgLmRpc3BsYXlf
c3RlcCA9IFNURVBfQTAgfSwNCj4gwqAJWzB4MV0gPSB7IC5ndF9zdGVwID0gU1RFUF9BMCwgLmRp
c3BsYXlfc3RlcCA9IFNURVBfQTIgfSwNCj4gwqAJWzB4NF0gPSB7IC5ndF9zdGVwID0gU1RFUF9C
MCwgLmRpc3BsYXlfc3RlcCA9IFNURVBfQjAgfSwNCj4gQEAgLTQ5LDEwICs0OSwxMCBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyBhZGxzX3JldmlkX3N0ZXBfdGJsW10g
PSB7DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgdm9pZCBpbnRlbF9zdGVwX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgew0KPiAtCWNvbnN0IHN0cnVjdCBpOTE1X3Jldl9z
dGVwcGluZ3MgKnJldmlkcyA9IE5VTEw7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX3N0ZXBfaW5m
byAqcmV2aWRzID0gTlVMTDsNCj4gwqAJaW50IHNpemUgPSAwOw0KPiDCoAlpbnQgcmV2aWQgPSBJ
TlRFTF9SRVZJRChpOTE1KTsNCj4gLQlzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHN0ZXAgPSB7
fTsNCj4gKwlzdHJ1Y3QgaW50ZWxfc3RlcF9pbmZvIHN0ZXAgPSB7fTsNCj4gwqANCj4gDQo+IA0K
PiANCj4gwqAJaWYgKElTX0FMREVSTEFLRV9TKGk5MTUpKSB7DQo+IMKgCQlyZXZpZHMgPSBhZGxz
X3JldmlkX3N0ZXBfdGJsOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfc3RlcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3RlcC5oDQo+IGluZGV4IDEw
MmZkNmEyNjg5My4uOTU4YThiYjVkNjc3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9zdGVwLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3Rl
cC5oDQo+IEBAIC0xMCw3ICsxMCw3IEBADQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGU7DQo+IMKgDQo+IA0KPiANCj4gDQo+IC1zdHJ1Y3QgaTkxNV9yZXZfc3Rl
cHBpbmdzIHsNCj4gK3N0cnVjdCBpbnRlbF9zdGVwX2luZm8gew0KPiDCoAl1OCBndF9zdGVwOw0K
PiDCoAl1OCBkaXNwbGF5X3N0ZXA7DQo+IMKgfTsNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
