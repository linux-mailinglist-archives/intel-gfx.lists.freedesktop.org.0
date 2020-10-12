Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1686528BF7E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 20:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6684089F08;
	Mon, 12 Oct 2020 18:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F5589F08
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 18:15:57 +0000 (UTC)
IronPort-SDR: jCp3MBEyVEHsxP7Uc4nBJJ34D3gMH7NsyLOQMRpFwIWkaOoRf8dAjwgczXsTSwAWXjkU3biDKN
 tQfVQTjJ5QkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165894832"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="165894832"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 11:15:57 -0700
IronPort-SDR: gTU7UTwqRjl7GAhssxGjNHTe+64LghBNsNi15YtY5rt+egKG5vfEDIS1otOUfk3Bk/T8QGIZ3T
 Z8gDAtB2s7Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="519697838"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga006.fm.intel.com with ESMTP; 12 Oct 2020 11:15:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 19:15:54 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 12 Oct 2020 11:15:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl/psr: Fix glitches when doing frontbuffer
 modifications
Thread-Index: AQHWmRGb3bNA9PFIYkOE8kzP/SsnNqmUyb2AgAAB5oA=
Date: Mon, 12 Oct 2020 18:15:53 +0000
Message-ID: <bd954c1ad9450a1349d93fa72fb3d78499f9ee7a.camel@intel.com>
References: <20201002231627.24528-1-jose.souza@intel.com>
 <0a6512af6a75482743b8fe5b353f253a361c18ce.camel@intel.com>
In-Reply-To: <0a6512af6a75482743b8fe5b353f253a361c18ce.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6B113D14266D504792BBCCF4763801FB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl/psr: Fix glitches when doing
 frontbuffer modifications
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

