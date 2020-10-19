Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D646C292CC7
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 19:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9BA6E8FD;
	Mon, 19 Oct 2020 17:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBF56E8FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 17:29:51 +0000 (UTC)
IronPort-SDR: DIlNGC4uVmf5KvjhBwS+bkxmB8gGyzQCqjHdr8LUAals6wXrks+QpsiuZ33JbHmyfrlTwPM9FL
 MsyQ0BeOYsgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="228709314"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="228709314"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 10:29:51 -0700
IronPort-SDR: e7YYEmPCiXk5JBn7VnKZv4JlyvMEI2ImfSC07rHqs86dVehbjYYCFjvi/bnqFlDSVXSKIeFTTr
 dSjZKI4pdv7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="465604421"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2020 10:29:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 10:29:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 10:29:50 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 19 Oct 2020 10:29:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Program DBUF_CTL tracker
 state service
Thread-Index: AQHWo/mow7ixcNCIGEWPa9FCQ2LPgamfhyGAgAAhCAA=
Date: Mon, 19 Oct 2020 17:29:50 +0000
Message-ID: <d877028e2e5720d331c226cb87e9b0a1b7cd7fd0.camel@intel.com>
References: <20201016201837.85845-1-jose.souza@intel.com>
 <20201019153109.GP3805439@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201019153109.GP3805439@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <2FC09C1F83BC96469CA155B29712EB96@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Program DBUF_CTL tracker
 state service
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

