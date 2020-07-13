Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3521E22A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 23:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8326E102;
	Mon, 13 Jul 2020 21:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE0E6E102
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 21:31:45 +0000 (UTC)
IronPort-SDR: CdocEgAcSyLJpDQnD9BXtUALjgbv0Y+HDBf5pPWovM4CKSmBrwG/oauyJwAKcldaHmwdVjwVAA
 gpaFxxBjoOfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="210272841"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="210272841"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 14:31:45 -0700
IronPort-SDR: lqDAr06JkuSjov9eXYssuj3l5JEjx9QAzoA9VL7kGErIV17+lF/5YbAYBJF8DgrG+xdivz/dZY
 sgQ38uS4juWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="316186182"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 13 Jul 2020 14:31:44 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 13 Jul 2020 14:31:44 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.87]) with mapi id 14.03.0439.000;
 Mon, 13 Jul 2020 14:31:44 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: WARN if max vswing/pre-emphasis
 violates the DP spec
Thread-Index: AQHWVgGHk1Slfmxm5UWrR8KvEsz5IKkAJNOAgAEIVwCABVazAA==
Date: Mon, 13 Jul 2020 21:31:42 +0000
Message-ID: <099c821618dde8324acf4dd5bece766e35a37a94.camel@intel.com>
References: <20200709145845.18118-1-ville.syrjala@linux.intel.com>
 <ac6ca9134c3e22fe045743f1c7a74deff6b2c2ac.camel@intel.com>
 <20200710120200.GG6112@intel.com>
