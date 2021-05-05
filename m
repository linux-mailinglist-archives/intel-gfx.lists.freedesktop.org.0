Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00358374C20
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 01:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A676EC80;
	Wed,  5 May 2021 23:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8010B6EC80
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 23:54:55 +0000 (UTC)
IronPort-SDR: 9nwLQ6qDuFcrNBie93rb2T/Upf848HXeYujvNnX0y5Xp1RlsV/vrTyh+FFdWFoZIDyiHLaBQXP
 4jXHutrMwCxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="177891220"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="177891220"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 16:54:55 -0700
IronPort-SDR: a2uI/F/+Wy7jEymYqBsXKVYEyT+f3t99Gpu+dWkUMRMcKEgqDNBxhKhcJ7OgWLMD7vzayNJlX5
 Hzw2Tqx7aQ5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="430178482"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by fmsmga008.fm.intel.com with ESMTP; 05 May 2021 16:54:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 00:54:50 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Wed, 5 May 2021 16:54:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 04/11] drm/i915/adl_p: ADL_P device info
 enabling
Thread-Index: AQHXMUYxgZOtHtPr0E6yDkiTs3OjDqrWJ7OA
Date: Wed, 5 May 2021 23:54:49 +0000
Message-ID: <343d531e53af28eccc997b5466ea535aeb94a58d.camel@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
 <20210414155208.3161335-5-imre.deak@intel.com>
In-Reply-To: <20210414155208.3161335-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <9A341EE9B3D31944A7AD6B0EDBCB57B7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/adl_p: ADL_P device info
 enabling
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

