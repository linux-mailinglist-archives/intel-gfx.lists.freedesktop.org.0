Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25627308CCA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCA56EBF6;
	Fri, 29 Jan 2021 18:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B166EBF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:54:31 +0000 (UTC)
IronPort-SDR: yWtOX39lhR2Dy+hcwS5YgozQv1wCBiG//BbJLHC1hkC33gX7DINbwRTbKXAhibKR3K6ejKERkI
 +HZmKP7XROtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="179689212"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="179689212"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:54:30 -0800
IronPort-SDR: CtjxbtfwE77s4+tZp0iiOCXhhhpRtMjH+IILX7HKUxFNR/ODVDGxcilpjxG8n3xqvSfoMcr1+K
 gmfW5hrV33AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="411696827"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jan 2021 10:54:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 10:54:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 10:54:29 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 29 Jan 2021 10:54:29 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 7/8] drm/i915/adl_s: Add display WAs for ADL-S
Thread-Index: AQHW9mzfrPhKDXA680WbUgF3l7n4R6o/efsA
Date: Fri, 29 Jan 2021 18:54:29 +0000
Message-ID: <72958ec50fd5cb93c28c3c5c52f5fbc8e820f02c.camel@intel.com>
References: <20210129182945.217078-1-aditya.swarup@intel.com>
 <20210129182945.217078-8-aditya.swarup@intel.com>
In-Reply-To: <20210129182945.217078-8-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <3E3D1535061CBF43A4BC22789529322C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/adl_s: Add display WAs for
 ADL-S
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

T24gRnJpLCAyMDIxLTAxLTI5IGF0IDEwOjI5IC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOg0K
PiAtIEV4dGVuZCBwZXJtYW5lbnQgZHJpdmVyIFdBIFdhXzE0MDk3NjcxMDgsIFdhXzE0MDEwNjg1
MzMyDQo+IMKgwqBhbmQgV2FfMTQwMTEyOTQxODggdG8gYWRsLXMuDQo+IC0gRXh0ZW5kIHBlcm1h
bmVudCBkcml2ZXIgV0EgV2FfMTYwNjA1NDE4OCB0byBhZGwtcy4NCj4gLSBBZGQgV2FfMTQwMTE3
NjUyNDIgZm9yIGFkbC1zIEEwIHN0ZXBwaW5nLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4NCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IENj
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNyAr
KysrLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAg
ICAgICAgfCA0ICsrLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jICAgICAgICAgICB8IDYgKysrKystDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gaW5kZXggY2NjZmQ0NWE2N2NmLi5l
MTdiMWNhMzU2YzMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IEBAIC01MzM5LDkgKzUzMzksMTAgQEAgc3RhdGlj
IHZvaWQgdGdsX2J3X2J1ZGR5X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiDCoAl1bnNpZ25lZCBsb25nIGFib3hfbWFzayA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5h
Ym94X21hc2s7DQo+IMKgCWludCBjb25maWcsIGk7DQo+IMKgDQo+IA0KPiANCj4gDQo+IC0JaWYg
KElTX0RHMV9SRVZJRChkZXZfcHJpdiwgREcxX1JFVklEX0EwLCBERzFfUkVWSURfQTApIHx8DQo+
ICsJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSB8fA0KPiArCSAgICBJU19ERzFfUkVWSUQo
ZGV2X3ByaXYsIERHMV9SRVZJRF9BMCwgREcxX1JFVklEX0EwKSB8fA0KPiDCoAkgICAgSVNfVEdM
X0RJU1BfU1RFUFBJTkcoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApKQ0KPiAtCQkvKiBXYV8x
NDA5NzY3MTA4OnRnbCxkZzEgKi8NCj4gKwkJLyogV2FfMTQwOTc2NzEwODp0Z2wsZGcxLGFkbC1z
ICovDQo+IMKgCQl0YWJsZSA9IHdhXzE0MDk3NjcxMDhfYnVkZHlfcGFnZV9tYXNrczsNCj4gwqAJ
ZWxzZQ0KPiDCoAkJdGFibGUgPSB0Z2xfYnVkZHlfcGFnZV9tYXNrczsNCj4gQEAgLTUzNzksNyAr
NTM4MCw3IEBAIHN0YXRpYyB2b2lkIGljbF9kaXNwbGF5X2NvcmVfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgCWdlbjlfc2V0X2Rj
X3N0YXRlKGRldl9wcml2LCBEQ19TVEFURV9ESVNBQkxFKTsNCj4gwqANCj4gDQo+IA0KPiANCj4g
LQkvKiBXYV8xNDAxMTI5NDE4ODplaGwsanNsLHRnbCxya2wgKi8NCj4gKwkvKiBXYV8xNDAxMTI5
NDE4ODplaGwsanNsLHRnbCxya2wsYWRsLXMgKi8NCj4gwqAJaWYgKElOVEVMX1BDSF9UWVBFKGRl
dl9wcml2KSA+PSBQQ0hfSlNQICYmDQo+IMKgCSAgICBJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikg
PCBQQ0hfREcxKQ0KPiDCoAkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBTT1VUSF9EU1BDTEtfR0FU
RV9ELCAwLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMN
Cj4gaW5kZXggYjFjN2U5YjAxMGY0Li40MDIwMzAyNTFjNjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBAQCAtMjM5Miw4ICsyMzkyLDgg
QEAgc3RhdGljIGludCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgCQlyZXR1cm4gLUVJTlZBTDsNCj4gwqAJfQ0KPiDCoA0K
PiANCj4gDQo+IA0KPiAtCS8qIFdhXzE2MDYwNTQxODg6dGdsICovDQo+IC0JaWYgKElTX1RJR0VS
TEFLRShkZXZfcHJpdikgJiYNCj4gKwkvKiBXYV8xNjA2MDU0MTg4OnRnbCxhZGwtcyAqLw0KPiAr
CWlmICgoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8IElTX1RJR0VSTEFLRShkZXZfcHJpdikp
ICYmDQo+IMKgCSAgICBwbGFuZV9zdGF0ZS0+Y2tleS5mbGFncyAmIEk5MTVfU0VUX0NPTE9SS0VZ
X1NPVVJDRSAmJg0KPiDCoAkgICAgaW50ZWxfZm9ybWF0X2lzX3AwMXgoZmItPmZvcm1hdC0+Zm9y
bWF0KSkgew0KPiDCoAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiBpbmRleCA4NWQ2ODgzNzQ1ZDguLjkyYWQz
ZTdkMWY2ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
DQo+IEBAIC0yNTAsNyArMjUwLDExIEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gwqAJc3RydWN0IGludGVs
X3J1bnRpbWVfaW5mbyAqcnVudGltZSA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdik7DQo+IMKgCWVu
dW0gcGlwZSBwaXBlOw0KPiDCoA0KPiANCj4gDQo+IA0KPiAtCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEwKSB7DQo+ICsJLyogV2FfMTQwMTE3NjUyNDI6IGFkbC1zIEEwICovDQo+ICsJaWYg
KElTX0FETFNfRElTUF9TVEVQUElORyhkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkpDQo+ICsJ
CWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpDQo+ICsJCQlydW50aW1lLT5udW1fc2NhbGVy
c1twaXBlXSA9IDA7DQo+ICsJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkgew0K
PiDCoAkJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkNCj4gwqAJCQlydW50aW1lLT5udW1f
c2NhbGVyc1twaXBlXSA9IDI7DQo+IMKgCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkg
ew0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
