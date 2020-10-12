Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7AC28C07B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 21:04:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CEC06E575;
	Mon, 12 Oct 2020 19:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C876E575
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 19:04:47 +0000 (UTC)
IronPort-SDR: bzGNJxobp1aiK3STT4mvF5tFI5QexwEYYb4sDBjM29wzjJoPOF3ex3zlju83qPYDLF+s6Pxhg9
 +2peeIYBsESA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="162322721"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="162322721"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 12:04:46 -0700
IronPort-SDR: 5SPjp4FVKYB/1MW/Ugj+RnqSqCiCqF0937VmW9jcexRWhgWA2/h1hk0VMR6WN8cqgzJj4PJC0J
 OAzIz3kfYESA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="299372523"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 12 Oct 2020 12:04:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 12:04:45 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 12:04:44 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 12 Oct 2020 20:04:43 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl/psr: Fix glitches when doing frontbuffer
 modifications
Thread-Index: AQHWmRGcJfsikW/C9ECRafrcV5tk4KmUQ50AgAAA7YCAAA2hAA==
Date: Mon, 12 Oct 2020 19:04:43 +0000
Message-ID: <07fbe6245ecc3d8af7fa1274eb8759549f69bba1.camel@intel.com>
References: <20201002231627.24528-1-jose.souza@intel.com>
 <0a6512af6a75482743b8fe5b353f253a361c18ce.camel@intel.com>
 <bd954c1ad9450a1349d93fa72fb3d78499f9ee7a.camel@intel.com>
In-Reply-To: <bd954c1ad9450a1349d93fa72fb3d78499f9ee7a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <F692E0C862B12A489E87EB830D42176C@intel.com>
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

