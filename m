Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B6C19B540
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49CA897F6;
	Wed,  1 Apr 2020 18:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B6E897F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 18:18:02 +0000 (UTC)
IronPort-SDR: U42F/sHISE8WmOUC3OzByU523nkKnAR8PyB8JzJVE8mhC2tYHx70vCNpx4JfrVzhzYdFZlp4um
 lzs9Crp1WNBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 11:18:02 -0700
IronPort-SDR: qfTs7bqdipN8bqqjDIEmDOXwmk1UCNTZsQSNVHIW8Zh7tzDCxt37RlZ+p0eYwIDqICDagoh7dd
 Ms4OeDRCRVCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,332,1580803200"; d="scan'208";a="240580453"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 01 Apr 2020 11:18:02 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Apr 2020 11:18:02 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.42]) with mapi id 14.03.0439.000;
 Wed, 1 Apr 2020 11:18:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "vicamo@gmail.com" <vicamo@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915/display: Move out code to
 return the digital_port of the aux ch
Thread-Index: AQHWB74RQj5SpV5In0K5o1YUMrgEFqhkUXQAgAC4l4A=
Date: Wed, 1 Apr 2020 18:18:02 +0000
Message-ID: <6c6e5b22f6602058f1de2262c89f225231b2ea57.camel@intel.com>
References: <20200401004120.408586-1-jose.souza@intel.com>
 <e77622b4-b1b7-b002-5f87-5361c0e29886@gmail.com>
In-Reply-To: <e77622b4-b1b7-b002-5f87-5361c0e29886@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.141.52]
Content-ID: <91CFAA0D6B45FF42A48E0796310746AB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/display: Move out code to
 return the digital_port of the aux ch
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

