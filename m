Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D50210141
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 03:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330626E5AE;
	Wed,  1 Jul 2020 01:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5464C6E5AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 01:07:04 +0000 (UTC)
IronPort-SDR: ZaF1eoR93YmB8QJeZJfWyoT4+taFhT47RFMLNxe+Isf41SR+P91gVQeQA39qRh0n2GDfinR3J7
 0ECB95faezgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="207943782"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="207943782"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 18:07:01 -0700
IronPort-SDR: EHumcT7L0ZqUhjKJ8Yn0jM11UYFnW7FhrlUxdQPSTcJfnUhiGAYHEh9VcDedCeHAYCmS0m4BTt
 7KTdXS3UERQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="321585914"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2020 18:01:11 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.18]) with mapi id 14.03.0439.000;
 Tue, 30 Jun 2020 18:01:11 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement WA 18011464164
Thread-Index: AQHWTlr9trEBMPjOF0Opujid/DQF+qjxrgAAgACxTgA=
Date: Wed, 1 Jul 2020 01:01:09 +0000
Message-ID: <882bf063c9717e88afe9675e8d972940600ab805.camel@intel.com>
References: <20200629212059.108460-1-jose.souza@intel.com>
 <20200630142812.GF6112@intel.com>
In-Reply-To: <20200630142812.GF6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.76.92]
Content-ID: <0AF0235A172EF249AA01FE58F87AB44A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement WA 18011464164
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

T24gVHVlLCAyMDIwLTA2LTMwIGF0IDE3OjI4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgSnVuIDI5LCAyMDIwIGF0IDAyOjIwOjU4UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gVGhpcyBmaXggc29tZSBwb3NzaWJsZSBjb3JydXB0aW9u
cy4NCj4gPiANCj4gPiBCU3BlYzogNTI3NTUNCj4gPiBCU3BlYzogNTI4OTANCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDMgKysrDQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA4ICsrKysrKystDQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IGluZGV4IDI4NGFmMGM2NDM5Yy4uNzk3ZTAzNmZhNjk1
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gQEAgLTQxNzAsNiArNDE3
MCw5IEBAIGVudW0gew0KPiA+ICAjZGVmaW5lIElORl9VTklUX0xFVkVMX0NMS0dBVEUJCV9NTUlP
KDB4OTU2MCkNCj4gPiAgI2RlZmluZSAgIENHUFNGX0NMS0dBVEVfRElTCQkoMSA8PCAzKQ0KPiA+
ICANCj4gPiArI2RlZmluZSBTTElDRV9VTklUX0xFVkVMX0NMT0NLX0dBVElOR19DVEwJX01NSU8o
MHg5NEQ4KQ0KPiA+ICsjZGVmaW5lICAgR1NfVU5JVF9DTE9DS19HQVRJTkdfRElTCQlSRUdfQklU
KDI0KQ0KPiA+ICsNCj4gPiAgLyoNCj4gPiAgICogRGlzcGxheSBlbmdpbmUgcmVncw0KPiA+ICAg
Ki8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBpbmRleCAyYTMyZDYyMzA3OTUuLjg2
NDA4MTczYzQzNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IEBAIC03
MTEzLDcgKzcxMTMsNyBAQCBzdGF0aWMgdm9pZCB0Z2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAJSTkxNV9XUklURShQT1dFUkdBVEVf
RU5BQkxFLA0KPiA+ICAJCSAgIEk5MTVfUkVBRChQT1dFUkdBVEVfRU5BQkxFKSB8IHZkX3BnX2Vu
YWJsZSk7DQo+ID4gIA0KPiA+IC0JLyogV2FfMTQwOTgyNTM3Njp0Z2wgKHByZS1wcm9kKSovDQo+
ID4gKwkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpICovDQo+ID4gIAlpZiAoSVNfVEdM
X1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkpDQo+ID4gIAkJSTkx
NV9XUklURShHRU45X0NMS0dBVEVfRElTXzMsIEk5MTVfUkVBRChHRU45X0NMS0dBVEVfRElTXzMp
IHwNCj4gPiAgCQkJICAgVEdMX1ZSSF9HQVRJTkdfRElTKTsNCj4gPiBAQCAtNzEyMSw2ICs3MTIx
LDEyIEBAIHN0YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gIAkvKiBXYV8xNDAxMTA1OTc4ODp0Z2wgKi8NCj4gPiAg
CWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdFTjEwX0RGUl9SQVRJT19FTl9B
TkRfQ0hJQ0tFTiwNCj4gPiAgCQkJIDAsIERGUl9ESVNBQkxFKTsNCj4gPiArDQo+ID4gKwkvKiBX
YV8xODAxMTQ2NDE2NDp0Z2wgKi8NCj4gPiArCWlmIChJU19UR0xfUkVWSUQoZGV2X3ByaXYsIFRH
TF9SRVZJRF9CMCwgVEdMX1JFVklEX0IwKSkNCj4gPiArCQlpbnRlbF91bmNvcmVfcm13KCZkZXZf
cHJpdi0+dW5jb3JlLA0KPiA+ICsJCQkJIFNMSUNFX1VOSVRfTEVWRUxfQ0xPQ0tfR0FUSU5HX0NU
TCwgMCwNCj4gPiArCQkJCSBHU19VTklUX0NMT0NLX0dBVElOR19ESVMpOw0KPiANCj4gVGhpcyBs
b29rcyBsaWtlIGEgZ3Qgdy9hLCBzbyBzaG91bGRuJ3QgYmUgaGVyZSBwcmVvYmFibHkuIFdlIGFs
c28gaGF2ZQ0KPiBhIHZlcnkgc2ltaWxhcmx5IG5hbWVkIHJlZ2lzdGVyIGFscmVhZHkgYXQgMHg5
NGQ0LCBzbyB0aGUgcmVnaXN0ZXINCj4gbmFtZSBwcm9iYWJseSBuZWVkcyBzb21lIHdvcmsgdG9v
Lg0KDQpXZSByZWdpc3RlciBpbiB0aGUgc2FtZSBjbGFzcyBhcyB0aGlzIG9uZSBiZWluZyBzZXQg
aW4gY2xvY2tfZ2F0aW5nIGZ1bmN0aW9ucyBhbmQgYXMgdGhpcyBvbmUgaGF2ZSAiQ3VzdG9tR1RJ
SXNfQ29udGV4dFNhdmVkOiB0cnVlIiB3ZSBkb24ndCBuZWVkIHRvDQp3b3JyeSBhYm91dCByZXBy
b2dyYW0gaXQgYWZ0ZXIgYSByZXNldC5BYm91dCB0aGUgbmFtZSB5b3UgYXJlIHJpZ2h0LCByZW5h
bWluZyB0byBTTElDRV9VTklUX0xFVkVMX0NMS0dBVEVfQ1RMXzk0RDggYXMgQlNwZWMgYWRkcyB0
aGUgb2Zmc2V0IHRvIHRoZQ0KbmFtZSBhcyB0aGVyZSBpcyBhIGJ1bmNoIG9mIFNMSUNFX1VOSVRf
TEVWRUxfQ0xLR0FURV9DVEwgcmVnaXN0ZXJzLg0KDQo+IA0KPiA+ICB9DQo+ID4gIA0KPiA+ICBz
dGF0aWMgdm9pZCBjbnBfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQ0KPiA+IC0tIA0KPiA+IDIuMjcuMA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
