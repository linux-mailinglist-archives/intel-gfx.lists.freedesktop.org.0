Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EF5349B3C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 21:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141686E0C6;
	Thu, 25 Mar 2021 20:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC346E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 20:50:36 +0000 (UTC)
IronPort-SDR: cbH9/ttMXHpk870waZbycXNZpOR3MWu6o4grfBM98kcXc9mzWTsl6Snj15EIr+ssc2J5Ii3NhV
 5b7W1gKMPgbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="170995837"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="170995837"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 13:50:36 -0700
IronPort-SDR: r2owHDN0NwsWJyp0cOru2NOBlS9EPNF+NzOW2OSWIPysnP67YfjloXtAneJvHjhBf9SK9iJZED
 AEmqmGPSQ6dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="436605575"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 25 Mar 2021 13:50:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 13:50:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 13:50:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 25 Mar 2021 13:50:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/8] drm/i915: add new helpers for
 accessing stepping info
Thread-Index: AQHXFCLyw91tTGA5DESabP1INa5zkKqVvrMA
Date: Thu, 25 Mar 2021 20:50:34 +0000
Message-ID: <08b49ea1f0eea0d93e0991c5cbdfd150610950f1.camel@intel.com>
References: <cover.1615211711.git.jani.nikula@intel.com>
 <4f87fcc238ec8f430a4adce02f66d210ca99714d.1615211711.git.jani.nikula@intel.com>
