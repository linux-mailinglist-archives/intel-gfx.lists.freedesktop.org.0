Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 872F31211C8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 18:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852D66E84A;
	Mon, 16 Dec 2019 17:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA0E6E84A
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 17:33:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 09:33:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="297772549"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 16 Dec 2019 09:33:11 -0800
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Dec 2019 09:33:11 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.125]) with mapi id 14.03.0439.000;
 Mon, 16 Dec 2019 09:33:10 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 rebased 10/11] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
Thread-Index: AQHVsFMthEZyMk6gMUS8Ok9aQ2Dd36e3i6gAgAYHkAA=
Date: Mon, 16 Dec 2019 17:33:09 +0000
Message-ID: <6a178525e33a46eb744393d0af2ed6393c1a0404.camel@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-10-jose.souza@intel.com>
 <20191212212830.GW1208@intel.com>
In-Reply-To: <20191212212830.GW1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.102.104]
Content-ID: <DAE71938E737274598A1825B4E83B536@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 rebased 10/11] drm/i915/display: Check if
 pipe fastset is allowed by external dependencies
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTEyLTEyIGF0IDIzOjI4ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDExLCAyMDE5IGF0IDEwOjQ1OjI1QU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gQ2hlY2sgaWYgZmFzdHNldCBpcyBhbGxvd2VkIGJ5
IGV4dGVybmFsIGRlcGVuZGVuY2llcyBsaWtlIG90aGVyDQo+ID4gcGlwZXMNCj4gPiBhbmQgdHJh
bnNjb2RlcnMuDQo+ID4gDQo+ID4gUmlnaHQgbm93IGl0IG9ubHkgZm9yY2VzIGEgZnVsbG1vZGVz
ZXQgd2hlbiB0aGUgTVNUIG1hc3Rlcg0KPiA+IHRyYW5zY29kZXINCj4gPiBkaWQgbm90IGNoYW5n
ZWQgYnV0IHRoZSBwaXBlIG9mIHRoZSBtYXN0ZXIgdHJhbnNjb2RlciBuZWVkcyBhDQo+ID4gZnVs
bG1vZGVzZXQgc28gYWxsIHNsYXZlcyBhbHNvIG5lZWRzIHRvIGRvIGEgZnVsbG1vZGVzZXQuDQo+
ID4gQnV0IGl0IHdpbGwgcHJvYmFibHkgYmUgbmVlZCBmb3IgcG9ydCBzeW5jIGFzIHdlbGwuDQo+
ID4gDQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0K
PiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPg0KPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDQxDQo+ID4gKysrKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDQxIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggMDkyNDEyYjEwZDdjLi4w
YzI0ZDdkZmExNTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xMzkzMCwxMSArMTM5MzAsNTIgQEAgc3RhdGljIGlu
dCBjYWxjX3dhdGVybWFya19kYXRhKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpDQo+ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0KPiA+ICANCj4gPiArLyoqDQo+ID4gKyAqIENo
ZWNrIGlmIGZhc3RzZXQgaXMgYWxsb3dlZCBieSBleHRlcm5hbCBkZXBlbmRlbmNpZXMgbGlrZSBv
dGhlcg0KPiA+IHBpcGVzIGFuZA0KPiA+ICsgKiB0cmFuc2NvZGVycy4NCj4gPiArICoNCj4gPiAr
ICogUmlnaHQgbm93IGl0IG9ubHkgZm9yY2VzIGEgZnVsbG1vZGVzZXQgd2hlbiB0aGUgTVNUIG1h
c3Rlcg0KPiA+IHRyYW5zY29kZXIgZGlkDQo+ID4gKyAqIG5vdCBjaGFuZ2VkIGJ1dCB0aGUgcGlw
ZSBvZiB0aGUgbWFzdGVyIHRyYW5zY29kZXIgbmVlZHMgYQ0KPiA+IGZ1bGxtb2Rlc2V0IHNvDQo+
ID4gKyAqIGFsbCBzbGF2ZXMgYWxzbyBuZWVkcyB0byBkbyBhIGZ1bGxtb2Rlc2V0Lg0KPiA+ICsg
Ki8NCj4gPiArc3RhdGljIGJvb2wNCj4gPiAraW50ZWxfY3J0Y19jaGVja19leHRlcm5hbF9kZXBl
bmRlbmNpZXNfZmFzdHNldChjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSwNCj4gPiArCQkJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
PiAqbmV3X2NydGNfc3RhdGUpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlID0NCj4gPiB0b19pbnRlbF9hdG9taWNfc3RhdGUobmV3X2NydGNfc3RhdGUtPnVh
cGkuc3RhdGUpOw0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShuZXdfY3J0Y19zdGF0ZS0NCj4gPiA+dWFwaS5jcnRjLT5kZXYpOw0KPiA+ICsJc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlX2l0ZXI7DQo+ID4gKwlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0Y19pdGVyOw0KPiA+ICsJaW50IGk7DQo+ID4gKw0KPiA+ICsJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPCAxMikNCj4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiArDQo+ID4gKwlp
ZiAoIWludGVsX2NydGNfaGFzX3R5cGUob2xkX2NydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9N
U1QpDQo+ID4gfHwNCj4gPiArCSAgICBpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKG5ld19j
cnRjX3N0YXRlKSkNCj4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9u
ZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Y19pdGVyLA0KPiA+IG5ld19jcnRjX3N0
YXRlX2l0ZXIsIGkpIHsNCj4gPiArCQlpZiAobmV3X2NydGNfc3RhdGVfaXRlci0+Y3B1X3RyYW5z
Y29kZXIgIT0NCj4gPiArCQkgICAgbmV3X2NydGNfc3RhdGUtPm1zdF9tYXN0ZXJfdHJhbnNjb2Rl
cikNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCXJldHVybiAhbmVlZHNfbW9kZXNl
dChuZXdfY3J0Y19zdGF0ZV9pdGVyKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlEUk1fRVJST1Io
Ik1hc3RlciBNU1QgdHJhbnNjb2RlciBvZiBwaXBlIG5vdCBmb3VuZFxuIik7DQo+ID4gKwlyZXR1
cm4gZmFsc2U7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lkIGludGVsX2NydGNfY2hl
Y2tfZmFzdHNldChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpvbGRfY3J0Y19z
dGF0ZSwNCj4gPiAgCQkJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqbmV3X2Ny
dGNfc3RhdGUpDQo+ID4gIHsNCj4gPiAgCWlmICghaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShv
bGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsDQo+ID4gdHJ1ZSkpDQo+ID4gIAkJcmV0dXJu
Ow0KPiA+ICsJaWYNCj4gPiAoIWludGVsX2NydGNfY2hlY2tfZXh0ZXJuYWxfZGVwZW5kZW5jaWVz
X2Zhc3RzZXQob2xkX2NydGNfc3RhdGUsDQo+ID4gKwkJCQkJCQkgICAgbmV3X2NydGNfc3QNCj4g
PiBhdGUpKQ0KPiA+ICsJCXJldHVybjsNCj4gDQo+IEkgZG9uJ3QgdGhpbmsgdGhpcyB3aWxsIHdv
cmsuIFdlJ3ZlIG5vdCB5ZXQgLmNvbXB1dGVfY29uZmlnKCknZA0KPiBldmVyeXRoaW5nIHNvIHRo
ZSBtYXN0ZXIgYXNzaWdubWVudHMgYXJlIHN0aWxsIHVwIGluIHRoZSBhaXIuDQoNCkFzIHRoZSBN
U1QgbWFzdGVyIGlzIHRoZSBzbWFsbGVzdCBwaXBlL3RyYW5zY29kZXIgaWQgaXQgaXMgY29tcHV0
ZWQNCmZpcnN0LCBzbyBpdCB3b3JrcyBmb3IgTVNUIGJ1dCB0aGF0IGlzIG5vdCB0aGUgcG9ydCBz
eW5jIGNhc2UuDQpXaWxsIGRvIGEgc3VnZ2VzdGVkIGJlbGxvdyB0byBhbHJlYWR5IHN1cHBvcnQg
cG9ydCBzeW5jLg0KDQoNCj4gDQo+IEkgdGhpbmsgd2UgbmVlZCB0aGUgbG9naWMgaGlnaGVyIHVw
IGluIGludGVsX2F0b21pY19jaGVjaygpOg0KPiANCj4gZm9yX2VhY2hfY3J0YygpDQo+IAljb21w
dXRlX2NvbmZpZygpDQo+IAlpZiAoY2FuX2Zhc3RzZXQoKSkNCj4gCQluZWVkc19tb2Rlc2V0PWZh
bHNlDQo+IAkJdXBkYXRlX3BpcGU9dHJ1ZTsNCj4gCX0NCj4gfQ0KPiANCj4gZm9yX2VhY2hfY3J0
YygpDQo+IAlpZiAobXN0X3NsYXZlICYmIG1hc3Rlci5uZWVkc19tb2Rlc2V0KCkgew0KPiAJCW5l
ZWRzX21vZGVzZXQ9dHJ1ZTsNCj4gCQl1cGRhdGVfcGlwZT1mYWxzZTsNCj4gCX0NCj4gDQo+IGZv
cl9lYWNoX2NydGMoKQ0KPiAJaWYgKHVwZGF0ZV9waXBlKQ0KPiAJCWNvcHlfb3Zlcl9vbGRfc3Rh
dGUoKTsNCj4gDQo+IAkNCj4gKyB3ZSBzaG91bGQgcHJvYmFibHkgcmVuYW1lL3NwbGl0IHVwZGF0
ZV9waXBlcyBvciBhZGQgc29tZQ0KPiBsa2luZCBvZiBuZWVkc19mYXN0c2V0KCkgd3JhcHBlciB0
byBtYWtlIHRoaXMgbGVzcyBjb25mdXNpbmcuDQo+IA0KPiANCj4gPiArDQo+ID4gIA0KPiA+ICAJ
bmV3X2NydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0gZmFsc2U7DQo+ID4gIAluZXdfY3J0
Y19zdGF0ZS0+dXBkYXRlX3BpcGUgPSB0cnVlOw0KPiA+IC0tIA0KPiA+IDIuMjQuMQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
