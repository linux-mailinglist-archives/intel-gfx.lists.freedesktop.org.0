Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 655D22CAAD0
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 19:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E196E842;
	Tue,  1 Dec 2020 18:35:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213AA6E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 18:35:10 +0000 (UTC)
IronPort-SDR: TwPpW7ykaPJT+cb9suRCShEpTLtLc9KlmThgJ42ey8AvEyn7ezjOqOLQc+XgaMkiNUf7TDl9gT
 tqtdk41ytzmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="170317775"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="170317775"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 10:35:06 -0800
IronPort-SDR: EYN2t+TpmyInTfMccL+oD5KC0CQFtBZ7b+SguDbqHGcMnHdtVG951o2p7TPaG9aX4XflJJOXHB
 qM/QolS5pX2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="315032777"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2020 10:35:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 10:35:05 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 10:35:04 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 10:35:04 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 19/21] drm/i915/display: Add
 HAS_D12_PLANE_MINIMIZATION
Thread-Index: AQHWvRLZ1izB5pHHAkqnhrD3FpcQ2KnipwbQ
Date: Tue, 1 Dec 2020 18:35:01 +0000
Message-ID: <f05e0f0810ce4646924acecf23858036@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-20-aditya.swarup@intel.com>
In-Reply-To: <20201117185029.22078-20-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915/display: Add
 HAS_D12_PLANE_MINIMIZATION
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBZGl0
eWEgU3dhcnVwDQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDE3LCAyMDIwIDEwOjUwIEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMNCj4gPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDE5LzIxXSBkcm0v
aTkxNS9kaXNwbGF5OiBBZGQNCj4gSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04NCj4gDQo+IEZy
b206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiANCj4g
LSBBcyBSS0wgYW5kIEFETC1TIG9ubHkgaGF2ZSA1IHBsYW5lcywgcHJpbWFyeSBhbmQgNCBzcHJp
dGVzIGFuZA0KPiAgIHRoZSBjdXJzb3IgcGxhbmUsIGxldCdzIGdyb3VwIHRoZSBoYW5kbGluZyB0
b2dldGhlciB1bmRlcg0KPiAgIEhBU19EMTJfUExBTkVfTUlOSU1JWkFUSU9OLg0KPiAtIEFsc28g
dXNlIG1hY3JvIHRvIHNlbGVjdCBwaXBlIGlycSBmYXVsdCBlcnJvciBtYXNrLg0KPiANCj4gQlNw
ZWM6IDQ5MjUxDQo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IENjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFk
aXR5YS5zd2FydXBAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxh
bnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAzICsrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYyAgICAgICAgICAgICB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMgICAgfCAyICstDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBpbmRleCAxZTk1NGUyOTI4ZmUuLmY2NWZkOTM3YmM1
NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJp
dGUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
DQo+IEBAIC0zNTEsNyArMzUxLDcgQEAgaW50IGludGVsX3BsYW5lX2NoZWNrX3NyY19jb29yZGlu
YXRlcyhzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiANCj4gIHN0
YXRpYyB1OCBpY2xfbnYxMl95X3BsYW5lX21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpICB7DQo+IC0JaWYgKElTX1JPQ0tFVExBS0UoaTkxNSkpDQo+ICsJaWYgKEhBU19EMTJfUExB
TkVfTUlOSU1JWkFUSU9OKGk5MTUpKQ0KPiAgCQlyZXR1cm4gQklUKFBMQU5FX1NQUklURTIpIHwg
QklUKFBMQU5FX1NQUklURTMpOw0KPiAgCWVsc2UNCj4gIAkJcmV0dXJuIEJJVChQTEFORV9TUFJJ
VEU0KSB8IEJJVChQTEFORV9TUFJJVEU1KTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGlu
ZGV4IDgxN2E1MTAyYjk0Zi4uZjhkNjE3ODU2MDBkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgNCj4gQEAgLTE3NzAsNiArMTc3MCw5IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9y
ZXZfc3RlcHBpbmdzDQo+IGFkbHNfcmV2aWRzW107ICAjZGVmaW5lIElOVEVMX0RJU1BMQVlfRU5B
QkxFRChkZXZfcHJpdikgXA0KPiAgCShkcm1fV0FSTl9PTigmKGRldl9wcml2KS0+ZHJtLCAhSEFT
X0RJU1BMQVkoZGV2X3ByaXYpKSwNCj4gIShkZXZfcHJpdiktPnBhcmFtcy5kaXNhYmxlX2Rpc3Bs
YXkpDQo+IA0KPiArI2RlZmluZSBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihkZXZfcHJpdikN
Cj4gKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpIHx8IFwNCj4gKwkJCQkJICAgICAgSVNfQUxERVJM
QUtFX1MoZGV2X3ByaXYpKQ0KPiArDQo+ICBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdnRkX2Fj
dGl2ZSh2b2lkKSAgeyAgI2lmZGVmIENPTkZJR19JTlRFTF9JT01NVQ0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgaW5kZXggNzU4ZWQ0ZjZjOWYzLi5lMzlkYjM5Y2Q3OTYNCj4gMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBAQCAtMjI0Niw3ICsyMjQ2LDcgQEAgc3RhdGljIHUz
MiBnZW44X2RlX3BvcnRfYXV4X21hc2soc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiANCj4gIHN0YXRpYyB1MzIgZ2VuOF9kZV9waXBlX2ZhdWx0X21hc2soc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KSAgew0KPiAtCWlmIChJU19ST0NLRVRMQUtFKGRldl9w
cml2KSkNCj4gKwlpZiAoSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04oZGV2X3ByaXYpKQ0KPiAg
CQlyZXR1cm4gUktMX0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsNCj4gIAllbHNlIGlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiAgCQlyZXR1cm4gR0VOMTFfREVfUElQRV9JUlFfRkFV
TFRfRVJST1JTOyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMN
Cj4gaW5kZXggNjRhMDk5NTRmZDU0Li40OWQ1ZGFjMzRkNTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiBAQCAtNDA5LDcgKzQwOSw3IEBAIHZvaWQg
aW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikNCj4gDQo+ICAJQlVJTERfQlVHX09OKEJJVFNfUEVSX1RZUEUoaW50ZWxfZW5n
aW5lX21hc2tfdCkgPA0KPiBJOTE1X05VTV9FTkdJTkVTKTsNCj4gDQo+IC0JaWYgKElTX1JPQ0tF
VExBS0UoZGV2X3ByaXYpKQ0KPiArCWlmIChIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihkZXZf
cHJpdikpDQo+ICAJCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpDQo+ICAJCQlydW50aW1l
LT5udW1fc3ByaXRlc1twaXBlXSA9IDQ7DQo+ICAJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSkNCj4gLS0NCj4gMi4yNy4wDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
