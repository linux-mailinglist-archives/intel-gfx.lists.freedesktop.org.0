Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD2523F24C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 19:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9C96E0D8;
	Fri,  7 Aug 2020 17:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309C26E0D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 17:51:59 +0000 (UTC)
IronPort-SDR: eYiTunyOrtUGKYTO+9vXs/X0x9AQNTgd1mNhWLWD4iGYevK4fXIToloXuBaxlXDUHM3j/ZK3D9
 PLoiZ21pcEbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="150873732"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="150873732"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 10:51:47 -0700
IronPort-SDR: f1uAcm9WFSBonUf/Xuj//h8utUB86h0gOmnKCJi5cPVAkMgNyoJfftrzS718qjtwdzpOlNPiaL
 Z2MMsJah6Seg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="437974276"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 07 Aug 2020 10:51:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Aug 2020 10:51:46 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 7 Aug 2020 10:51:46 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.57]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.64]) with mapi id 14.03.0439.000;
 Fri, 7 Aug 2020 10:51:46 -0700
From: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Set subplatforms
Thread-Index: AQHWXrhScybiISoGpEG/DICBrsUlsakr+tKAgAF+gAD//4+5kA==
Date: Fri, 7 Aug 2020 17:51:46 +0000
Message-ID: <09614FAEEEACB8419B519675A649C8BF89B0525D@ORSMSX115.amr.corp.intel.com>
References: <20200720170948.28446-1-jose.souza@intel.com>
 <09614FAEEEACB8419B519675A649C8BF89B031CA@ORSMSX115.amr.corp.intel.com>
 <b99d3ca41decc3835d33af1a5230a187f7e25f51.camel@intel.com>
In-Reply-To: <b99d3ca41decc3835d33af1a5230a187f7e25f51.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
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

