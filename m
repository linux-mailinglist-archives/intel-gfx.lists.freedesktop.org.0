Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1B028BF72
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 20:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B6989CDE;
	Mon, 12 Oct 2020 18:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A9789CDE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 18:12:40 +0000 (UTC)
IronPort-SDR: Ge8rhmdIqSQtGlMMiCvYg/HPwFvcj4xSoIMSBlJ6fivVQA15RuMTsIJ2MVib0w3LGgO2KqvutG
 8Ql1JMxobT6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="152711697"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="152711697"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 11:12:40 -0700
IronPort-SDR: Rv4AXCpIZI8JygPngqKzZUnp5IJoNPqsfxPYWBi+hfTW1K4a36MSahBAkwkhPO7WliHTmpm7Mw
 bJ7j7fAx3esA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="299297370"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 12 Oct 2020 11:12:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 11:12:39 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 11:12:38 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 12 Oct 2020 19:12:37 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl/psr: Fix glitches when doing frontbuffer
 modifications
Thread-Index: AQHWmRGcJfsikW/C9ECRafrcV5tk4KmUQ50A
Date: Mon, 12 Oct 2020 18:12:37 +0000
Message-ID: <0a6512af6a75482743b8fe5b353f253a361c18ce.camel@intel.com>
References: <20201002231627.24528-1-jose.souza@intel.com>
In-Reply-To: <20201002231627.24528-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <BD55033B60DBD9458C1358F3F5E3DF74@intel.com>
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

QWZ0ZXIgYXBwbHlpbmcgdGhpcyBwYXRjaCwgdGhlIHBzciBzY3JlZW4gZ2xpdGNoIGlzc3VlIGlz
IHN0aWxsIHNlZW4uDQpPbiBGcmksIDIwMjAtMTAtMDIgYXQgMTY6MTYgLTA3MDAsIEpvc8OpIFJv
YmVydG8gZGUgU291emEgd3JvdGU6DQo+IFdyaXRlcyB0byBDVVJTVVJGTElWRSBpbiBUR0wgYXJl
IGNhdXNpbmcgSU9NTVUgZXJyb3JzIGFuZCB2aXN1YWwNCj4gZ2xpdGNoZXMgdGhhdCBhcmUgb2Z0
ZW4gcmVwcm9kdWNlZCB3aGVuIGV4ZWN1dGluZyBDUFUgaW50ZW5zaXZlDQo+IHdvcmtsb2FkcyB3
aGlsZSBhIGVEUCA0SyBwYW5lbCBpcyBhdHRhY2hlZC4NCj4gDQo+IE1hbnVhbGx5IGV4aXRpbmcg
UFNSIGNhdXNlcyB0aGUgZnJvbnRidWZmZXIgdG8gYmUgdXBkYXRlZCB3aXRob3V0DQo+IGdsaXRj
aGVzIGFuZCB0aGUgSU9NTVUgZXJyb3JzIGFyZSBhbHNvIGdvbmUgYnV0IHRoaXMgY29tZXMgYXQg
dGhlDQo+IGNvc3QNCj4gb2YgbGVzcyB0aW1lIHdpdGggUFNSIGFjdGl2ZS4NCj4gDQo+IFNvIHVz
aW5nIHRoaXMgd29ya2Fyb3VuZCB1bnRpbCB0aGlzIGlzc3VlIGlzIHJvb3QgY2F1c2VkIGFuZCBh
IGJldHRlcg0KPiBmaXggaXMgZm91bmQuDQo+IA0KPiBUaGUgY3VycmVudCBjb2RlIGlzIGFscmVh
ZHkgcmVhZHkgdG8gZW5hYmxlIFBTUiBhZnRlciB0aGlzIGV4aXQgaWYNCj4gdGhlcmUgaXMgbm90
IG90aGVyIGZyb250YnVmZmVyIG1vZGlmaWNhdGlvbnMuDQo+IA0KPiBBZGRpbmcgYSBuZXcgaWYg
YmxvY2sgaW4gcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoKSBpbnN0ZWFkIG9mDQo+IHJldXNl
DQo+IHRoZSBlbHNlL2dlbjgtIGJsb2NrIGJlY2F1c2UgdGhlIHBsYW4gaXMgdG8gcmV2ZXJ0IHRo
aXMgd29ya2Fyb3VuZA0KPiBhcyBzb29uIGFzIGEgYmV0dGVyIHNvbHV0aW9uIGlzIGZvdW5kLg0K
PiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAx
NiArKysrKysrKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGluZGV4IDhhOWQwYmRkZTFiZi4uODYzMDEyMWRiYmJlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTExNTIsNyArMTE1Miwy
MSBAQCB2b2lkIGludGVsX3Bzcl9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAs
DQo+ICANCj4gIHN0YXRpYyB2b2lkIHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdikNCj4gIHsNCj4gLQlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSA5KQ0KPiArCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQ0KPiArCQkvKg0K
PiArCQkgKiBXcml0ZXMgdG8gQ1VSU1VSRkxJVkUgaW4gVEdMIGFyZSBjYXVzaW5nIElPTU1VDQo+
IGVycm9ycyBhbmQNCj4gKwkJICogdmlzdWFsIGdsaXRjaGVzIHRoYXQgYXJlIG9mdGVuIHJlcHJv
ZHVjZWQgd2hlbg0KPiBleGVjdXRpbmcNCj4gKwkJICogQ1BVIGludGVuc2l2ZSB3b3JrbG9hZHMg
d2hpbGUgYSBlRFAgNEsgcGFuZWwgaXMNCj4gYXR0YWNoZWQuDQo+ICsJCSAqDQo+ICsJCSAqIE1h
bnVhbGx5IGV4aXRpbmcgUFNSIGNhdXNlcyB0aGUgZnJvbnRidWZmZXIgdG8gYmUNCj4gdXBkYXRl
ZA0KPiArCQkgKiB3aXRob3V0IGdsaXRjaGVzIGFuZCB0aGUgSU9NTVUgZXJyb3JzIGFyZSBhbHNv
IGdvbmUNCj4gYnV0DQo+ICsJCSAqIHRoaXMgY29tZXMgYXQgdGhlIGNvc3Qgb2YgbGVzcyB0aW1l
IHdpdGggUFNSIGFjdGl2ZS4NCj4gKwkJICoNCj4gKwkJICogU28gdXNpbmcgdGhpcyB3b3JrYXJv
dW5kIHVudGlsIHRoaXMgaXNzdWUgaXMgcm9vdA0KPiBjYXVzZWQNCj4gKwkJICogYW5kIGEgYmV0
dGVyIGZpeCBpcyBmb3VuZC4NCj4gKwkJICovDQo+ICsJCWludGVsX3Bzcl9leGl0KGRldl9wcml2
KTsNCj4gKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpDQo+ICAJCS8qDQo+ICAJ
CSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNrbCsNCj4gIAkJICogVGhpcyBkb2N1bWVudGVkIFdBIGZv
ciBieHQgY2FuIGJlIHNhZmVseSBhcHBsaWVkDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
