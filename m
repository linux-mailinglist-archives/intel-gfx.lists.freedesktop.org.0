Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E0123F1F2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 19:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B186E150;
	Fri,  7 Aug 2020 17:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074D56E150
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 17:32:23 +0000 (UTC)
IronPort-SDR: J+qNn5ILPMOGPkt5GyO0erwleVdiMHFxRUEMrEj2h1Bb0HWuTR68j5gELzNHrafa4ZYqb4BAPM
 TJzh19fhVbSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="132708463"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="132708463"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 10:32:23 -0700
IronPort-SDR: +aU7LCURKspndafRQKxGms7PjUcFqn/swhuGsvoHPbbQ1PZ4Ckp/oDVcOoDNyWi27iSTRvPusr
 J6HTNez1pt8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="276726395"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 07 Aug 2020 10:32:23 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 10:32:22 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 7 Aug 2020 10:32:22 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.226]) with mapi id 14.03.0439.000;
 Fri, 7 Aug 2020 10:32:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Set subplatforms
Thread-Index: AQHWXrhSU9sIE0ss5kW7FUkbsM9LdaksdZ2AgAEEXAA=
Date: Fri, 7 Aug 2020 17:32:22 +0000
Message-ID: <b99d3ca41decc3835d33af1a5230a187f7e25f51.camel@intel.com>
References: <20200720170948.28446-1-jose.souza@intel.com>
 <09614FAEEEACB8419B519675A649C8BF89B031CA@ORSMSX115.amr.corp.intel.com>
In-Reply-To: <09614FAEEEACB8419B519675A649C8BF89B031CA@ORSMSX115.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.136.42]
Content-ID: <FA29D59E57839245ADC13510788D2F71@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Set subplatforms
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