T24gTW9uLCAyMDIwLTEwLTEyIGF0IDE5OjEyICswMTAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiBBZnRlciBhcHBseWluZyB0aGlzIHBhdGNoLCB0aGUgcHNyIHNjcmVlbiBnbGl0Y2ggaXNz
dWUgaXMgc3RpbGwgc2Vlbi4NCg0KU2FtZSBJT01NVSBlcnJvcnMgdG9vPyBJbiBteSBlbmQgaXQg
aXMgZml4ZWQuDQpDYW4geW91IGFsc28gZ2l2ZSBhIHRyeSB3aXRob3V0IHRoZSBETUMgZmlybXdh
cmUgYW5kIHdpdGhvdXQgdGhpcyBjaGFuZ2VzPw0KDQoNCj4gT24gRnJpLCAyMDIwLTEwLTAyIGF0
IDE2OjE2IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiA+IFdyaXRlcyB0
byBDVVJTVVJGTElWRSBpbiBUR0wgYXJlIGNhdXNpbmcgSU9NTVUgZXJyb3JzIGFuZCB2aXN1YWwN
Cj4gPiBnbGl0Y2hlcyB0aGF0IGFyZSBvZnRlbiByZXByb2R1Y2VkIHdoZW4gZXhlY3V0aW5nIENQ
VSBpbnRlbnNpdmUNCj4gPiB3b3JrbG9hZHMgd2hpbGUgYSBlRFAgNEsgcGFuZWwgaXMgYXR0YWNo
ZWQuDQo+ID4gDQo+ID4gTWFudWFsbHkgZXhpdGluZyBQU1IgY2F1c2VzIHRoZSBmcm9udGJ1ZmZl
ciB0byBiZSB1cGRhdGVkIHdpdGhvdXQNCj4gPiBnbGl0Y2hlcyBhbmQgdGhlIElPTU1VIGVycm9y
cyBhcmUgYWxzbyBnb25lIGJ1dCB0aGlzIGNvbWVzIGF0IHRoZQ0KPiA+IGNvc3QNCj4gPiBvZiBs
ZXNzIHRpbWUgd2l0aCBQU1IgYWN0aXZlLg0KPiA+IA0KPiA+IFNvIHVzaW5nIHRoaXMgd29ya2Fy
b3VuZCB1bnRpbCB0aGlzIGlzc3VlIGlzIHJvb3QgY2F1c2VkIGFuZCBhIGJldHRlcg0KPiA+IGZp
eCBpcyBmb3VuZC4NCj4gPiANCj4gPiBUaGUgY3VycmVudCBjb2RlIGlzIGFscmVhZHkgcmVhZHkg
dG8gZW5hYmxlIFBTUiBhZnRlciB0aGlzIGV4aXQgaWYNCj4gPiB0aGVyZSBpcyBub3Qgb3RoZXIg
ZnJvbnRidWZmZXIgbW9kaWZpY2F0aW9ucy4NCj4gPiANCj4gPiBBZGRpbmcgYSBuZXcgaWYgYmxv
Y2sgaW4gcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoKSBpbnN0ZWFkIG9mDQo+ID4gcmV1c2UN
Cj4gPiB0aGUgZWxzZS9nZW44LSBibG9jayBiZWNhdXNlIHRoZSBwbGFuIGlzIHRvIHJldmVydCB0
aGlzIHdvcmthcm91bmQNCj4gPiBhcyBzb29uIGFzIGEgYmV0dGVyIHNvbHV0aW9uIGlzIGZvdW5k
Lg0KPiA+IA0KPiA+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5j
b20+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMTYgKysrKysrKysrKysrKysrLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDhhOWQwYmRkZTFiZi4u
ODYzMDEyMWRiYmJlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gQEAgLTExNTIsNyArMTE1MiwyMSBAQCB2b2lkIGludGVsX3Bzcl9kaXNh
YmxlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoA0KPiA+IA0KPiA+IA0K
PiA+IA0KPiA+IMKgc3RhdGljIHZvaWQgcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYpDQo+ID4gwqB7DQo+ID4gLQlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA5KQ0KPiA+ICsJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikp
DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBXcml0ZXMgdG8gQ1VSU1VSRkxJVkUgaW4gVEdMIGFyZSBj
YXVzaW5nIElPTU1VDQo+ID4gZXJyb3JzIGFuZA0KPiA+ICsJCSAqIHZpc3VhbCBnbGl0Y2hlcyB0
aGF0IGFyZSBvZnRlbiByZXByb2R1Y2VkIHdoZW4NCj4gPiBleGVjdXRpbmcNCj4gPiArCQkgKiBD
UFUgaW50ZW5zaXZlIHdvcmtsb2FkcyB3aGlsZSBhIGVEUCA0SyBwYW5lbCBpcw0KPiA+IGF0dGFj
aGVkLg0KPiA+ICsJCSAqDQo+ID4gKwkJICogTWFudWFsbHkgZXhpdGluZyBQU1IgY2F1c2VzIHRo
ZSBmcm9udGJ1ZmZlciB0byBiZQ0KPiA+IHVwZGF0ZWQNCj4gPiArCQkgKiB3aXRob3V0IGdsaXRj
aGVzIGFuZCB0aGUgSU9NTVUgZXJyb3JzIGFyZSBhbHNvIGdvbmUNCj4gPiBidXQNCj4gPiArCQkg
KiB0aGlzIGNvbWVzIGF0IHRoZSBjb3N0IG9mIGxlc3MgdGltZSB3aXRoIFBTUiBhY3RpdmUuDQo+
ID4gKwkJICoNCj4gPiArCQkgKiBTbyB1c2luZyB0aGlzIHdvcmthcm91bmQgdW50aWwgdGhpcyBp
c3N1ZSBpcyByb290DQo+ID4gY2F1c2VkDQo+ID4gKwkJICogYW5kIGEgYmV0dGVyIGZpeCBpcyBm
b3VuZC4NCj4gPiArCQkgKi8NCj4gPiArCQlpbnRlbF9wc3JfZXhpdChkZXZfcHJpdik7DQo+ID4g
KwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpDQo+ID4gwqAJCS8qDQo+ID4gwqAJ
CSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNrbCsNCj4gPiDCoAkJICogVGhpcyBkb2N1bWVudGVkIFdB
IGZvciBieHQgY2FuIGJlIHNhZmVseSBhcHBsaWVkDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
