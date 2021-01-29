Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6134308B5D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 18:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABAAF6EB95;
	Fri, 29 Jan 2021 17:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3790C6EB95
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 17:27:11 +0000 (UTC)
IronPort-SDR: FDkhZtHnYZLPVUfSqEU0jTSb8QLxKueDl+0G+hxOY5F1qpd/nTxBIGBXRpK9M6p7uJLE397yHH
 IZpAUqTilW5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="177892775"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="177892775"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 09:27:10 -0800
IronPort-SDR: /5SC3nGyrK1R5aWnAF06NHxo3MFbN3fXXEuK4Taf2ghJkxjQYqGGltkiWzNsdGL3YR/2aLvyBA
 L5k5gId+arWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="579482252"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2021 09:27:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 09:27:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 29 Jan 2021 09:27:09 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 29 Jan 2021 09:27:09 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 8/9] drm/i915/adl_s: Add display WAs for ADL-S
Thread-Index: AQHW9TbLoXWLcQ4YLU6yiHGJITReuao/ZAAA
Date: Fri, 29 Jan 2021 17:27:09 +0000
Message-ID: <e4c621bc309988fa9c512bb3962a1b59b3e009c4.camel@intel.com>
References: <20210128053024.23540-1-aditya.swarup@intel.com>
 <20210128053024.23540-9-aditya.swarup@intel.com>
In-Reply-To: <20210128053024.23540-9-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <4C7B839147DDB64DBE3E1C1C441D421C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/adl_s: Add display WAs for
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

T24gV2VkLCAyMDIxLTAxLTI3IGF0IDIxOjMwIC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOg0K
PiAtIEV4dGVuZCBwZXJtYW5lbnQgZHJpdmVyIFdBIFdhXzE0MDk3NjcxMDgsIFdhXzE0MDEwNjg1
MzMyDQo+IMKgwqBhbmQgV2FfMTQwMTEyOTQxODggdG8gYWRsLXMuDQo+IC0gRXh0ZW5kIHBlcm1h
bmVudCBkcml2ZXIgV0EgV2FfMTYwNjA1NDE4OCB0byBhZGwtcy4NCj4gLSBBZGQgV2FfMTQwMTE3
NjUyNDIgZm9yIGFkbC1zIEEwIHN0ZXBwaW5nLg0KPiANCj4gdjI6DQo+IC0gRXh0ZW5kIFdhXzE0
MDExNzY1MjQyIHRvIFNURVAgQTEuKG1kcm9wZXIpDQo+IA0KPiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBDYzogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDcgKysrKy0t
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICAgICAg
IHwgNCArKy0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAg
ICAgICAgICAgfCAxICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jICAgICAgICAgICB8IDYgKysrKystDQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRp
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
Cj4gaW5kZXggZDIxNmE4NjNkODE4Li5lYzkzMWEwOGZmMjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBAQCAtMjM3Myw4ICsyMzczLDgg
QEAgc3RhdGljIGludCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgCQlyZXR1cm4gLUVJTlZBTDsNCj4gwqAJfQ0KPiDCoA0K
PiANCj4gDQo+IA0KPiAtCS8qIFdhXzE2MDYwNTQxODg6dGdsICovDQo+IC0JaWYgKElTX1RJR0VS
TEFLRShkZXZfcHJpdikgJiYNCj4gKwkvKiBXYV8xNjA2MDU0MTg4OnRnbCxhZGwtcyAqLw0KPiAr
CWlmICgoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8IElTX1RJR0VSTEFLRShkZXZfcHJpdikp
ICYmDQo+IMKgCSAgICBwbGFuZV9zdGF0ZS0+Y2tleS5mbGFncyAmIEk5MTVfU0VUX0NPTE9SS0VZ
X1NPVVJDRSAmJg0KPiDCoAkgICAgaW50ZWxfZm9ybWF0X2lzX3AwMXgoZmItPmZvcm1hdC0+Zm9y
bWF0KSkgew0KPiDCoAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaA0KPiBpbmRleCA5NzEzYWI5NjMxMjIuLmExZmVmMjE3NmFlMCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC0xNTU5LDYgKzE1NTksNyBAQCBleHRlcm4gY29u
c3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyBrYmxfcmV2aWRzW107DQo+IMKgDQo+IA0KPiAN
Cj4gDQo+IMKgZW51bSB7DQo+IMKgCVNURVBfQTAsDQo+ICsJU1RFUF9BMSwNCj4gwqAJU1RFUF9B
MiwNCj4gwqAJU1RFUF9CMCwNCj4gwqAJU1RFUF9CMSwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jDQo+IGluZGV4IDg1ZDY4ODM3NDVkOC4uMDZkZjE5MTFjYzdkIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gQEAgLTI1
MCw3ICsyNTAsMTEgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDCoAlzdHJ1Y3QgaW50ZWxfcnVudGltZV9p
bmZvICpydW50aW1lID0gUlVOVElNRV9JTkZPKGRldl9wcml2KTsNCj4gwqAJZW51bSBwaXBlIHBp
cGU7DQo+IMKgDQo+IA0KPiANCj4gDQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAp
IHsNCj4gKwkvKiBXYV8xNDAxMTc2NTI0MjogYWRsLXMgQTAgKi8NCj4gKwlpZiAoSVNfQURMU19E
SVNQX1NURVBQSU5HKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0ExKSkNCg0KSW4gbXkgb3Bpbmlv
biAiaWYgKElTX0FETFNfRElTUF9TVEVQUElORyhkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkp
IiBpcyB0aGUgcmlnaHQgYXBwcm9hY2ggaGVyZSwgdGhlcmUgbm8gc3RlcHBpbmcgd2l0aCBkaXNw
bGF5IEExIHNvIGp1c3QgY2hlY2tpbmcNClNURVBfQTAgd2lsbCBiZSBlbm91Z2guDQoNCkFsc28g
Y29tbWVudGVkIHRoYXQgaW4gdGhlIHByZXZpb3VzIHZlcnNpb24sIG1heWJlIGEgdGhpcmQgb3Bp
bmlvbiB0byBzaGluZSBpbj8NCg0KT3RoZXIgdGhhbiB0aGF0IGl0IExHVE0uIA0KDQo+ICsJCWZv
cl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpDQo+ICsJCQlydW50aW1lLT5udW1fc2NhbGVyc1tw
aXBlXSA9IDA7DQo+ICsJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkgew0KPiDC
oAkJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkNCj4gwqAJCQlydW50aW1lLT5udW1fc2Nh
bGVyc1twaXBlXSA9IDI7DQo+IMKgCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkgew0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
