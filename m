Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89D3299FB8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 01:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BAB89F07;
	Tue, 27 Oct 2020 00:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5688F89FD4
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 00:24:54 +0000 (UTC)
IronPort-SDR: 5nSTf/dKKOrAffU4QbUynq9t5SsPwHBv6G4sUsTdi5H/CxW6s9+F/OJbkqxtOkhor8z2RxMs5S
 ikocHFC0t++A==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="229643815"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="229643815"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 17:24:50 -0700
IronPort-SDR: ZeS0fXV/3TGiASkXdmVybXKbUFCXzxqi0ckSSKIqdaLRU+S+25M9u2bxrRUnL+8TLjuFXbOHFi
 o5Tnr+jvl+Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="468107498"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga004.jf.intel.com with ESMTP; 26 Oct 2020 17:24:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 27 Oct 2020 00:24:48 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 26 Oct 2020 17:24:46 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/6] drm/i915/display/psr: Calculate selective fetch
 plane registers
Thread-Index: AQHWobRNjzSUGT34uEic2hnCywlNFamq67uAgAA1QgA=
Date: Tue, 27 Oct 2020 00:24:46 +0000
Message-ID: <aa6b1eba1eed31ef77981715a46812fa17dd5ebf.camel@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
 <9fd5417f2f9c692ff7f21b812a8d2b7d5d1ec8af.camel@intel.com>
In-Reply-To: <9fd5417f2f9c692ff7f21b812a8d2b7d5d1ec8af.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <74ADE30D09DD1E43B1B2F68E3BBD609B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/display/psr: Calculate
 selective fetch plane registers
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