T24gV2VkLCAyMDIxLTA0LTE0IGF0IDE4OjUyICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZy
b206IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4NCj4gDQo+IEFk
ZCBBREwtUCB0byB0aGUgZGV2aWNlX2luZm8gdGFibGUgYW5kIHN1cHBvcnQgTUFDUk9TLg0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gDQo+IEJzcGVjOiA0OTE4NSwgNTUzNzIsIDU1MzczDQo+IENjOiBNYXR0IEF0d29vZCA8
bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRv
bi5BLlRheWxvckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1
aXJrcy5jICAgICAgICAgICB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAg
ICAgICAgIHwgMTIgKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uaCB8ICAxICsNCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYyBiL2FyY2gveDg2
L2tlcm5lbC9lYXJseS1xdWlya3MuYw0KPiBpbmRleCA2ZWRkMWUyZWU4YWZhLi5iNTUzZmZlOWI5
ODUxIDEwMDY0NA0KPiAtLS0gYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMNCj4gKysr
IGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jDQo+IEBAIC01NTIsNiArNTUyLDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIGludGVsX2Vhcmx5X2lkc1tdIF9faW5p
dGNvbnN0ID0gew0KPiAgCUlOVEVMX1RHTF8xMl9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJ
SU5URUxfUktMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4gIAlJTlRFTF9BRExTX0lEUygmZ2Vu
MTFfZWFybHlfb3BzKSwNCj4gKwlJTlRFTF9BRExQX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwNCj4g
IH07DQo+ICANCj4gIHN0cnVjdCByZXNvdXJjZSBpbnRlbF9ncmFwaGljc19zdG9sZW5fcmVzIF9f
cm9fYWZ0ZXJfaW5pdCA9IERFRklORV9SRVNfTUVNKDAsIDApOw0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgNCj4gaW5kZXggZTIwMjk0ZTkyMjdhNC4uZTU1MTNlMTliZWI1YyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC0xMzkyLDYgKzEzOTIsNyBAQCBJU19TVUJQTEFURk9S
TShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gICNkZWZpbmUgSVNfUk9D
S0VUTEFLRShkZXZfcHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX1JPQ0tFVExBS0Up
DQo+ICAjZGVmaW5lIElTX0RHMShkZXZfcHJpdikgICAgICAgIElTX1BMQVRGT1JNKGRldl9wcml2
LCBJTlRFTF9ERzEpDQo+ICAjZGVmaW5lIElTX0FMREVSTEFLRV9TKGRldl9wcml2KSBJU19QTEFU
Rk9STShkZXZfcHJpdiwgSU5URUxfQUxERVJMQUtFX1MpDQo+ICsjZGVmaW5lIElTX0FMREVSTEFL
RV9QKGRldl9wcml2KSBJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfQUxERVJMQUtFX1ApDQo+
ICAjZGVmaW5lIElTX0hTV19FQVJMWV9TRFYoZGV2X3ByaXYpIChJU19IQVNXRUxMKGRldl9wcml2
KSAmJiBcDQo+ICAJCQkJICAgIChJTlRFTF9ERVZJRChkZXZfcHJpdikgJiAweEZGMDApID09IDB4
MEMwMCkNCj4gICNkZWZpbmUgSVNfQkRXX1VMVChkZXZfcHJpdikgXA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMNCj4gaW5kZXggNDBiNThhNmRjMzE5My4uMjM4NDE5OGU0MWY4NSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+IEBAIC05NDksNiArOTQ5LDE3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gYWRsX3NfaW5mbyA9IHsNCj4gIAkuZGRiX3NpemUg
PSA0MDk2LAkJCQkJCVwNCj4gIAkubnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlcyA9IDQNCj4gIA0K
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBhZGxfcF9pbmZvID0gew0K
PiArCUdFTjEyX0ZFQVRVUkVTLA0KPiArCVhFX0xQRF9GRUFUVVJFUywNCj4gKwlQTEFURk9STShJ
TlRFTF9BTERFUkxBS0VfUCksDQo+ICsJLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAxLA0KPiArCS5w
bGF0Zm9ybV9lbmdpbmVfbWFzayA9DQo+ICsJCUJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChW
RUNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoVkNTMiksDQo+ICsJLnBwZ3R0X3NpemUgPSA0OCwNCj4g
KwkuZG1hX21hc2tfc2l6ZSA9IDM5LA0KPiArfTsNCj4gKw0KPiAgI3VuZGVmIEdFTg0KPiAgI3Vu
ZGVmIFBMQVRGT1JNDQo+ICANCj4gQEAgLTEwMjYsNiArMTAzNyw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcGNpX2RldmljZV9pZCBwY2lpZGxpc3RbXSA9IHsNCj4gIAlJTlRFTF9UR0xfMTJfSURT
KCZ0Z2xfaW5mbyksDQo+ICAJSU5URUxfUktMX0lEUygmcmtsX2luZm8pLA0KPiAgCUlOVEVMX0FE
TFNfSURTKCZhZGxfc19pbmZvKSwNCj4gKwlJTlRFTF9BRExQX0lEUygmYWRsX3BfaW5mbyksDQo+
ICAJezAsIDAsIDB9DQo+ICB9Ow0KPiAgTU9EVUxFX0RFVklDRV9UQUJMRShwY2ksIHBjaWlkbGlz
dCk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5m
by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiBpbmRleCA2
YTM1MWE3MDk0MTc0Li4zYjk3NWNlMWZmNTkxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMNCj4gQEAgLTY3LDYgKzY3LDcgQEAgc3RhdGljIGNvbnN0IGNo
YXIgKiBjb25zdCBwbGF0Zm9ybV9uYW1lc1tdID0gew0KPiAgCVBMQVRGT1JNX05BTUUoUk9DS0VU
TEFLRSksDQo+ICAJUExBVEZPUk1fTkFNRShERzEpLA0KPiAgCVBMQVRGT1JNX05BTUUoQUxERVJM
QUtFX1MpLA0KPiArCVBMQVRGT1JNX05BTUUoQUxERVJMQUtFX1ApLA0KPiAgfTsNCj4gICN1bmRl
ZiBQTEFURk9STV9OQU1FDQo+ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5oDQo+IGluZGV4IDhhYjRmYTZjN2ZkZDcuLmVkZjY4MjQ0YmUyYmMgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPiBAQCAtODcsNiArODcsNyBA
QCBlbnVtIGludGVsX3BsYXRmb3JtIHsNCj4gIAlJTlRFTF9ST0NLRVRMQUtFLA0KPiAgCUlOVEVM
X0RHMSwNCj4gIAlJTlRFTF9BTERFUkxBS0VfUywNCj4gKwlJTlRFTF9BTERFUkxBS0VfUCwNCj4g
IAlJTlRFTF9NQVhfUExBVEZPUk1TDQo+ICB9Ow0KPiAgDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
