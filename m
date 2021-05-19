Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EE13899EB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 01:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52A46E452;
	Wed, 19 May 2021 23:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05106E452
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 23:34:04 +0000 (UTC)
IronPort-SDR: lKsLX4manFQG6B8Zo/+zVT3Wso5PMCcz3JbUgkMGITE+JMqpw1Aqd7+qSeUSvt8qXTaZPP9EWa
 LAbdf7pGqA/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="188510260"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188510260"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 16:34:03 -0700
IronPort-SDR: orxZPUR8wog2q+2jHhqPKRDxSrqoaVMq3Zg7HjuM2u0bV6ppHYucUg+f+oLCsGYrxnCvTdjy+0
 B2qcBJWkuBOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473724248"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2021 16:34:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 16:34:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 16:34:02 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Wed, 19 May 2021 16:34:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/fbc: Don't nuke manually around
 flips
Thread-Index: AQHXQfHjc19whpVRyEmN6nRJRtQsC6rsAUOA
Date: Wed, 19 May 2021 23:34:02 +0000
Message-ID: <3267c7bb075257d5dbc480869bfcdf331bff859c.camel@intel.com>
References: <20210505210107.29281-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210505210107.29281-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <D4EB8B2C953AF04B8395B6DA90305D20@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Don't nuke manually around
 flips
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

