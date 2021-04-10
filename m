Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C709C35A960
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Apr 2021 02:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63E36E0F4;
	Sat, 10 Apr 2021 00:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961FF6E0F4
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Apr 2021 00:07:35 +0000 (UTC)
IronPort-SDR: WkytFEdRpuHHRgTLKoF70E9WFSk9cCIfwNWS8zFKN5Z1kX0rEMWyp9nsYWI6N6uaMPvGnS1sAD
 GcomzdJHGh4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9949"; a="173949908"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="173949908"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 17:07:35 -0700
IronPort-SDR: HxLiD3UMSYCB0GHVWZiH7snfE/kFcAl6NcdTbxhQQswmrsok/t9kGQQJ276XeBLGTmEVLM8tdr
 byW+51avGpVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="387946528"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 09 Apr 2021 17:07:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 9 Apr 2021 17:07:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 9 Apr 2021 17:07:34 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 9 Apr 2021 17:07:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/12] drm/i915: rename display.version to
 display.ver
Thread-Index: AQHXLDMNAIVzTswjg0KkU13iVRmIYaqtWK0A
Date: Sat, 10 Apr 2021 00:07:34 +0000
Message-ID: <4e4340f6c5d1edc9eddebfcdfec75e53709727d8.camel@intel.com>
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
 <20210408045227.985408-2-lucas.demarchi@intel.com>
In-Reply-To: <20210408045227.985408-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <A600B0FC6045EE42B4DE915F14D38768@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: rename display.version to
 display.ver
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