In-Reply-To: <4f87fcc238ec8f430a4adce02f66d210ca99714d.1615211711.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <C6F44DD5C9195C42A5F4512052CAA2E3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/8] drm/i915: add new helpers for
 accessing stepping info
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
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTAzLTA4IGF0IDE1OjU2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
QWRkIG5ldyBydW50aW1lIGluZm8gZmllbGQgZm9yIHN0ZXBwaW5nLiBBZGQgbmV3IGhlbHBlcnMg
Zm9yIGFjY2Vzc2luZw0KPiB0aGVtLiBBcyB3ZSdsbCBiZSBzd2l0Y2hpbmcgcGxhdGZvcm1zIG92
ZXIgdG8gdGhlIG5ldyBzY2hlbWUNCj4gaW5jcmVtZW50YWxseSwgY2hlY2sgZm9yIG5vbi1pbml0
aWFsaXplZCBzdGVwcGluZ3MuDQo+IA0KPiBJbiBjYXNlIGEgcGxhdGZvcm0gZG9lcyBub3QgaGF2
ZSBzZXBhcmF0ZSBkaXNwbGF5IGFuZCBndCBzdGVwcGluZ3MsIGl0J3MNCj4gb2theSB0byB1c2Ug
YSBjb21tb24gc2hvcnRoYW5kLiBIb3dldmVyLCBpbiB0aGlzIGNhc2UgdGhlIGRpc3BsYXkNCj4g
c3RlcHBpbmcgbXVzdCBub3QgYmUgaW5pdGlhbGl6ZWQsIGFuZCBndCBzdGVwcGluZyBpcyB0aGUg
c2luZ2xlIHBvaW50IG9mDQo+IHRydXRoLg0KPiANCj4gdjI6IFJlbmFtZSBzdGVwcGluZy0+c3Rl
cA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwg
MjQgKysrKysrKysrKysrKysrLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5oIHwgIDQgKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
c3RlcC5oICAgICAgICB8IDE0ICsrKysrKysrKysrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDMz
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgNCj4gaW5kZXggMDIxNzBlZGQ2NjI4Li5hNTQzYjFhZDliYTkgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaA0KPiBAQCAtMTI3NCw2ICsxMjc0LDIxIEBAIHN0YXRpYyBpbmxpbmUgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKnBkZXZfdG9faTkxNShzdHJ1Y3QgcGNpX2RldiAqcGRldikN
Cj4gICNkZWZpbmUgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSBcDQo+ICAJKElOVEVMX1JFVklE
KHApID49IChzaW5jZSkgJiYgSU5URUxfUkVWSUQocCkgPD0gKHVudGlsKSkNCj4gIA0KPiANCj4g
KyNkZWZpbmUgSU5URUxfRElTUExBWV9TVEVQKF9faTkxNSkgKFJVTlRJTUVfSU5GTyhfX2k5MTUp
LT5zdGVwLmRpc3Bfc3RlcHBpbmcpDQo+ICsjZGVmaW5lIElOVEVMX0dUX1NURVAoX19pOTE1KSAo
UlVOVElNRV9JTkZPKF9faTkxNSktPnN0ZXAuZ3Rfc3RlcHBpbmcpDQo+ICsNCj4gKyNkZWZpbmUg
SVNfRElTUExBWV9TVEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSBcDQo+ICsJKGRybV9XQVJOX09O
KCYoX19pOTE1KS0+ZHJtLCBJTlRFTF9ESVNQTEFZX1NURVAoX19pOTE1KSA9PSBTVEVQX05PTkUp
LCBcDQo+ICsJIElOVEVMX0RJU1BMQVlfU1RFUChfX2k5MTUpID49IChzaW5jZSkgJiYgSU5URUxf
RElTUExBWV9TVEVQKF9faTkxNSkgPD0gKHVudGlsKSkNCj4gKw0KPiArI2RlZmluZSBJU19HVF9T
VEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSBcDQo+ICsJKGRybV9XQVJOX09OKCYoX19pOTE1KS0+
ZHJtLCBJTlRFTF9HVF9TVEVQKF9faTkxNSkgPT0gU1RFUF9OT05FKSwgXA0KPiArCSBJTlRFTF9H
VF9TVEVQKF9faTkxNSkgPj0gKHNpbmNlKSAmJiBJTlRFTF9HVF9TVEVQKF9faTkxNSkgPD0gKHVu
dGlsKSkNCj4gKw0KPiArI2RlZmluZSBJU19TVEVQKHAsIHNpbmNlLCB1bnRpbCkgXA0KPiArCShk
cm1fV0FSTl9PTigmKF9faTkxNSktPmRybSwgSU5URUxfRElTUExBWV9TVEVQKF9faTkxNSkgIT0g
U1RFUF9OT05FKSwgXA0KDQooZHJtX1dBUk5fT04oJihfX2k5MTUpLT5kcm0sIElOVEVMX0RJU1BM
QVlfU1RFUChfX2k5MTUpID09IFNURVBfTk9ORSksIFwNCg0KQnV0IEkgZG9uJ3QgdGhpbmsgSVNf
U1RFUCgpIGlzIHVzZWZ1bCwgYmV0dGVyIHVzZSBJU19ESVNQTEFZL0dUX1NURVAgZXZlbiBmb3Ig
cGxhdGZvcm1zIHdpdGggdGhlIHNhbWUgZGlzcGxheSBhbmQgR1QgdmVyc2lvbi4NCg0KV2l0aCB0
aGUgY2hhbmdlIGFib3ZlOg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gKwkgSU5URUxfR1RfU1RFUChfX2k5MTUsIHNpbmNl
LCB1bnRpbCkpDQo+ICsNCj4gIHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUgdW5zaWduZWQgaW50DQo+
ICBfX3BsYXRmb3JtX21hc2tfaW5kZXgoY29uc3Qgc3RydWN0IGludGVsX3J1bnRpbWVfaW5mbyAq
aW5mbywNCj4gIAkJICAgICAgZW51bSBpbnRlbF9wbGF0Zm9ybSBwKQ0KPiBAQCAtMTUxMSwxNSAr
MTUyNiw2IEBAIGVudW0gew0KPiAgI2RlZmluZSBJU19KU0xfRUhMX1JFVklEKHAsIHNpbmNlLCB1
bnRpbCkgXA0KPiAgCShJU19KU0xfRUhMKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkp
DQo+ICANCj4gDQo+IC1lbnVtIHsNCj4gLQlTVEVQX0EwLA0KPiAtCVNURVBfQTIsDQo+IC0JU1RF
UF9CMCwNCj4gLQlTVEVQX0IxLA0KPiAtCVNURVBfQzAsDQo+IC0JU1RFUF9EMCwNCj4gLX07DQo+
IC0NCj4gIHN0YXRpYyBpbmxpbmUgY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyAqDQo+
ICB0Z2xfc3RlcHBpbmdfZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4g
IHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+IGluZGV4IGQ0
NGY2NGI1N2I3YS4uZjg0NTY5ZThlNzExIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmgNCj4gQEAgLTI3LDYgKzI3LDggQEANCj4gIA0KPiANCj4gICNpbmNs
dWRlIDx1YXBpL2RybS9pOTE1X2RybS5oPg0KPiAgDQo+IA0KPiArI2luY2x1ZGUgImludGVsX3N0
ZXAuaCINCj4gKw0KPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheS5oIg0KPiAgDQo+
IA0KPiAgI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV90eXBlcy5oIg0KPiBAQCAtMjI1LDYgKzIy
Nyw4IEBAIHN0cnVjdCBpbnRlbF9ydW50aW1lX2luZm8gew0KPiAgCXU4IG51bV9zY2FsZXJzW0k5
MTVfTUFYX1BJUEVTXTsNCj4gIA0KPiANCj4gIAl1MzIgcmF3Y2xrX2ZyZXE7DQo+ICsNCj4gKwlz
dHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHN0ZXA7DQo+ICB9Ow0KPiAgDQo+IA0KPiAgc3RydWN0
IGludGVsX2RyaXZlcl9jYXBzIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3N0ZXAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3N0ZXAuaA0KPiBpbmRl
eCBhZjkyMmFlM2JiNGUuLjhiM2VmMTlkOTM1YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfc3RlcC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3N0ZXAuaA0KPiBAQCAtMjIsNCArMjIsMTggQEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBpOTE1X3Jl
dl9zdGVwcGluZ3MgdGdsX3V5X3JldmlkX3N0ZXBfdGJsW1RHTF9VWV9SRVZJRF9TVEVQX1QNCj4g
IGV4dGVybiBjb25zdCBzdHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzIHRnbF9yZXZpZF9zdGVwX3Ri
bFtUR0xfUkVWSURfU1RFUF9UQkxfU0laRV07DQo+ICBleHRlcm4gY29uc3Qgc3RydWN0IGk5MTVf
cmV2X3N0ZXBwaW5ncyBhZGxzX3JldmlkX3N0ZXBfdGJsW0FETFNfUkVWSURfU1RFUF9UQkxfU0la
RV07DQo+ICANCj4gDQo+ICsvKg0KPiArICogU3ltYm9saWMgc3RlcHBpbmdzIHRoYXQgZG8gbm90
IG1hdGNoIHRoZSBoYXJkd2FyZS4gVGhlc2UgYXJlIHZhbGlkIGJvdGggYXMgZ3QNCj4gKyAqIGFu
ZCBkaXNwbGF5IHN0ZXBwaW5ncyBhcyBzeW1ib2xpYyBuYW1lcy4NCj4gKyAqLw0KPiArZW51bSBp
bnRlbF9zdGVwIHsNCj4gKwlTVEVQX05PTkUgPSAwLA0KPiArCVNURVBfQTAsDQo+ICsJU1RFUF9B
MiwNCj4gKwlTVEVQX0IwLA0KPiArCVNURVBfQjEsDQo+ICsJU1RFUF9DMCwNCj4gKwlTVEVQX0Qw
LA0KPiArfTsNCj4gKw0KPiAgI2VuZGlmIC8qIF9fSU5URUxfU1RFUF9IX18gKi8NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