T24gVGh1LCAyMDIxLTA1LTA2IGF0IDAwOjAxICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQXBwYXJlbnRseSB3ZSBoYXZlIGRpc2NvdmVyZWQgYW5vdGhlciB3YXkgdG8gaGl0IHRo
ZSBkcmVhZGVkDQo+IHRvcCBvZiBzY3JlZW4gRkJDIGNvcnJ1cHRpb24gb24gR0xLLiBQcmV2aW91
c2x5IHdlIHRob3VnaHQgaXQNCj4gd2FzIGxpbWl0ZWQgdG8gc29tZSBjb21iaW5hdGlvbiBvZiBG
QkMgbnVrZStkaXNhYmxlK3BsYW5lIHVwZGF0ZQ0KPiBkdXJpbmcgdGhlIHNhbWUgZnJhbWUsIGZv
ciB3aGljaCB3ZSBoYXZlIHRoZSBleHRyYSB2Ymxhbmsgd2FpdA0KPiBhcyBhIHdvcmthcm91bmQu
IEJ1dCBsb29rcyBsaWtlIGl0IGNhbiBzb21laG93IGJlIGhpdCBldmVuDQo+IHdpdGhvdXQgdGhl
IEZCQyBkaXNhYmxlLg0KPiANCj4gU2tpcHBpbmcgdGhlIGV4dHJhIG1hbnVhbCBudWtlIGltbWVk
aWF0ZWx5IGFmdGVyIHBhZ2UgZmxpcHMgc2VlbXMNCj4gdG8gY3VyZSB0aGlzLiBUaGUgbWFudWFs
IG51a2Ugc2hvdWxkbid0IGJlIG5lZWRlZCBhbnl3YXkgc2luY2UgdGhlDQo+IGZsaXAgaXRzZWxm
IHdpbGwgYWxyZWFkeSBjYXVzZSBhIG51a2UuIEkgc3VwcG9zZSB0aGlzIG1lYW5zIGl0IG1pZ2h0
DQo+IHN0aWxsIGJlIHBvc3NpYmxlIHRvIGhpdCB0aGlzIGlmIHlvdSBtaXggcGFnZSBmbGlwcyBh
bmQgZnJvbnRidWZmZXINCj4gcmVuZGVyaW5nIGluIGNsZXZlciB3YXlzLCBidXQgYXQgbGVhc3Qg
aXQncyBhIGJpdCBsZXNzIGxpa2VseSBub3cuDQoNCm1ha2VzIHNlbnNlLCBSZXZpZXdlZC1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCllvdSBtaXNz
ZWQgeW91ciBTaWduZWQtb2ZmLWJ5IGhlcmUuDQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTggKysrKysrKysrKystLS0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBiMmYzYWM4NDZmNWIu
LjMyNTE0MDNiNTIxZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+IEBAIC0yMzMsNyArMjMzLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX3JlY29t
cHJlc3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgDQo+ICBzdGF0aWMg
dm9pZCBpbGtfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikN
Cj4gIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZkZXZfcHJp
di0+ZmJjLnBhcmFtczsNCj4gKwlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAmZGV2X3ByaXYtPmZi
YzsNCj4gKwlzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZmYmMtPnBhcmFt
czsNCj4gIAl1MzIgZHBmY19jdGw7DQo+ICAJaW50IHRocmVzaG9sZCA9IGRldl9wcml2LT5mYmMu
dGhyZXNob2xkOw0KPiAgDQo+IEBAIC0yNzYsNyArMjc3LDggQEAgc3RhdGljIHZvaWQgaWxrX2Zi
Y19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJLyogZW5h
YmxlIGl0Li4uICovDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIElMS19EUEZDX0NPTlRS
T0wsIGRwZmNfY3RsIHwgRFBGQ19DVExfRU4pOw0KPiAgDQo+IC0JaW50ZWxfZmJjX3JlY29tcHJl
c3MoZGV2X3ByaXYpOw0KPiArCWlmICghZmJjLT5hY3RpdmUpDQo+ICsJCWludGVsX2ZiY19yZWNv
bXByZXNzKGRldl9wcml2KTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgaWxrX2ZiY19kZWFj
dGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gQEAgLTI5OCw3ICsz
MDAsOCBAQCBzdGF0aWMgYm9vbCBpbGtfZmJjX2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpDQo+ICANCj4gIHN0YXRpYyB2b2lkIGdlbjdfZmJjX2FjdGl2YXRlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIHsNCj4gLQlzdHJ1Y3QgaW50ZWxf
ZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZkZXZfcHJpdi0+ZmJjLnBhcmFtczsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZmJjICpmYmMgPSAmZGV2X3ByaXYtPmZiYzsNCj4gKwlzdHJ1Y3QgaW50ZWxfZmJj
X3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsNCj4gIAl1MzIgZHBmY19jdGw7DQo+
ICAJaW50IHRocmVzaG9sZCA9IGRldl9wcml2LT5mYmMudGhyZXNob2xkOw0KPiAgDQo+IEBAIC0z
NTAsNyArMzUzLDggQEAgc3RhdGljIHZvaWQgZ2VuN19mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYs
IElMS19EUEZDX0NPTlRST0wsIGRwZmNfY3RsIHwgRFBGQ19DVExfRU4pOw0KPiAgDQo+IC0JaW50
ZWxfZmJjX3JlY29tcHJlc3MoZGV2X3ByaXYpOw0KPiArCWlmICghZmJjLT5hY3RpdmUpDQo+ICsJ
CWludGVsX2ZiY19yZWNvbXByZXNzKGRldl9wcml2KTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIGJv
b2wgaW50ZWxfZmJjX2h3X2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+IEBAIC0zNjksOSArMzczLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX2h3X2FjdGl2
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIA0KPiAgCXRyYWNlX2lu
dGVsX2ZiY19hY3RpdmF0ZShmYmMtPmNydGMpOw0KPiAgDQo+IC0JZmJjLT5hY3RpdmUgPSB0cnVl
Ow0KPiAtCWZiYy0+YWN0aXZhdGVkID0gdHJ1ZTsNCj4gLQ0KPiAgCWlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gNykNCj4gIAkJZ2VuN19mYmNfYWN0aXZhdGUoZGV2X3ByaXYpOw0KPiAgCWVs
c2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA1KQ0KPiBAQCAtMzgwLDYgKzM4MSw5IEBA
IHN0YXRpYyB2b2lkIGludGVsX2ZiY19od19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpDQo+ICAJCWc0eF9mYmNfYWN0aXZhdGUoZGV2X3ByaXYpOw0KPiAgCWVsc2UN
Cj4gIAkJaTh4eF9mYmNfYWN0aXZhdGUoZGV2X3ByaXYpOw0KPiArDQo+ICsJZmJjLT5hY3RpdmUg
PSB0cnVlOw0KPiArCWZiYy0+YWN0aXZhdGVkID0gdHJ1ZTsNCj4gIH0NCj4gIA0KPiAgc3RhdGlj
IHZvaWQgaW50ZWxfZmJjX2h3X2RlYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
