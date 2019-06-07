Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A1397EF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 23:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB2989170;
	Fri,  7 Jun 2019 21:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D7989170
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 21:41:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 14:41:11 -0700
X-ExtLoop1: 1
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2019 14:41:10 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 14:41:10 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.50]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 14:41:10 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 11/23] drm/i915: Handle the TCCOLD power-down event
Thread-Index: AQHVGuYfKGbLp0Gif0GFHoibFEZWDKaRMvyA
Date: Fri, 7 Jun 2019 21:41:10 +0000
Message-ID: <a63160391b9cc5e4626a44aac9cbe3d872984fe0.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-12-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <B8D2E4F42FBE7D4DA7C5FBD02599AA86@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/23] drm/i915: Handle the TCCOLD
 power-down event
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEJh
c2VkIG9uIGEgcmVjZW50IEJTcGVjIHVwZGF0ZSAoSW5kZXgvMjE3NTApIHdlIG11c3QgaGFuZGxl
IHRoZQ0KPiBUQ0NPTEQNCj4gZXZlbnQgYXNzb2NpYXRlZCB3aXRoIHRoZSBEUC1hbHQgbW9kZS4g
V2UgY2FuIGRldGVjdCB0aGlzIGV2ZW50IGJ5DQo+IHJlYWRpbmcgYW4gaW52YWxpZCBhbGwtMXMg
dmFsdWUgZnJvbSBGSUEgcmVnaXN0ZXJzLg0KPiANCj4gQWZ0ZXIgZGV0ZWN0aW5nIFRDQ09MRCB3
ZSB3aWxsOg0KPiAtIGZhbGwgYmFjayB0byBUQlQtYWx0IG1vZGUgd2hlbiBhdHRlbXB0aW5nIHRv
IHN3aXRjaCB0byBEUC1hbHQgbW9kZQ0KPiAtIGNvbmNsdWRlIHRoYXQgbm90aGluZyBpcyBjb25u
ZWN0ZWQgZHVyaW5nIGxpdmUgc3RhdHVzIGRldGVjdGlvbg0KPiAtIFdBUk4gd2hlbiBhbHJlYWR5
IGluIHVuc2FmZSBtb2RlLCBzaW5jZSB0aGVuIFRDQ09MRCBpcyB1bmV4cGVjdGVkDQo+IA0KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBS
b2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdGMuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKy0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdGMuYw0KPiBpbmRleCA4NGUwYzA2ODc3ZWMuLmQ5MTM4MWMwZTg3ZCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jDQo+IEBAIC00OSw2ICs0OSw4IEBAIHUzMiBpbnRlbF90
Y19wb3J0X2dldF9sYW5lX2luZm8oc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpDQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2
LCBkaWdfcG9ydC0NCj4gPmJhc2UucG9ydCk7DQo+ICAJdTMyIGxhbmVfaW5mbyA9IEk5MTVfUkVB
RChQT1JUX1RYX0RGTEVYRFBTUCk7DQo+ICANCj4gKwlXQVJOX09OKGxhbmVfaW5mbyA9PSAtMSk7
DQoNCkkgd291bGQgdXNlIDB4RkZGRkZGRkYsIGl0IGNvdWxkIGNhdXNlIGEgd2FybmluZyBpbiBz
b21lDQpjb21waWxlcihjb21wYXJpbmcgYSBzaWduZWQgd2l0aCBhIHVuc2lnbmVkKS4NCg0KT3Ro
ZXIgdGhhbiB0aGF0Og0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQoNCj4gKw0KPiAgCXJldHVybiAobGFuZV9pbmZvICYgRFBfTEFO
RV9BU1NJR05NRU5UX01BU0sodGNfcG9ydCkpID4+DQo+ICAJICAgICAgIERQX0xBTkVfQVNTSUdO
TUVOVF9TSElGVCh0Y19wb3J0KTsNCj4gIH0NCj4gQEAgLTEwNyw2ICsxMDksMTIgQEAgc3RhdGlj
IHUzMiB0Y19wb3J0X2xpdmVfc3RhdHVzX21hc2soc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9y
dCAqZGlnX3BvcnQpDQo+ICAJdTMyIHZhbCA9IEk5MTVfUkVBRChQT1JUX1RYX0RGTEVYRFBTUCk7
DQo+ICAJdTMyIG1hc2sgPSAwOw0KPiAgDQo+ICsJaWYgKHZhbCA9PSAtMSkgew0KPiArCQlEUk1f
REVCVUdfRFJJVkVSKCJQb3J0ICVzOiBQSFkgaW4gVENDT0xELCBub3RoaW5nDQo+IGNvbm5lY3Rl
ZFxuIiwNCj4gKwkJCQkgdGNfcG9ydF9uYW1lKGRldl9wcml2LCB0Y19wb3J0KSk7DQo+ICsJCXJl
dHVybiBtYXNrOw0KPiArCX0NCj4gKw0KPiAgCWlmICh2YWwgJiBUQ19MSVZFX1NUQVRFX1RCVCh0
Y19wb3J0KSkNCj4gIAkJbWFzayB8PSBCSVQoVENfUE9SVF9UQlRfQUxUKTsNCj4gIAlpZiAodmFs
ICYgVENfTElWRV9TVEFURV9UQyh0Y19wb3J0KSkNCj4gQEAgLTEzMSwxMyArMTM5LDIxIEBAIHN0
YXRpYyBib29sIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0cnVjdA0KPiBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgCSAgICAgICBEUF9QSFlfTU9ERV9TVEFUVVNfQ09NUExF
VEVEKHRjX3BvcnQpOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdm9pZCBpY2xfdGNfcGh5X3NldF9z
YWZlX21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQsDQo+ICtzdGF0
aWMgYm9vbCBpY2xfdGNfcGh5X3NldF9zYWZlX21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dA0KPiAqZGlnX3BvcnQsDQo+ICAJCQkJICAgICBib29sIGVuYWJsZSkNCj4gIHsNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+YmFz
ZS5iYXNlLmRldik7DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3Rj
KGRldl9wcml2LCBkaWdfcG9ydC0NCj4gPmJhc2UucG9ydCk7DQo+ICAJdTMyIHZhbCA9IEk5MTVf
UkVBRChQT1JUX1RYX0RGTEVYRFBDU1NTKTsNCj4gIA0KPiArCWlmICh2YWwgPT0gLTEpIHsNCj4g
KwkJRFJNX0RFQlVHX0RSSVZFUigiUG9ydCAlczogUEhZIGluIFRDQ09MRCwgY2FuJ3Qgc2V0DQo+
IHNhZmUtbW9kZSB0byAlc1xuIiwNCj4gKwkJCQkgdGNfcG9ydF9uYW1lKGRldl9wcml2LCB0Y19w
b3J0KSwNCj4gKwkJCQkgZW5hYmxlZGRpc2FibGVkKGVuYWJsZSkpOw0KPiArDQo+ICsJCXJldHVy
biBmYWxzZTsNCj4gKwl9DQo+ICsNCj4gIAl2YWwgJj0gfkRQX1BIWV9NT0RFX1NUQVRVU19OT1Rf
U0FGRSh0Y19wb3J0KTsNCj4gIAlpZiAoIWVuYWJsZSkNCj4gIAkJdmFsIHw9IERQX1BIWV9NT0RF
X1NUQVRVU19OT1RfU0FGRSh0Y19wb3J0KTsNCj4gQEAgLTE0Nyw2ICsxNjMsOCBAQCBzdGF0aWMg
dm9pZCBpY2xfdGNfcGh5X3NldF9zYWZlX21vZGUoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9y
dCAqZGlnX3BvcnQsDQo+ICAJaWYgKGVuYWJsZSAmJiB3YWl0X2ZvcighaWNsX3RjX3BoeV9zdGF0
dXNfY29tcGxldGUoZGlnX3BvcnQpLA0KPiAxMCkpDQo+ICAJCURSTV9ERUJVR19EUklWRVIoIlBv
cnQgJXM6IFBIWSBjb21wbGV0ZSBjbGVhciB0aW1lZA0KPiBvdXRcbiIsDQo+ICAJCQkJIHRjX3Bv
cnRfbmFtZShkZXZfcHJpdiwgdGNfcG9ydCkpOw0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICB9
DQo+ICANCj4gIC8qDQo+IEBAIC0xODcsNyArMjA1LDggQEAgc3RhdGljIGJvb2wgaWNsX3RjX3Bo
eV9jb25uZWN0KHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgCQly
ZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiAgDQo+IC0JaWNsX3RjX3BoeV9zZXRfc2FmZV9tb2RlKGRp
Z19wb3J0LCBmYWxzZSk7DQo+ICsJaWYgKCFpY2xfdGNfcGh5X3NldF9zYWZlX21vZGUoZGlnX3Bv
cnQsIGZhbHNlKSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiAgDQo+ICAJaWYgKGRpZ19wb3J0LT50
Y19tb2RlID09IFRDX1BPUlRfTEVHQUNZKQ0KPiAgCQlyZXR1cm4gdHJ1ZTsNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