T24gV2VkLCAyMDIwLTA0LTAxIGF0IDE1OjE4ICswODAwLCBZb3UtU2hlbmcgWWFuZyB3cm90ZToN
Cj4gT24gMjAyMC0wNC0wMSAwODo0MSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4g
PiBNb3ZpbmcgdGhlIGNvZGUgdG8gcmV0dXJuIHRoZSBkaWdpdGFsIHBvcnQgb2YgdGhlIGF1eCBj
aGFubmVsIGFsc28NCj4gPiByZW1vdmluZyB0aGUgaW50ZWxfcGh5X2lzX3RjKCkgdG8gbWFrZSBp
dCBnZW5lcmljLg0KPiA+IGRpZ2l0YWxfcG9ydCB3aWxsIGJlIG5lZWRlZCBpbiBpY2xfdGNfcGh5
X2F1eF9wb3dlcl93ZWxsX2VuYWJsZSgpDQo+ID4gc28gYWRkaW5nIGl0IGFzIGEgcGFyYW1ldGVy
IHRvIGljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVsZCgpLg0KPiA+IA0KPiA+IFdoaWxlIGF0IGF0
IHJlbW92aW5nIHRoZSBkdXBsaWNhdGVkIGNhbGwgdG8gaWNsX3RjX3BoeV9hdXhfY2goKSBpbg0K
PiA+IGljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVsZCgpLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAz
OCArKysrKysrKysrLS0tLS0NCj4gPiAtLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNl
cnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gaW5kZXgg
NDMzZTVhODFkZDRkLi4wMmEwN2FhNzEwZTQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+IEBAIC01MDAs
MjYgKzUwMCwxNCBAQCBzdGF0aWMgaW50IHBvd2VyX3dlbGxfYXN5bmNfcmVmX2NvdW50KHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJcmV0dXJuIHJlZnM7DQo+
ID4gIH0NCj4gPiAgDQo+ID4gLXN0YXRpYyB2b2lkIGljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVs
ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwNCj4gPiAtCQkJCQlzdHJ1
Y3QgaTkxNV9wb3dlcl93ZWxsDQo+ID4gKnBvd2VyX3dlbGwpDQo+ID4gK3N0YXRpYyBzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICoNCj4gPiArYXV4X2NoX3RvX2RpZ2l0YWxfcG9ydChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gKwkJICAgICAgIGVudW0gYXV4X2NoIGF1
eF9jaCkNCj4gDQo+IFRoaXMgZmFpbHMgdGhlIGJ1aWxkIGJlY2F1c2UgaWNsX3RjX3BvcnRfYXNz
ZXJ0X3JlZl9oZWxkIHdhcw0KPiBvcmlnaW5hbGx5DQo+IGd1YXJkZWQgYnkgQ09ORklHX0RSTV9J
OTE1X0RFQlVHX1JVTlRJTUVfUE0sIGJ1dCBub3cNCj4gYXV4X2NoX3RvX2RpZ2l0YWxfcG9ydCBt
YXliZSB1c2VkIG91dHNpZGUgdGhlIHNjb3BlLg0KDQpUaGFua3MsIGZpeGVkLg0KDQo+IA0KPiA+
ICB7DQo+ID4gLQllbnVtIGF1eF9jaCBhdXhfY2ggPSBpY2xfdGNfcGh5X2F1eF9jaChkZXZfcHJp
diwgcG93ZXJfd2VsbCk7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCA9IE5VTEw7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiAgDQo+
ID4gLQkvKiBCeXBhc3MgdGhlIGNoZWNrIGlmIGFsbCByZWZlcmVuY2VzIGFyZSByZWxlYXNlZA0K
PiA+IGFzeW5jaHJvbm91c2x5ICovDQo+ID4gLQlpZiAocG93ZXJfd2VsbF9hc3luY19yZWZfY291
bnQoZGV2X3ByaXYsIHBvd2VyX3dlbGwpID09DQo+ID4gLQkgICAgcG93ZXJfd2VsbC0+Y291bnQp
DQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0NCj4gPiAtCWF1eF9jaCA9IGljbF90Y19waHlfYXV4X2No
KGRldl9wcml2LCBwb3dlcl93ZWxsKTsNCj4gPiAtDQo+ID4gIAlmb3JfZWFjaF9pbnRlbF9lbmNv
ZGVyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+ID4gLQkJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItDQo+ID4gPnBvcnQpOw0KPiA+IC0NCj4g
PiAtCQlpZiAoIWludGVsX3BoeV9pc190YyhkZXZfcHJpdiwgcGh5KSkNCj4gPiAtCQkJY29udGlu
dWU7DQo+ID4gLQ0KPiA+ICAJCS8qIFdlJ2xsIGNoZWNrIHRoZSBNU1QgcHJpbWFyeSBwb3J0ICov
DQo+ID4gIAkJaWYgKGVuY29kZXItPnR5cGUgPT0gSU5URUxfT1VUUFVUX0RQX01TVCkNCj4gPiAg
CQkJY29udGludWU7DQo+ID4gQEAgLTUzNiw2ICs1MjQsMTggQEAgc3RhdGljIHZvaWQgaWNsX3Rj
X3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LA0KPiA+ICAJCWJyZWFrOw0KPiA+ICAJfQ0KPiA+ICANCj4gPiArCXJldHVybiBkaWdfcG9y
dDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0X3Jl
Zl9oZWxkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9wcml2LA0KPiA+ICsJCQkJ
CXN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwNCj4gPiAqcG93ZXJfd2VsbCwNCj4gPiArCQkJCQlzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ID4gKmRpZ19wb3J0KQ0KPiA+ICt7DQo+ID4gKwkvKiBC
eXBhc3MgdGhlIGNoZWNrIGlmIGFsbCByZWZlcmVuY2VzIGFyZSByZWxlYXNlZA0KPiA+IGFzeW5j
aHJvbm91c2x5ICovDQo+ID4gKwlpZiAocG93ZXJfd2VsbF9hc3luY19yZWZfY291bnQoZGV2X3By
aXYsIHBvd2VyX3dlbGwpID09DQo+ID4gKwkgICAgcG93ZXJfd2VsbC0+Y291bnQpDQo+ID4gKwkJ
cmV0dXJuOw0KPiA+ICsNCj4gPiAgCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWRp
Z19wb3J0KSkNCj4gPiAgCQlyZXR1cm47DQo+ID4gIA0KPiA+IEBAIC01NTgsOSArNTU4LDEwIEBA
IGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdA0KPiA+IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LA0KPiA+ICAJCQkJIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2Vy
X3dlbGwpDQo+ID4gIHsNCj4gPiAgCWVudW0gYXV4X2NoIGF1eF9jaCA9IGljbF90Y19waHlfYXV4
X2NoKGRldl9wcml2LCBwb3dlcl93ZWxsKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0ID0NCj4gPiBhdXhfY2hfdG9fZGlnaXRhbF9wb3J0KGRldl9wcml2LCBhdXhf
Y2gpOw0KPiANCj4gRS5nLiBoZXJlLg0KPiANCj4gPiAgCXUzMiB2YWw7DQo+ID4gIA0KPiA+IC0J
aWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKGRldl9wcml2LCBwb3dlcl93ZWxsKTsNCj4gPiAr
CWljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVsZChkZXZfcHJpdiwgcG93ZXJfd2VsbCwgZGlnX3Bv
cnQpOw0KPiA+ICANCj4gPiAgCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERQX0FVWF9D
SF9DVEwoYXV4X2NoKSk7DQo+ID4gIAl2YWwgJj0gfkRQX0FVWF9DSF9DVExfVEJUX0lPOw0KPiA+
IEBAIC01ODgsNyArNTg5LDEwIEBAIHN0YXRpYyB2b2lkDQo+ID4gIGljbF90Y19waHlfYXV4X3Bv
d2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwN
Cj4gPiAgCQkJCSAgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkNCj4gPiAgew0K
PiA+IC0JaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKGRldl9wcml2LCBwb3dlcl93ZWxsKTsN
Cj4gPiArCWVudW0gYXV4X2NoIGF1eF9jaCA9IGljbF90Y19waHlfYXV4X2NoKGRldl9wcml2LCBw
b3dlcl93ZWxsKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0N
Cj4gPiBhdXhfY2hfdG9fZGlnaXRhbF9wb3J0KGRldl9wcml2LCBhdXhfY2gpOw0KPiA+ICsNCj4g
PiArCWljbF90Y19wb3J0X2Fzc2VydF9yZWZfaGVsZChkZXZfcHJpdiwgcG93ZXJfd2VsbCwgZGln
X3BvcnQpOw0KPiA+ICANCj4gPiAgCWhzd19wb3dlcl93ZWxsX2Rpc2FibGUoZGV2X3ByaXYsIHBv
d2VyX3dlbGwpOw0KPiA+ICB9DQo+ID4gDQo+IA0KPiBZb3UtU2hlbmcgWWFuZw0KPiANCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