T24gV2VkLCAyMDIxLTA0LTA3IGF0IDIxOjUyIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFRoZSBtYWNybyB3ZSB1c2UgdG8gY2hlY2sgaXMgY2FsbGVkIERJU1BMQVlfVkVSKCkuIFdo
aWxlIHVzaW5nIHRoaXMNCj4gbWFjcm8gYW5kIHRoZSBuZXcgb25lcyBiZWluZyBhZGRlZCBpbiBm
b2xsb3dpbmcgY2hhbmdlcyBJIG1hZGUgdGhlDQo+IG1pc3Rha2UgbXVsdGlwbGUgdGltZXMgd2hl
biBtaXhpbmcgYm90aCAidmVyIiBhbmQgInZlcnNpb24iLiBBbHRob3VnaA0KPiBpdCdzIHVzdWFs
bHkgYmV0dGVyIHRvIHByZWZlciB0aGUgY29tcGxldGUgbmFtZSwgdGhlIHNob3JoYW5kDQo+IERJ
U1BMQVlfVkVSKCkgLyBHUkFQSElDU19WRVIgLyBNRURJQV9WRVIgYXJlIGNsZWFyIGFuZCBjYXVz
ZSBsZXNzDQo+IHZpc3VhbCBwb2x1dGlvbi4NCj4gDQo+IEFub3RoZXIgaXNzdWUgaXMgd2hlbiBj
b3B5aW5nIHRoZSB2YXJpYWJsZSB0byBvdGhlciBwbGFjZXMuDQo+ICJkaXNwbGF5LnZlcnNpb24i
IHdvdWxkIGJlIGNvcGllZCB0byBhICJkaXNwbGF5X3ZlcnNpb24iIHZhcmlhYmxlIHdoaWNoDQo+
IGlzIGxvbmcgYW5kIHdvdWxkIG1ha2UgcGVvcGxlIGFiYnJldmlhdGUgYXMgInZlcnNpb24iLCBv
ciAiZGlzcGxheV92ZXIiLg0KPiBJbiB0aGUgZmlyc3QgY2FzZSBpdCdzIG5vdCBhbHdheXMgY2xl
YXIgd2hhdCB2ZXJzaW9uIHJlZmVycyB0bywgYW5kIGluDQo+IHRoZSBzZWNvbmQgY2FzZSBpdCBq
dXN0IGhpbnRzIGl0IHNob3VsZCBiZSB0aGUgbmFtZSBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+IA0K
PiBTbywgaW4gdGhlIHNhbWUgd2F5IHVzZSB1c2VkICJnZW4iIHJhdGhlciB0aGFuICJnZW5lcmF0
aW9uIiwgdXNlICJ2ZXIiDQo+IGluc3RlYWQgb2YgInZlcnNpb24iLg0KPiANCg0KUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IFNp
Z25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0K
PiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMiAr
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCA0ICsrLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgMiArLQ0KPiDC
oDMgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4IDY5ZTQzYmY5MWExNS4uOGM2MmJiMmFiZDMx
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTEyMzcsNyArMTIzNyw3IEBA
IHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKnBkZXZfdG9faTkxNShzdHJ1
Y3QgcGNpX2RldiAqcGRldikNCj4gwqAjZGVmaW5lIElOVEVMX0dFTihkZXZfcHJpdikJKElOVEVM
X0lORk8oZGV2X3ByaXYpLT5nZW4pDQo+IMKgI2RlZmluZSBJTlRFTF9ERVZJRChkZXZfcHJpdikJ
KFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPmRldmljZV9pZCkNCj4gwqANCj4gDQo+IA0KPiANCj4g
LSNkZWZpbmUgRElTUExBWV9WRVIoaTkxNSkJKElOVEVMX0lORk8oaTkxNSktPmRpc3BsYXkudmVy
c2lvbikNCj4gKyNkZWZpbmUgRElTUExBWV9WRVIoaTkxNSkJKElOVEVMX0lORk8oaTkxNSktPmRp
c3BsYXkudmVyKQ0KPiDCoCNkZWZpbmUgSVNfRElTUExBWV9SQU5HRShpOTE1LCBmcm9tLCB1bnRp
bCkgXA0KPiDCoAkoRElTUExBWV9WRVIoaTkxNSkgPj0gKGZyb20pICYmIERJU1BMQVlfVkVSKGk5
MTUpIDw9ICh1bnRpbCkpDQo+IMKgI2RlZmluZSBJU19ESVNQTEFZX1ZFUihpOTE1LCB2KSAoRElT
UExBWV9WRVIoaTkxNSkgPT0gKHYpKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gaW5kZXgg
NDgwNTUzNzQ2Nzk0Li5jZTVjYmVhZjAzNmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
Yw0KPiBAQCAtMzYsNyArMzYsNyBAQA0KPiDCoCNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiDQo+
IMKgDQo+IA0KPiANCj4gDQo+IMKgI2RlZmluZSBQTEFURk9STSh4KSAucGxhdGZvcm0gPSAoeCkN
Cj4gLSNkZWZpbmUgR0VOKHgpIC5nZW4gPSAoeCksIC5nZW5fbWFzayA9IEJJVCgoeCkgLSAxKSwg
LmRpc3BsYXkudmVyc2lvbiA9ICh4KQ0KPiArI2RlZmluZSBHRU4oeCkgLmdlbiA9ICh4KSwgLmdl
bl9tYXNrID0gQklUKCh4KSAtIDEpLCAuZGlzcGxheS52ZXIgPSAoeCkNCj4gwqANCj4gDQo+IA0K
PiANCj4gwqAjZGVmaW5lIEk4NDVfUElQRV9PRkZTRVRTIFwNCj4gwqAJLnBpcGVfb2Zmc2V0cyA9
IHsgXA0KPiBAQCAtNzIzLDcgKzcyMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2
aWNlX2luZm8gYnh0X2luZm8gPSB7DQo+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZp
Y2VfaW5mbyBnbGtfaW5mbyA9IHsNCj4gwqAJR0VOOV9MUF9GRUFUVVJFUywNCj4gwqAJUExBVEZP
Uk0oSU5URUxfR0VNSU5JTEFLRSksDQo+IC0JLmRpc3BsYXkudmVyc2lvbiA9IDEwLA0KPiArCS5k
aXNwbGF5LnZlciA9IDEwLA0KPiDCoAkuZGRiX3NpemUgPSAxMDI0LA0KPiDCoAlHTEtfQ09MT1JT
LA0KPiDCoH07DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPiBp
bmRleCAyZjQ0MmQ0MThhMTUuLmIxNmM3NTkyN2ExMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+IEBAIC0xODksNyArMTg5LDcgQEAgc3RydWN0IGlu
dGVsX2RldmljZV9pbmZvIHsNCj4gwqAjdW5kZWYgREVGSU5FX0ZMQUcNCj4gwqANCj4gDQo+IA0K
PiANCj4gwqAJc3RydWN0IHsNCj4gLQkJdTggdmVyc2lvbjsNCj4gKwkJdTggdmVyOw0KPiDCoA0K
PiANCj4gDQo+IA0KPiDCoCNkZWZpbmUgREVGSU5FX0ZMQUcobmFtZSkgdTggbmFtZToxDQo+IMKg
CQlERVZfSU5GT19ESVNQTEFZX0ZPUl9FQUNIX0ZMQUcoREVGSU5FX0ZMQUcpOw0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
