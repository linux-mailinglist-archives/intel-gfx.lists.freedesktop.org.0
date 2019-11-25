Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D90B109189
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 17:03:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766B289F31;
	Mon, 25 Nov 2019 16:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D349E89F31
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 16:03:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 08:03:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="382860701"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga005.jf.intel.com with ESMTP; 25 Nov 2019 08:03:49 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.76]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 16:03:48 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915: Support more QGV points
Thread-Index: AQHVoT8NaZMKLNXDakaDWV9oNILVXqecCGKAgAAGhYCAAAJW4A==
Date: Mon, 25 Nov 2019 16:03:47 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D0769F0DDC@IRSMSX106.ger.corp.intel.com>
References: <20191122141049.25608-1-stanislav.lisovskiy@intel.com>
 <20191125153143.GX1208@intel.com>
 <908f3f1acb69c12e9e880fb269d6d55a60ac3ab3.camel@intel.com>
In-Reply-To: <908f3f1acb69c12e9e880fb269d6d55a60ac3ab3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Support more QGV points
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGlzb3Zza2l5LCBT
dGFuaXNsYXYgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBTZW50OiBtYWFuYW50
YWkgMjUuIG1hcnJhc2t1dXRhIDIwMTkgMTcuNTUNCj4gVG86IHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tDQo+IENjOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBSb3BlciwgTWF0dGhldyBEIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPjsgamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tOw0K
PiBTYXJ2ZWxhLCBUb21pIFAgPHRvbWkucC5zYXJ2ZWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTU6IFN1cHBvcnQgbW9yZSBRR1YgcG9pbnRzDQo+IA0KPiBP
biBNb24sIDIwMTktMTEtMjUgYXQgMTc6MzEgKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToN
Cj4gPiBPbiBGcmksIE5vdiAyMiwgMjAxOSBhdCAwNDoxMDo0OVBNICswMjAwLCBTdGFuaXNsYXYg
TGlzb3Zza2l5IHdyb3RlOg0KPiA+ID4gQWNjb3JkaW5nIHRvIEJTcGVjIDUzOTk4LCB0aGVyZSBp
cyBhIG1hc2sgb2YgbWF4IDggU0FHVi9RR1YgcG9pbnRzDQo+ID4gPiB3ZSBuZWVkIHRvIHN1cHBv
cnQuDQo+ID4gPg0KPiA+ID4gQnVtcGluZyB0aGlzIHVwIHRvIGtlZXAgdGhlIENJIGhhcHB5KGN1
cnJlbnRseSBwcmV2ZW50aW5nIHRlc3RzIHRvDQo+ID4gPiBydW4pLCB1bnRpbCBhbGwgU0FHViBj
aGFuZ2VzIGxhbmQuDQo+ID4gPg0KPiA+ID4gRml4ZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE4OQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3Rhbmlz
bGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiAtLS0N
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAyMiArKysr
KysrKysrKysrKysrKy0tDQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgfCAgNiArKysrKy0NCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIy
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+IGluZGV4IDg2ZTc1ZTg1ODAw
OC4uZDFiODA1YjMwMTc3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMNCj4gPiA+IEBAIC0xNSw3ICsxNSw3IEBAIHN0cnVjdCBpbnRlbF9xZ3Zf
cG9pbnQgeyAgfTsNCj4gPiA+DQo+ID4gPiAgc3RydWN0IGludGVsX3Fndl9pbmZvIHsNCj4gPiA+
IC0Jc3RydWN0IGludGVsX3Fndl9wb2ludCBwb2ludHNbM107DQo+ID4gPiArCXN0cnVjdCBpbnRl
bF9xZ3ZfcG9pbnQgcG9pbnRzW0k5MTVfTlVNX1NBR1ZfUE9JTlRTXTsNCj4gPiA+ICAJdTggbnVt
X3BvaW50czsNCj4gPiA+ICAJdTggbnVtX2NoYW5uZWxzOw0KPiA+ID4gIAl1OCB0X2JsOw0KPiA+
ID4gQEAgLTI3NiwxNSArMjc2LDI3IEBAIHZvaWQgaW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZQ0KPiA+ID4gKmRldl9wcml2KQ0KPiA+ID4gIHN0YXRpYyB1bnNpZ25lZCBp
bnQgaW50ZWxfbWF4X2RhdGFfcmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gKmRl
dl9wcml2LA0KPiA+ID4gIAkJCQkJaW50DQo+IG51bV9wbGFuZXMpDQo+ID4gPiAgew0KPiA+ID4g
LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4gPiA+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEpIHsNCj4gPiA+ICsJCS8qDQo+ID4gPiArCQkgKiBBbnkgYncgZ3JvdXAg
aGFzIHNhbWUgYW1vdW50IG9mIFFHViBwb2ludHMNCj4gPiA+ICsJCSAqLw0KPiA+ID4gKwkJY29u
c3Qgc3RydWN0IGludGVsX2J3X2luZm8gKmJpID0NCj4gPiA+ICsJCQkmZGV2X3ByaXYtPm1heF9i
d1swXTsNCj4gPiA+ICsJCXVuc2lnbmVkIGludCBtaW5fYncgPSBVSU5UX01BWDsNCj4gPiA+ICsJ
CWludCBpOw0KPiA+ID4gKw0KPiA+ID4gIAkJLyoNCj4gPiA+ICAJCSAqIEZJWE1FIHdpdGggU0FH
ViBkaXNhYmxlZCBtYXliZSB3ZSBjYW4gYXNzdW1lDQo+ID4gPiAgCQkgKiBwb2ludCAxIHdpbGwg
YWx3YXlzIGJlIHVzZWQ/IFNlZW1zIHRvIG1hdGNoDQo+ID4gPiAgCQkgKiB0aGUgYmVoYXZpb3Vy
IG9ic2VydmVkIGluIHRoZSB3aWxkLg0KPiA+ID4gIAkJICovDQo+ID4gPiAtCQlyZXR1cm4gbWlu
MyhpY2xfbWF4X2J3KGRldl9wcml2LCBudW1fcGxhbmVzLCAwKSwNCj4gPiA+IC0JCQkgICAgaWNs
X21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywNCj4gMSksDQo+ID4gPiAtCQkJICAgIGljbF9t
YXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsDQo+IDIpKTsNCj4gPiA+ICsJCWZvciAoaSA9IDA7
IGkgPCBiaS0+bnVtX3Fndl9wb2ludHM7IGkrKykgew0KPiA+ID4gKwkJCXVuc2lnbmVkIGludCBi
dyA9IGljbF9tYXhfYncoZGV2X3ByaXYsDQo+ID4gPiBudW1fcGxhbmVzLCBpKTsNCj4gPiA+ICsN
Cj4gPiA+ICsJCQltaW5fYncgPSBtaW4oYncsIG1pbl9idyk7DQo+ID4gPiArCQl9DQo+ID4gPiAr
CQlyZXR1cm4gbWluX2J3Ow0KPiA+ID4gKwl9DQo+ID4gPiAgCWVsc2UNCj4gPiA+ICAJCXJldHVy
biBVSU5UX01BWDsNCj4gPiA+ICB9DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaA0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
IGluZGV4IGZkYWU1YTkxOWJjOC4uZDQ1YTlmZmFlZDRmDQo+ID4gPiAxMDA2NDQNCj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiA+IEBAIC02MjEsNiArNjIxLDkgQEAgc3RydWN0
IGk5MTVfZ2VtX21tIHsNCj4gPiA+DQo+ID4gPiAgI2RlZmluZSBJOTE1X0VOR0lORV9XRURHRURf
VElNRU9VVCAgKDYwICogSFopICAvKiBSZXNldCBidXQgbm8NCj4gPiA+IHJlY292ZXJ5PyAqLw0K
PiA+ID4NCj4gPiA+ICsvKiBCU3BlYyBwcmVjaXNlbHkgZGVmaW5lcyB0aGlzICovDQo+ID4gPiAr
I2RlZmluZSBJOTE1X05VTV9TQUdWX1BPSU5UUyA4DQo+ID4NCj4gPiBJIHRoaW5rIGV2ZXJ5dGhp
bmcgZWxzZSB0YWxrcyBhYm91dCAiUUdWIHBvaW50cyIgcmF0aGVyIHRoYW4gIlNBR1YNCj4gPiBw
b2ludHMiIG5vdz8gV291bGQgYmUgbmljZSB0byBiZSBjb25zaXN0ZW50Lg0KPiANCj4gQWdyZWUs
IF9TQUdWXyBpcyBub3QgdGhhdCBhY2N1cmF0ZSBoZXJlLg0KPiBXaWxsIGNoYW5nZSB0aGUgbmFt
aW5nLg0KQ2FuIHdlIGRvIHRoYXQgd2hpbGUgbWVyZ2luZz8gDQoNCj4gDQo+IFN0YW4NCj4gDQo+
ID4NCj4gPiBBcGFydCBmcm9tIHRoYXQNCj4gPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPg0KPiA+ID4gKw0KPiA+ID4gIHN0
cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyB7DQo+ID4gPiAgCS8qIE5vbi1OVUxMIGlmIHBvcnQgcHJl
c2VudC4gKi8NCj4gPiA+ICAJY29uc3Qgc3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxk
OyBAQCAtMTIzMiw3ICsxMjM1LDggQEANCj4gPiA+IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsN
Cj4gPiA+ICAJfSBkcmFtX2luZm87DQo+ID4gPg0KPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfYndfaW5m
byB7DQo+ID4gPiAtCQl1bnNpZ25lZCBpbnQgZGVyYXRlZGJ3WzNdOyAvKiBmb3IgZWFjaCBRR1Yg
cG9pbnQgKi8NCj4gPiA+ICsJCS8qIGZvciBlYWNoIFFHViBwb2ludCAqLw0KPiA+ID4gKwkJdW5z
aWduZWQgaW50IGRlcmF0ZWRid1tJOTE1X05VTV9TQUdWX1BPSU5UU107DQo+ID4gPiAgCQl1OCBu
dW1fcWd2X3BvaW50czsNCj4gPiA+ICAJCXU4IG51bV9wbGFuZXM7DQo+ID4gPiAgCX0gbWF4X2J3
WzZdOw0KPiA+ID4gLS0NCj4gPiA+IDIuMTcuMQ0KPiA+DQo+ID4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