VGhlIGRlZmF1bHQgY2FzZSB3b3VsZCBkbyBub3RoaW5nLg0KDQpPbiBUaHUsIDIwMjAtMDgtMDYg
YXQgMTk6MDIgLTA3MDAsIERoYW5hdmFudGhyaSwgU3dhdGhpIHdyb3RlOg0KPiBJdCBtaWdodCBi
ZSBoZWxwZnVsIHRvIGFkZCBhIGRlZmF1bHQgY2FzZSBpbiB0aGUgc3dpdGNoIHN0YXRlbWVudCBm
b3IgdW5zdXBwb3J0ZWQgY2FzZXMuDQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBJbnRlbC1nZnggPA0KPiBpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiBPbiBCZWhhbGYgT2YgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQ0KPiBTZW50OiBN
b25kYXksIEp1bHkgMjAsIDIwMjAgMTA6MTAgQU0NCj4gVG86IA0KPiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IA0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMS8yXSBk
cm0vaTkxNS90Z2w6IFNldCBzdWJwbGF0Zm9ybXMNCj4gDQo+IFRoZXJlIGlzIG5vIHdheSB0byBk
aWZmZXJlbnRpYXRlIFRHTC1VIGZyb20gVEdMLVkgYnkgdGhlIFBDSSBpZHMgYXMgc29tZSBpZHMg
YXJlIGF2YWlsYWJsZSBpbiBib3RoIFNLVXMuDQo+IFNvIGhlcmUgdXNpbmcgdGhlIHJvb3QgZGV2
aWNlIGlkIGluIHRoZSBQQ0kgYnVzIHRoYXQgaUdQVSBpcyBpbiB0byBkaWZmZXJlbnRpYXRlIGJl
dHdlZW4gVSBhbmQgWS4NCj4gDQo+IEJTcGVjOiA0NDQ1NQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDwNCj4gam9zZS5zb3V6YUBpbnRlbC5jb20NCj4gPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgNiArKysrKysN
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgNiArKysrKysN
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAxOSArKysrKysr
KysrKysrKysrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBpbmRleCA1NmRmYzZkOThjYWEuLmE1OWY2NDgyMTkyMCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IEBAIC0xNDk3LDYgKzE0OTcsMTIgQEAg
SVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsICAjZGVm
aW5lIElTX0lDTF9XSVRIX1BPUlRfRihkZXZfcHJpdikgXA0KPiAgCUlTX1NVQlBMQVRGT1JNKGRl
dl9wcml2LCBJTlRFTF9JQ0VMQUtFLCBJTlRFTF9TVUJQTEFURk9STV9QT1JURikNCj4gIA0KPiAr
I2RlZmluZSBJU19UR0xfVShkZXZfcHJpdikgXA0KPiArCUlTX1NVQlBMQVRGT1JNKGRldl9wcml2
LCBJTlRFTF9USUdFUkxBS0UsIElOVEVMX1NVQlBMQVRGT1JNX1VMVCkNCj4gKw0KPiArI2RlZmlu
ZSBJU19UR0xfWShkZXZfcHJpdikgXA0KPiArCUlTX1NVQlBMQVRGT1JNKGRldl9wcml2LCBJTlRF
TF9USUdFUkxBS0UsIElOVEVMX1NVQlBMQVRGT1JNX1VMWCkNCj4gKw0KPiAgI2RlZmluZSBTS0xf
UkVWSURfQTAJCTB4MA0KPiAgI2RlZmluZSBTS0xfUkVWSURfQjAJCTB4MQ0KPiAgI2RlZmluZSBT
S0xfUkVWSURfQzAJCTB4Mg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXggYTBkMzFmM2Jm
NjM0Li42YTA3NjhjYjAxZjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAt
MTIzNjMsNCArMTIzNjMsMTAgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+ICAjZGVmaW5lICAg
RFNCX0VOQUJMRQkJCSgxIDw8IDMxKQ0KPiAgI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAw
KQ0KPiAgDQo+ICsjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9JRAkJMHg5QTAwDQo+ICsjZGVmaW5l
IFRHTF9ST09UX0RFVklDRV9NQVNLCQkweEZGMDANCj4gKyNkZWZpbmUgVEdMX1JPT1RfREVWSUNF
X1NLVV9NQVNLCTB4Rg0KPiArI2RlZmluZSBUR0xfUk9PVF9ERVZJQ0VfU0tVX1VMWAkJMHgyDQo+
ICsjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9TS1VfVUxUCQkweDQNCj4gKw0KPiAgI2VuZGlmIC8q
IF9JOTE1X1JFR19IXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMNCj4gaW5kZXggNDBjNTkwZGIzYzc2Li5lMmFhNWJjM2E2ZTAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiBAQCAtMzQ2LDYgKzM0NiwyNSBAQCB2
b2lkIGludGVsX2RldmljZV9pbmZvX3N1YnBsYXRmb3JtX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpDQo+ICAJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fUE9SVEYpOw0K
PiAgCX0NCj4gIA0KPiArCWlmIChJU19USUdFUkxBS0UoaTkxNSkpIHsNCj4gKwkJc3RydWN0IHBj
aV9kZXYgKnJvb3QsICpwZGV2ID0gaTkxNS0+ZHJtLnBkZXY7DQo+ICsNCj4gKwkJcm9vdCA9IGxp
c3RfZmlyc3RfZW50cnkoJnBkZXYtPmJ1cy0+ZGV2aWNlcywgdHlwZW9mKCpyb290KSwgDQo+ICti
dXNfbGlzdCk7DQo+ICsNCj4gKwkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgbWFzayk7DQo+ICsJ
CWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIChyb290LT5kZXZpY2UgJiBUR0xfUk9PVF9ERVZJQ0Vf
TUFTSykgIT0NCj4gKwkJCSAgICBUR0xfUk9PVF9ERVZJQ0VfSUQpOw0KPiArDQo+ICsJCXN3aXRj
aCAocm9vdC0+ZGV2aWNlICYgVEdMX1JPT1RfREVWSUNFX1NLVV9NQVNLKSB7DQo+ICsJCWNhc2Ug
VEdMX1JPT1RfREVWSUNFX1NLVV9VTFg6DQo+ICsJCQltYXNrID0gQklUKElOVEVMX1NVQlBMQVRG
T1JNX1VMWCk7DQo+ICsJCQlicmVhazsNCj4gKwkJY2FzZSBUR0xfUk9PVF9ERVZJQ0VfU0tVX1VM
VDoNCj4gKwkJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fVUxUKTsNCj4gKwkJCWJyZWFr
Ow0KPiArCQl9DQo+ICsJfQ0KPiArDQo+ICAJR0VNX0JVR19PTihtYXNrICYgfklOVEVMX1NVQlBM
QVRGT1JNX0JJVFMpOw0KPiAgDQo+ICAJUlVOVElNRV9JTkZPKGk5MTUpLT5wbGF0Zm9ybV9tYXNr
W3BpXSB8PSBtYXNrOw0KPiAtLQ0KPiAyLjI3LjANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiANCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQo+IA0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