T24gTW9uLCAyMDIwLTEwLTI2IGF0IDIxOjEzICswMDAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiBPbiBUdWUsIDIwMjAtMTAtMTMgYXQgMTY6MDEgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+ID4gQWRkIHRoZSBjYWxjdWxhdGlvbnMgdG8gc2V0IHBsYW5lIHNlbGVj
dGl2ZSBmZXRjaCByZWdpc3RlcnMgZGVwZW5kaW5nDQo+ID4gaW4gdGhlIHZhbHVlIG9mIHRoZSBh
cmVhIGRhbWFnZWQuDQo+ID4gSXQgaXMgc3RpbGwgdXNpbmcgdGhlIHdob2xlIHBsYW5lIGFyZWEg
YXMgZGFtYWdlZCBidXQgdGhhdCB3aWxsDQo+ID4gY2hhbmdlDQo+ID4gaW4gbmV4dCBwYXRjaGVz
Lg0KPiA+IA0KPiA+IEJTcGVjOiA1NTIyOQ0KPiA+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4t
Z3llb25nLm11bkBpbnRlbC5jb20+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMiArKw0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMjIgKysrKysrKysrKysr
KystLS0NCj4gPiAtLQ0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCAwYjVkZjhlNDQ5NjYu
LmFlY2ViMzc4YmNhMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTYwMyw2ICs2MDMsOCBAQCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgew0KPiA+IMKgCXUzMiBwbGFuYXJfc2xhdmU7DQo+ID4g
wqANCj4gPiANCj4gPiANCj4gPiANCj4gPiDCoAlzdHJ1Y3QgZHJtX2ludGVsX3Nwcml0ZV9jb2xv
cmtleSBja2V5Ow0KPiA+ICsNCj4gPiArCXN0cnVjdCBkcm1fcmVjdCBwc3IyX3NlbF9mZXRjaF9h
cmVhOw0KPiA+IMKgfTsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IMKgc3RydWN0IGlu
dGVsX2luaXRpYWxfcGxhbmVfY29uZmlnIHsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGE1OTFhNDc1ZjE0OC4uNzczYTViNWZhMDc4
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gQEAgLTExNzMsNiArMTE3Myw3IEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3Nl
bF9mZXRjaChzdHJ1Y3QNCj4gPiBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gwqB7DQo+ID4gwqAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZS0+YmFzZS5k
ZXYpOw0KPiA+IMKgCWVudW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7DQo+ID4gKwljb25zdCBz
dHJ1Y3QgZHJtX3JlY3QgKmNsaXA7DQo+ID4gwqAJdTMyIHZhbDsNCj4gPiDCoA0KPiA+IA0KPiA+
IA0KPiA+IA0KPiA+IMKgCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQ0K
PiA+IEBAIC0xMTg0LDE2ICsxMTg1LDIwIEBAIHZvaWQNCj4gPiBpbnRlbF9wc3IyX3Byb2dyYW1f
cGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gwqAJaWYgKCF2
YWwgfHwgcGxhbmUtPmlkID09IFBMQU5FX0NVUlNPUikNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IMKg
DQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gLQl2YWwgPSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEg
PDwgMTYgfCBwbGFuZV9zdGF0ZS0NCj4gPiA+IHVhcGkuZHN0LngxOw0KPiA+ICsJY2xpcCA9ICZw
bGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gPiArDQo+ID4gKwl2YWwgPSAoY2xp
cC0+eTEgKyBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEpIDw8IDE2Ow0KPiANCj4gPiArCXZhbCB8
PSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDE7DQo+ID4gwqAJaW50ZWxfZGVfd3JpdGVfZncoZGV2
X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9QT1MocGlwZSwgcGxhbmUtDQo+ID4gPiBpZCksIHZhbCk7
DQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiAtCXZhbCA9IHBsYW5lX3N0YXRlLT5jb2xv
cl9wbGFuZVtjb2xvcl9wbGFuZV0ueSA8PCAxNjsNCj4gPiArCS8qIFRPRE86IGNvbnNpZGVyIHRp
bGluZyBhbmQgYXV4aWxpYXJ5IHN1cmZhY2VzICovDQo+ID4gKwl2YWwgPSAoY2xpcC0+eTEgKyBw
bGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnkpIDw8DQo+ID4gMTY7DQo+ID4g
wqAJdmFsIHw9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueDsNCj4gPiDC
oAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX09GRlNFVChwaXBl
LCBwbGFuZS0NCj4gPiA+IGlkKSwNCj4gPiDCoAkJCSAgdmFsKTsNCj4gPiDCoA0KPiA+IA0KPiA+
IA0KPiA+IA0KPiA+IMKgCS8qIFNpemVzIGFyZSAwIGJhc2VkICovDQo+ID4gLQl2YWwgPSAoKGRy
bV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNikgLSAxKSA8PA0KPiA+
IDE2Ow0KPiA+ICsJdmFsID0gKGRybV9yZWN0X2hlaWdodChjbGlwKSAtIDEpIDw8IDE2Ow0KPiA+
IMKgCXZhbCB8PSAoZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTYp
IC0gMTsNCj4gPiDCoAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENI
X1NJWkUocGlwZSwgcGxhbmUtDQo+ID4gPiBpZCksIHZhbCk7DQo+ID4gwqB9DQo+ID4gQEAgLTEy
NjcsNyArMTI3Miw3IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+
ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0K
PiA+IMKgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUs
DQo+ID4gb2xkX3BsYW5lX3N0YXRlLA0KPiA+IMKgCQkJCQkgICAgIG5ld19wbGFuZV9zdGF0ZSwg
aSkgew0KPiA+IC0JCXN0cnVjdCBkcm1fcmVjdCB0ZW1wOw0KPiA+ICsJCXN0cnVjdCBkcm1fcmVj
dCAqc2VsX2ZldGNoX2FyZWEsIHRlbXA7DQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiDC
oAkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjICE9IGNydGNfc3RhdGUtDQo+ID4gPiB1
YXBpLmNydGMpDQo+ID4gwqAJCQljb250aW51ZTsNCj4gPiBAQCAtMTI5MCw4ICsxMjk1LDEzIEBA
IGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJICogRm9yIG5vdyBkb2luZyBhIHNlbGVjdGl2ZSBmZXRj
aCBpbiB0aGUgd2hvbGUgcGxhbmUNCj4gPiBhcmVhLA0KPiA+IMKgCQkgKiBvcHRpbWl6YXRpb25z
IHdpbGwgY29tZSBpbiB0aGUgZnV0dXJlLg0KPiA+IMKgCQkgKi8NCj4gPiAtCQl0ZW1wLnkxID0g
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gPiAtCQl0ZW1wLnkyID0gbmV3X3BsYW5l
X3N0YXRlLT51YXBpLmRzdC55MjsNCj4gPiArCQlzZWxfZmV0Y2hfYXJlYSA9ICZuZXdfcGxhbmVf
c3RhdGUtPnBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ID4gKwkJc2VsX2ZldGNoX2FyZWEtPnkxID0g
bmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55MSA+Pg0KPiA+IDE2Ow0KPiA+ICsJCXNlbF9mZXRj
aF9hcmVhLT55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTIgPj4NCj4gPiAxNjsNCj4g
PiArDQo+ID4gKwkJdGVtcCA9ICpzZWxfZmV0Y2hfYXJlYTsNCj4gPiArCQl0ZW1wLnkxICs9IG5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgPj4gMTY7DQo+ID4gKwkJdGVtcC55MiArPSBuZXdf
cGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxID4+IDE2Ow0KPiBJdCBhZGRzIHNyYyB0byBkc3QuIA0K
PiBGb3IgdGhlIHdob2xlIHBsYW5lIGRhbWFnZSBhcmVhLCB0aGVzZSBwcmV2aW91cyBjb2RlIGxv
b2tzIGNvcnJlY3QuDQoNCk5pY2UgY2F0Y2gsIHRoYW5rcy4NCg0KPiANCj4gwqB0ZW1wLnkxID0g
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gwqB0ZW1wLnkyID0gbmV3X3BsYW5lX3N0
YXRlLT51YXBpLmRzdC55MjsNCj4gDQo+ID4gwqAJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xp
cCwgJnRlbXApOw0KPiA+IMKgCX0NCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