T24gTW9uLCAyMDIwLTEwLTEyIGF0IDExOjE1IC0wNzAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gTW9uLCAyMDIwLTEwLTEyIGF0IDE5OjEyICswMTAwLCBNdW4sIEd3YW4tZ3llb25nIHdyb3Rl
Og0KPiA+IEFmdGVyIGFwcGx5aW5nIHRoaXMgcGF0Y2gsIHRoZSBwc3Igc2NyZWVuIGdsaXRjaCBp
c3N1ZSBpcyBzdGlsbA0KPiA+IHNlZW4uDQo+IA0KPiBTYW1lIElPTU1VIGVycm9ycyB0b28/IElu
IG15IGVuZCBpdCBpcyBmaXhlZC4NCj4gQ2FuIHlvdSBhbHNvIGdpdmUgYSB0cnkgd2l0aG91dCB0
aGUgRE1DIGZpcm13YXJlIGFuZCB3aXRob3V0IHRoaXMNCj4gY2hhbmdlcz8NCj4gDQotIFJlc3Vs
dCB3aXRoIERNQyBmaXJtd2FyZSAodGdsX2RtY192ZXIyXzA4LmJpbiwgdGhlIGxhdGVzdCBkcm0t
dGlwDQpyZXF1aXJlcyB0aGlzIHZlcnNpb24pIHNob3dlcyBQU1Igc2NyZWVuIGdsaXRjaCBpc3N1
ZS4NCi0gUmVzdWx0IHdpdGhvdXQgRE1DIGZpcm13YXJlIGRvZXMgbm90IHNob3cgUFNSIHNjcmVl
biBnbGl0Y2ggaXNzdWUuDQo+IA0KPiA+IE9uIEZyaSwgMjAyMC0xMC0wMiBhdCAxNjoxNiAtMDcw
MCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IFdyaXRlcyB0byBDVVJTVVJG
TElWRSBpbiBUR0wgYXJlIGNhdXNpbmcgSU9NTVUgZXJyb3JzIGFuZCB2aXN1YWwNCj4gPiA+IGds
aXRjaGVzIHRoYXQgYXJlIG9mdGVuIHJlcHJvZHVjZWQgd2hlbiBleGVjdXRpbmcgQ1BVIGludGVu
c2l2ZQ0KPiA+ID4gd29ya2xvYWRzIHdoaWxlIGEgZURQIDRLIHBhbmVsIGlzIGF0dGFjaGVkLg0K
PiA+ID4gDQo+ID4gPiBNYW51YWxseSBleGl0aW5nIFBTUiBjYXVzZXMgdGhlIGZyb250YnVmZmVy
IHRvIGJlIHVwZGF0ZWQgd2l0aG91dA0KPiA+ID4gZ2xpdGNoZXMgYW5kIHRoZSBJT01NVSBlcnJv
cnMgYXJlIGFsc28gZ29uZSBidXQgdGhpcyBjb21lcyBhdCB0aGUNCj4gPiA+IGNvc3QNCj4gPiA+
IG9mIGxlc3MgdGltZSB3aXRoIFBTUiBhY3RpdmUuDQo+ID4gPiANCj4gPiA+IFNvIHVzaW5nIHRo
aXMgd29ya2Fyb3VuZCB1bnRpbCB0aGlzIGlzc3VlIGlzIHJvb3QgY2F1c2VkIGFuZCBhDQo+ID4g
PiBiZXR0ZXINCj4gPiA+IGZpeCBpcyBmb3VuZC4NCj4gPiA+IA0KPiA+ID4gVGhlIGN1cnJlbnQg
Y29kZSBpcyBhbHJlYWR5IHJlYWR5IHRvIGVuYWJsZSBQU1IgYWZ0ZXIgdGhpcyBleGl0DQo+ID4g
PiBpZg0KPiA+ID4gdGhlcmUgaXMgbm90IG90aGVyIGZyb250YnVmZmVyIG1vZGlmaWNhdGlvbnMu
DQo+ID4gPiANCj4gPiA+IEFkZGluZyBhIG5ldyBpZiBibG9jayBpbiBwc3JfZm9yY2VfaHdfdHJh
Y2tpbmdfZXhpdCgpIGluc3RlYWQgb2YNCj4gPiA+IHJldXNlDQo+ID4gPiB0aGUgZWxzZS9nZW44
LSBibG9jayBiZWNhdXNlIHRoZSBwbGFuIGlzIHRvIHJldmVydCB0aGlzDQo+ID4gPiB3b3JrYXJv
dW5kDQo+ID4gPiBhcyBzb29uIGFzIGEgYmV0dGVyIHNvbHV0aW9uIGlzIGZvdW5kLg0KPiA+ID4g
DQo+ID4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0K
PiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCAxNiArKysrKysrKysrKysrKystDQo+ID4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggOGE5
ZDBiZGRlMWJmLi44NjMwMTIxZGJiYmUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtMTE1Miw3ICsxMTUyLDIxIEBAIHZv
aWQgaW50ZWxfcHNyX2Rpc2FibGUoc3RydWN0IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHAsDQo+
ID4gPiAgDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiAgc3RhdGljIHZvaWQgcHNyX2Zv
cmNlX2h3X3RyYWNraW5nX2V4aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ICpkZXZf
cHJpdikNCj4gPiA+ICB7DQo+ID4gPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpDQo+
ID4gPiArCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQ0KPiA+ID4gKwkJLyoNCj4gPiA+ICsJ
CSAqIFdyaXRlcyB0byBDVVJTVVJGTElWRSBpbiBUR0wgYXJlIGNhdXNpbmcgSU9NTVUNCj4gPiA+
IGVycm9ycyBhbmQNCj4gPiA+ICsJCSAqIHZpc3VhbCBnbGl0Y2hlcyB0aGF0IGFyZSBvZnRlbiBy
ZXByb2R1Y2VkIHdoZW4NCj4gPiA+IGV4ZWN1dGluZw0KPiA+ID4gKwkJICogQ1BVIGludGVuc2l2
ZSB3b3JrbG9hZHMgd2hpbGUgYSBlRFAgNEsgcGFuZWwgaXMNCj4gPiA+IGF0dGFjaGVkLg0KPiA+
ID4gKwkJICoNCj4gPiA+ICsJCSAqIE1hbnVhbGx5IGV4aXRpbmcgUFNSIGNhdXNlcyB0aGUgZnJv
bnRidWZmZXIgdG8gYmUNCj4gPiA+IHVwZGF0ZWQNCj4gPiA+ICsJCSAqIHdpdGhvdXQgZ2xpdGNo
ZXMgYW5kIHRoZSBJT01NVSBlcnJvcnMgYXJlIGFsc28gZ29uZQ0KPiA+ID4gYnV0DQo+ID4gPiAr
CQkgKiB0aGlzIGNvbWVzIGF0IHRoZSBjb3N0IG9mIGxlc3MgdGltZSB3aXRoIFBTUiBhY3RpdmUu
DQo+ID4gPiArCQkgKg0KPiA+ID4gKwkJICogU28gdXNpbmcgdGhpcyB3b3JrYXJvdW5kIHVudGls
IHRoaXMgaXNzdWUgaXMgcm9vdA0KPiA+ID4gY2F1c2VkDQo+ID4gPiArCQkgKiBhbmQgYSBiZXR0
ZXIgZml4IGlzIGZvdW5kLg0KPiA+ID4gKwkJICovDQo+ID4gPiArCQlpbnRlbF9wc3JfZXhpdChk
ZXZfcHJpdik7DQo+ID4gPiArCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkNCj4g
PiA+ICAJCS8qDQo+ID4gPiAgCQkgKiBEaXNwbGF5IFdBICMwODg0OiBza2wrDQo+ID4gPiAgCQkg
KiBUaGlzIGRvY3VtZW50ZWQgV0EgZm9yIGJ4dCBjYW4gYmUgc2FmZWx5IGFwcGxpZWQNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