UmV2aWV3ZWQtYnk6IFN3YXRoaSBEaGFuYXZhbnRocmkgPHN3YXRoaS5kaGFuYXZhbnRocmlAaW50
ZWwuY29tPg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogU291emEsIEpvc2Ug
PGpvc2Uuc291emFAaW50ZWwuY29tPiANClNlbnQ6IEZyaWRheSwgQXVndXN0IDA3LCAyMDIwIDEw
OjMyIEFNDQpUbzogRGhhbmF2YW50aHJpLCBTd2F0aGkgPHN3YXRoaS5kaGFuYXZhbnRocmlAaW50
ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IFtJ
bnRlbC1nZnhdIFtQQVRDSCAxLzJdIGRybS9pOTE1L3RnbDogU2V0IHN1YnBsYXRmb3Jtcw0KDQpU
aGUgZGVmYXVsdCBjYXNlIHdvdWxkIGRvIG5vdGhpbmcuDQoNCk9uIFRodSwgMjAyMC0wOC0wNiBh
dCAxOTowMiAtMDcwMCwgRGhhbmF2YW50aHJpLCBTd2F0aGkgd3JvdGU6DQo+IEl0IG1pZ2h0IGJl
IGhlbHBmdWwgdG8gYWRkIGEgZGVmYXVsdCBjYXNlIGluIHRoZSBzd2l0Y2ggc3RhdGVtZW50IGZv
ciB1bnN1cHBvcnRlZCBjYXNlcy4NCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
IEZyb206IEludGVsLWdmeCA8DQo+IGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IE9uIEJlaGFsZiBPZiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IE1v
bmRheSwgSnVseSAyMCwgMjAyMCAxMDoxMCBBTQ0KPiBUbzogDQo+IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAxLzJdIGRy
bS9pOTE1L3RnbDogU2V0IHN1YnBsYXRmb3Jtcw0KPiANCj4gVGhlcmUgaXMgbm8gd2F5IHRvIGRp
ZmZlcmVudGlhdGUgVEdMLVUgZnJvbSBUR0wtWSBieSB0aGUgUENJIGlkcyBhcyBzb21lIGlkcyBh
cmUgYXZhaWxhYmxlIGluIGJvdGggU0tVcy4NCj4gU28gaGVyZSB1c2luZyB0aGUgcm9vdCBkZXZp
Y2UgaWQgaW4gdGhlIFBDSSBidXMgdGhhdCBpR1BVIGlzIGluIHRvIGRpZmZlcmVudGlhdGUgYmV0
d2VlbiBVIGFuZCBZLg0KPiANCj4gQlNwZWM6IDQ0NDU1DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPCBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICA2ICsrKysrKw0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICA2ICsrKysrKw0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDE5ICsrKysrKysrKysr
KysrKysrKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBpbmRleCA1NmRmYzZkOThjYWEuLmE1OWY2NDgyMTkyMCAN
Cj4gMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAtMTQ5Nyw2ICsxNDk3LDEy
IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCAg
I2RlZmluZSBJU19JQ0xfV0lUSF9QT1JUX0YoZGV2X3ByaXYpIFwNCj4gIAlJU19TVUJQTEFURk9S
TShkZXZfcHJpdiwgSU5URUxfSUNFTEFLRSwgSU5URUxfU1VCUExBVEZPUk1fUE9SVEYpDQo+ICAN
Cj4gKyNkZWZpbmUgSVNfVEdMX1UoZGV2X3ByaXYpIFwNCj4gKwlJU19TVUJQTEFURk9STShkZXZf
cHJpdiwgSU5URUxfVElHRVJMQUtFLCBJTlRFTF9TVUJQTEFURk9STV9VTFQpDQo+ICsNCj4gKyNk
ZWZpbmUgSVNfVEdMX1koZGV2X3ByaXYpIFwNCj4gKwlJU19TVUJQTEFURk9STShkZXZfcHJpdiwg
SU5URUxfVElHRVJMQUtFLCBJTlRFTF9TVUJQTEFURk9STV9VTFgpDQo+ICsNCj4gICNkZWZpbmUg
U0tMX1JFVklEX0EwCQkweDANCj4gICNkZWZpbmUgU0tMX1JFVklEX0IwCQkweDENCj4gICNkZWZp
bmUgU0tMX1JFVklEX0MwCQkweDINCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleCBh
MGQzMWYzYmY2MzQuLjZhMDc2OGNiMDFmNiANCj4gMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaA0KPiBAQCAtMTIzNjMsNCArMTIzNjMsMTAgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+
ICAjZGVmaW5lICAgRFNCX0VOQUJMRQkJCSgxIDw8IDMxKQ0KPiAgI2RlZmluZSAgIERTQl9TVEFU
VVMJCQkoMSA8PCAwKQ0KPiAgDQo+ICsjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9JRAkJMHg5QTAw
DQo+ICsjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9NQVNLCQkweEZGMDANCj4gKyNkZWZpbmUgVEdM
X1JPT1RfREVWSUNFX1NLVV9NQVNLCTB4Rg0KPiArI2RlZmluZSBUR0xfUk9PVF9ERVZJQ0VfU0tV
X1VMWAkJMHgyDQo+ICsjZGVmaW5lIFRHTF9ST09UX0RFVklDRV9TS1VfVUxUCQkweDQNCj4gKw0K
PiAgI2VuZGlmIC8qIF9JOTE1X1JFR19IXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyANCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jDQo+IGluZGV4IDQwYzU5MGRiM2M3Ni4uZTJhYTViYzNhNmUwIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gQEAgLTM0
Niw2ICszNDYsMjUgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19zdWJwbGF0Zm9ybV9pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAgCQltYXNrID0gQklUKElOVEVMX1NVQlBM
QVRGT1JNX1BPUlRGKTsNCj4gIAl9DQo+ICANCj4gKwlpZiAoSVNfVElHRVJMQUtFKGk5MTUpKSB7
DQo+ICsJCXN0cnVjdCBwY2lfZGV2ICpyb290LCAqcGRldiA9IGk5MTUtPmRybS5wZGV2Ow0KPiAr
DQo+ICsJCXJvb3QgPSBsaXN0X2ZpcnN0X2VudHJ5KCZwZGV2LT5idXMtPmRldmljZXMsIHR5cGVv
Zigqcm9vdCksIA0KPiArYnVzX2xpc3QpOw0KPiArDQo+ICsJCWRybV9XQVJOX09OKCZpOTE1LT5k
cm0sIG1hc2spOw0KPiArCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAocm9vdC0+ZGV2aWNlICYg
VEdMX1JPT1RfREVWSUNFX01BU0spICE9DQo+ICsJCQkgICAgVEdMX1JPT1RfREVWSUNFX0lEKTsN
Cj4gKw0KPiArCQlzd2l0Y2ggKHJvb3QtPmRldmljZSAmIFRHTF9ST09UX0RFVklDRV9TS1VfTUFT
Sykgew0KPiArCQljYXNlIFRHTF9ST09UX0RFVklDRV9TS1VfVUxYOg0KPiArCQkJbWFzayA9IEJJ
VChJTlRFTF9TVUJQTEFURk9STV9VTFgpOw0KPiArCQkJYnJlYWs7DQo+ICsJCWNhc2UgVEdMX1JP
T1RfREVWSUNFX1NLVV9VTFQ6DQo+ICsJCQltYXNrID0gQklUKElOVEVMX1NVQlBMQVRGT1JNX1VM
VCk7DQo+ICsJCQlicmVhazsNCj4gKwkJfQ0KPiArCX0NCj4gKw0KPiAgCUdFTV9CVUdfT04obWFz
ayAmIH5JTlRFTF9TVUJQTEFURk9STV9CSVRTKTsNCj4gIA0KPiAgCVJVTlRJTUVfSU5GTyhpOTE1
KS0+cGxhdGZvcm1fbWFza1twaV0gfD0gbWFzazsNCj4gLS0NCj4gMi4yNy4wDQo+IA0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZngg
bWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQo+
IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