T24gTW9uLCAyMDIwLTEwLTE5IGF0IDA4OjMxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIE9jdCAxNiwgMjAyMCBhdCAwMToxODozN1BNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IFRoaXMgc2VxdWVuY2UgaXMgbm90IHBhcnQgb2YgIlNlcXVlbmNl
cyB0byBJbml0aWFsaXplIERpc3BsYXkiIGJ1dA0KPiA+IGFzIG5vdGVkIGluIHRoZSBNQnVzIHBh
Z2UgdGhlIERCVUZfQ1RMLlRyYWNrZXJfc3RhdGVfc2VydmljZSBuZWVkcw0KPiA+IHRvIGJlIHNl
dCB0byA4Lg0KPiA+IA0KPiA+IEJTcGVjOiA0OTIxMw0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMyAr
KysrKysrKysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgICAgICAgICAgICB8IDE0ICsrKysrKysrKy0tLS0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQs
IDIyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBpbmRl
eCA0NTgwNmNmYzY3OWEuLmRiMzZhYjAyZTdkNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gQEAgLTQ3
NzEsNiArNDc3MSwxNyBAQCBzdGF0aWMgdm9pZCBnZW45X2RidWZfZGlzYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gwqAJZ2VuOV9kYnVmX3NsaWNlc191cGRhdGUo
ZGV2X3ByaXYsIDApOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gK3N0
YXRpYyB2b2lkIGdlbjEyX2RidWZfc2xpY2VzX2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpDQo+ID4gK3sNCj4gPiArCWNvbnN0IGludCBudW1fc2xpY2VzID0gSU5URUxf
SU5GTyhkZXZfcHJpdiktPm51bV9zdXBwb3J0ZWRfZGJ1Zl9zbGljZXM7DQo+ID4gKwllbnVtIGRi
dWZfc2xpY2Ugc2xpY2U7DQo+ID4gKw0KPiA+ICsJZm9yIChzbGljZSA9IERCVUZfUzE7IHNsaWNl
IDwgbnVtX3NsaWNlczsgc2xpY2UrKykNCj4gDQo+IE1pbm9yIG5pdHBpY2s7IGlmIHdlJ3JlIHN0
YXJ0aW5nIGZyb20gc3ltYm9saWMgdmFsdWUgREJVRl9TMSwgd2Ugc2hvdWxkDQo+IHByb2JhYmx5
IGVuZCBhdCAnREJVRl9TMSArIG51bV9zbGljZXMnIGZvciBjb25zaXN0ZW5jeS4NCg0KQ3VycmVu
dCB1c2VyIG9mIG51bV9zdXBwb3J0ZWRfZGJ1Zl9zbGljZXMgZG9uJ3QgZG8gdGhhdCBidXQgYW55
d2F5cyBsb29rcyBhIGdvb2QgaWRlYS4NCg0KPiANCj4gPiArCQlpbnRlbF9kZV9ybXcoZGV2X3By
aXYsIERCVUZfQ1RMX1Moc2xpY2UpLA0KPiA+ICsJCQkgICAgIERCVUZfVFJBQ0tFUl9TVEFURV9T
RVJWSUNFX01BU0ssDQo+ID4gKwkJCSAgICAgREJVRl9UUkFDS0VSX1NUQVRFX1NFUlZJQ0UoOCkp
Ow0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIHZvaWQgaWNsX21idXNfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gwqB7DQo+ID4gwqAJdW5zaWduZWQgbG9u
ZyBhYm94X3JlZ3MgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+YWJveF9tYXNrOw0KPiA+IEBAIC01
MzQwLDYgKzUzNTEsOCBAQCBzdGF0aWMgdm9pZCBpY2xfZGlzcGxheV9jb3JlX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+IMKgCS8qIDQuIEVuYWJsZSBDRENMSy4g
Ki8NCj4gPiDCoAlpbnRlbF9jZGNsa19pbml0X2h3KGRldl9wcml2KTsNCj4gPiDCoA0KPiA+IA0K
PiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIpDQo+ID4gKwkJZ2VuMTJfZGJ1Zl9zbGljZXNfY29uZmlnKGRldl9wcml2
KTsNCj4gPiDCoAkvKiA1LiBFbmFibGUgREJVRi4gKi8NCj4gDQo+IE1pbm9yIG5pdHBpY2s6IHNo
b3VsZCB0aGVyZSBiZSBhIGJsYW5rIGJldHdlZW4gdGhlc2UgYWRkaXRpb25zIGFuZCB0aGUNCj4g
Y29tbWVudD8NCg0Kc3VyZS4NCg0KPiANCj4gQXNpZGUgZnJvbSB0aG9zZSB0d28gbWlub3IgdGhp
bmdzLA0KPiANCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+DQoNCnRoYW5rcw0KDQo+IA0KPiA+IMKgCWdlbjlfZGJ1Zl9lbmFibGUoZGV2X3ByaXYp
Ow0KPiA+IMKgDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4g
DQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+ID4gaW5kZXggNmQ5N2U2Mjg2YzJkLi5jMzg5MDFlMmY4MWMgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtNzkyNywxMSArNzkyNywxNSBA
QCBlbnVtIHsNCj4gPiDCoCNkZWZpbmUgRElTUF9BUkJfQ1RMMglfTU1JTygweDQ1MDA0KQ0KPiA+
IMKgI2RlZmluZSAgRElTUF9EQVRBX1BBUlRJVElPTl81XzYJKDEgPDwgNikNCj4gPiDCoCNkZWZp
bmUgIERJU1BfSVBDX0VOQUJMRQkJKDEgPDwgMykNCj4gPiAtI2RlZmluZSBfREJVRl9DVExfUzEJ
CQkweDQ1MDA4DQo+ID4gLSNkZWZpbmUgX0RCVUZfQ1RMX1MyCQkJMHg0NEZFOA0KPiA+IC0jZGVm
aW5lIERCVUZfQ1RMX1Moc2xpY2UpCQlfTU1JTyhfUElDS19FVkVOKHNsaWNlLCBfREJVRl9DVExf
UzEsIF9EQlVGX0NUTF9TMikpDQo+ID4gLSNkZWZpbmUgIERCVUZfUE9XRVJfUkVRVUVTVAkJKDEg
PDwgMzEpDQo+ID4gLSNkZWZpbmUgIERCVUZfUE9XRVJfU1RBVEUJCSgxIDw8IDMwKQ0KPiA+ICsN
Cj4gPiArI2RlZmluZSBfREJVRl9DVExfUzEJCQkJMHg0NTAwOA0KPiA+ICsjZGVmaW5lIF9EQlVG
X0NUTF9TMgkJCQkweDQ0RkU4DQo+ID4gKyNkZWZpbmUgREJVRl9DVExfUyhzbGljZSkJCQlfTU1J
TyhfUElDS19FVkVOKHNsaWNlLCBfREJVRl9DVExfUzEsIF9EQlVGX0NUTF9TMikpDQo+ID4gKyNk
ZWZpbmUgIERCVUZfUE9XRVJfUkVRVUVTVAkJCVJFR19CSVQoMzEpDQo+ID4gKyNkZWZpbmUgIERC
VUZfUE9XRVJfU1RBVEUJCQlSRUdfQklUKDMwKQ0KPiA+ICsjZGVmaW5lICBEQlVGX1RSQUNLRVJf
U1RBVEVfU0VSVklDRV9NQVNLCVJFR19HRU5NQVNLKDIzLCAxOSkNCj4gPiArI2RlZmluZSAgREJV
Rl9UUkFDS0VSX1NUQVRFX1NFUlZJQ0UoeCkJCVJFR19GSUVMRF9QUkVQKERCVUZfVFJBQ0tFUl9T
VEFURV9TRVJWSUNFX01BU0ssIHgpDQo+ID4gKw0KPiA+IMKgI2RlZmluZSBHRU43X01TR19DVEwJ
X01NSU8oMHg0NTAxMCkNCj4gPiDCoCNkZWZpbmUgIFdBSVRfRk9SX1BDSF9SRVNFVF9BQ0sJCSgx
IDw8IDEpDQo+ID4gwqAjZGVmaW5lICBXQUlUX0ZPUl9QQ0hfRkxSX0FDSwkJKDEgPDwgMCkNCj4g
PiAtLSANCj4gPiAyLjI4LjANCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