In-Reply-To: <20200710120200.GG6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <1B1162C9792AE64A8A3C713EB80E04F4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: WARN if max vswing/pre-emphasis
 violates the DP spec
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA3LTEwIGF0IDE1OjAyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVsIDA5LCAyMDIwIGF0IDA4OjE0OjA1UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMC0wNy0wOSBhdCAxNzo1OCArMDMwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IEFjY29yZGluZyB0byB0aGUgRFAgc3BlYyBh
IERQVFggbXVzdCBzdXBwb3J0IHZzd2luZy9wcmUtZW1waGFzaXMNCj4gPiA+IHVwIHRvIGFuZCBp
bmNsdWRpbmcgbGV2ZWwgMi4gTGV2ZWwgMyBpcyBvcHRpb25hbCAoYWN0dWFsbHkgRFAgMS40YQ0K
PiA+ID4gc2VlbXMgdG8gbWFrZSBldmVuIGxldmVsIDMgbWFuZGF0b3J5IGZvciBIQlIyLzMsIHdo
aWxlIGxlYXZpbmcgaXQNCj4gPiA+IG9wdGlvbmFsIGZvciBSQlIvSEJSMSkuDQo+ID4gPiANCj4g
PiA+IFdBUk4gaWYgb3V0IGVuY29kZXJzJyAudm9sdGFnZV9tYXgoKS8ucHJlZW1waF9tYXgoKSBy
ZXR1cm4NCj4gPiA+IGFuIGlsbGVnYWwgdmFsdWUuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4g
PiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYyB8IDkgKysrKysrKysrDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+ID4gaW5kZXggMjQ5MzE0MmE3MGU5
Li5hMjNlZDcyOTA4NDMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPiA+IEBAIC01Miw2
ICs1Miw3IEBAIHN0YXRpYyB1OCBkcF92b2x0YWdlX21heCh1OCBwcmVlbXBoKQ0KPiA+ID4gIHZv
aWQgaW50ZWxfZHBfZ2V0X2FkanVzdF90cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ID4gIAkJCSAgICAgICBjb25zdCB1OCBsaW5rX3N0YXR1c1tEUF9MSU5LX1NUQVRVU19TSVpF
XSkNCj4gPiA+ICB7DQo+ID4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBf
dG9faTkxNShpbnRlbF9kcCk7DQo+ID4gPiAgCXU4IHYgPSAwOw0KPiA+ID4gIAl1OCBwID0gMDsN
Cj4gPiA+ICAJaW50IGxhbmU7DQo+ID4gPiBAQCAtNjQsMTIgKzY1LDIwIEBAIHZvaWQgaW50ZWxf
ZHBfZ2V0X2FkanVzdF90cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gIAl9
DQo+ID4gPiAgDQo+ID4gPiAgCXByZWVtcGhfbWF4ID0gaW50ZWxfZHAtPnByZWVtcGhfbWF4KGlu
dGVsX2RwKTsNCj4gPiA+ICsJZHJtX1dBUk5fT05fT05DRSgmaTkxNS0+ZHJtLA0KPiA+ID4gKwkJ
CSBwcmVlbXBoX21heCAhPSBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8yICYmDQo+ID4gPiArCQkJ
IHByZWVtcGhfbWF4ICE9IERQX1RSQUlOX1BSRV9FTVBIX0xFVkVMXzMpOw0KPiA+IA0KPiA+IE9r
YXkgbWF0Y2hlcyBidXQgSSBndWVzcyB0aGUgcHJlZW1waF9tYXggZnVuY3Rpb24gc2hvdWxkIHJl
Y2VpdmUgYXMgcGFyYW1ldGVyIHRoZSB2b2x0YWdlIGxldmVsIHRvIGl0IHJldHVybiB0aGUgbWF4
IHByZWVtcGggb2YgdGhhdCB2b2x0YWdlIGxldmVsLA0KPiA+IG5vPw0KPiANCj4gVGhhdCB3YXMg
dGhlIG9sZCB3YXkgd2hpY2ggZGlkbid0IG1hdGNoIHRoZSBzcGVjLiBXaXRoDQo+IHRoZSBuZXcg
d2F5IHRob3NlIGp1c3QgcmV0dXJuIHRoZSBvdmVyYWxsIG1heGltdW0gdGhhdA0KPiB3ZSBzdXBw
b3J0LiBBbmQgdGhlIGRwX3ZvbHRhZ2VfbWF4KCkgY2FsbCBiZWxvdyBmaXhlcyB1cA0KPiBhbnkg
b3V0IG9mIHNwZWMgcmVxdWVzdHMuDQoNCkl0IHN0aWxsIGRvIG5vdCBoYW5kbGUgYSB0YWJsZSB0
aGF0IGRvIG5vdCBoYXZlIERQX1RSQUlOX1ZPTFRBR0VfU1dJTkdfTEVWRUxfMCB8IERQX1RSQUlO
X1BSRV9FTVBIX0xFVkVMXzMsIGJ1dCBpbiB0aGlzIGNhc2Ugd2Ugd291bGQgYmUgdXNpbmcgYSB3
cm9uZw0KZW50cnkuDQoNClRoZSB3YXJuaW5ncyBMR1RNLg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQoNCj4gDQo+ID4gPiArDQo+
ID4gPiAgCWlmIChwID49IHByZWVtcGhfbWF4KQ0KPiA+ID4gIAkJcCA9IHByZWVtcGhfbWF4IHwg
RFBfVFJBSU5fTUFYX1BSRV9FTVBIQVNJU19SRUFDSEVEOw0KPiA+ID4gIA0KPiA+ID4gIAl2ID0g
bWluKHYsIGRwX3ZvbHRhZ2VfbWF4KHApKTsNCj4gPiA+ICANCj4gPiA+ICAJdm9sdGFnZV9tYXgg
PSBpbnRlbF9kcC0+dm9sdGFnZV9tYXgoaW50ZWxfZHApOw0KPiA+ID4gKwlkcm1fV0FSTl9PTl9P
TkNFKCZpOTE1LT5kcm0sDQo+ID4gPiArCQkJIHZvbHRhZ2VfbWF4ICE9IERQX1RSQUlOX1ZPTFRB
R0VfU1dJTkdfTEVWRUxfMiAmJg0KPiA+ID4gKwkJCSB2b2x0YWdlX21heCAhPSBEUF9UUkFJTl9W
T0xUQUdFX1NXSU5HX0xFVkVMXzMpOw0KPiA+ID4gKw0KPiA+ID4gIAlpZiAodiA+PSB2b2x0YWdl
X21heCkNCj4gPiA+ICAJCXYgPSB2b2x0YWdlX21heCB8IERQX1RSQUlOX01BWF9TV0lOR19SRUFD
SEVEOw0KPiA+ID4gIA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
