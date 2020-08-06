Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC49523DDE1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 19:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED4B6E8F0;
	Thu,  6 Aug 2020 17:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660806E8F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 17:17:16 +0000 (UTC)
IronPort-SDR: S2F1HtQ9ItSNwB2J/m89DJTM54dmX5+0C08NXmFYbpEVmt+aFhmXFSosgJ33YbFGia7M5DNagY
 cUnaGBy9G4dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="132960180"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="132960180"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2020 10:17:15 -0700
IronPort-SDR: sGLDNYGRvBnv1ghbKA4zy7O4m/wE/zdOeOy9VaSPg9WSsyLYCRgzbtDRDGm2ok9M9f84O/p88Y
 Aigp/rJXxZHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; d="scan'208";a="467925602"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 06 Aug 2020 10:17:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Aug 2020 10:17:15 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Aug 2020 10:17:15 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.57]) with mapi id 14.03.0439.000;
 Thu, 6 Aug 2020 10:17:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] i915/tgl: Fix TC-cold block/unblock sequence
Thread-Index: AQHWazlAXM+BeJn4W0uumZdmkeM4m6krymaA
Date: Thu, 6 Aug 2020 17:17:14 +0000
Message-ID: <87e1dd98f92d054674d1f50b07e6ff0e4fb43092.camel@intel.com>
References: <20200805150056.24248-1-imre.deak@intel.com>
In-Reply-To: <20200805150056.24248-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.60.243]
Content-ID: <E5084F44DC548645B27CF1F22AEC37C2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] i915/tgl: Fix TC-cold block/unblock sequence
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
Cc: "Swaminathan, Nivedita" <nivedita.swaminathan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA4LTA1IGF0IDE4OjAwICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBjb21tYW5kIHJlZ2lzdGVyIGlzIHRoZSBsb3cgUENPREUgTUJPWCBsb3cgcmVnaXN0ZXIgbm90
IHRoZSBoaWdoDQo+IG9uZSBhcyBkZXNjcmliZWQgYnkgdGhlIHNwZWMuIFRoaXMgbGVmdCB0aGUg
c3lzdGVtIHdpdGggdGhlIFRDLWNvbGQNCj4gcG93ZXIgc3RhdGUgYmVpbmcgYmxvY2tlZCBhbGwg
dGhlIHRpbWUuIEZpeCB0aGluZ3MgYnkgdXNpbmcgdGhlIGNvcnJlY3QNCj4gcmVnaXN0ZXIuDQo+
IA0KPiBBbHNvIHRvIG1ha2Ugc3VyZSB3ZSByZXRyeSBhIHJlcXVlc3QgZm9yIGF0IGxlYXN0IDYw
MHVzZWMsIHdoZW4gdGhlDQo+IFBDT0RFIE1CT1ggY29tbWFuZCBpdHNlbGYgc3VjY2VlZGVkLCBi
dXQgdGhlIFRDLWNvbGQgYmxvY2sgY29tbWFuZA0KPiBmYWlsZWQsIHNsZWVwIGZvciAxbXNlYyB1
bmNvbmRpdGlvbmFsbHkgYWZ0ZXIgYW55IGZhaWwuDQo+IA0KPiBUaGUgY2hhbmdlIHdhcyB0ZXN0
ZWQgd2l0aCBKVEFHIHJlZ2lzdGVyIHJlYWQgb2YgdGhlIEhXL0ZXJ3MgYWN0dWFsDQo+IFRDLWNv
bGQgc3RhdGUsIHdoaWNoIHJlcG9ydGVkIHRoZSBleHBlY3RlZCBzdGF0ZXMgYWZ0ZXIgdGhpcyBj
aGFuZ2UuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gVGVzdGVkLWJ5OiBOaXZlZGl0YSBTd2FtaW5hdGhhbiA8DQo+
IG5pdmVkaXRhLnN3YW1pbmF0aGFuQGludGVsLmNvbQ0KPiA+DQo+IENjOiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDwNCj4gam9zZS5zb3V6YUBpbnRlbC5jb20NCj4gPg0KPiBTaWduZWQtb2ZmLWJ5
OiBJbXJlIERlYWsgPA0KPiBpbXJlLmRlYWtAaW50ZWwuY29tDQo+ID4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDEwICsrKysr
LS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICAg
ICAgIHwgIDQgKystLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBpbmRleCA5ZjAyNDFhNTNhNDUuLjhmMGI3MTJlZDdhMCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMNCj4gQEAgLTM5MjcsMTIgKzM5MjcsMTMgQEAgdGdsX3RjX2NvbGRfcmVxdWVz
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCBibG9jaykNCj4gIAlpbnQgcmV0
Ow0KPiAgDQo+ICAJd2hpbGUgKDEpIHsNCj4gLQkJdTMyIGxvd192YWwgPSAwLCBoaWdoX3ZhbDsN
Cj4gKwkJdTMyIGxvd192YWw7DQo+ICsJCXUzMiBoaWdoX3ZhbCA9IDA7DQo+ICANCj4gIAkJaWYg
KGJsb2NrKQ0KPiAtCQkJaGlnaF92YWwgPSBUR0xfUENPREVfRVhJVF9UQ0NPTERfREFUQV9IX0JM
T0NLX1JFUTsNCj4gKwkJCWxvd192YWwgPSBUR0xfUENPREVfRVhJVF9UQ0NPTERfREFUQV9MX0JM
T0NLX1JFUTsNCj4gIAkJZWxzZQ0KPiAtCQkJaGlnaF92YWwgPSBUR0xfUENPREVfRVhJVF9UQ0NP
TERfREFUQV9IX1VOQkxPQ0tfUkVROw0KPiArCQkJbG93X3ZhbCA9IFRHTF9QQ09ERV9FWElUX1RD
Q09MRF9EQVRBX0xfVU5CTE9DS19SRVE7DQo+ICANCj4gIAkJLyoNCj4gIAkJICogU3BlYyBzdGF0
ZXMgdGhhdCB3ZSBzaG91bGQgdGltZW91dCB0aGUgcmVxdWVzdCBhZnRlciAyMDB1cw0KPiBAQCAt
Mzk1MSw4ICszOTUyLDcgQEAgdGdsX3RjX2NvbGRfcmVxdWVzdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgYm9vbCBibG9jaykNCj4gIAkJaWYgKCsrdHJpZXMgPT0gMykNCj4gIAkJCWJy
ZWFrOw0KPiAgDQo+IC0JCWlmIChyZXQgPT0gLUVBR0FJTikNCj4gLQkJCW1zbGVlcCgxKTsNCj4g
KwkJbXNsZWVwKDEpOw0KPiAgCX0NCj4gIA0KPiAgCWlmIChyZXQpDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaA0KPiBpbmRleCAyYjQwM2RmMDM0MDQuLmU4NWM2ZmMxZjNjYiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC05MjI2LDggKzkyMjYsOCBAQCBlbnVtIHsNCj4gICNk
ZWZpbmUgICBESVNQTEFZX0lQU19DT05UUk9MCQkJMHgxOQ0KPiAgI2RlZmluZSAgIFRHTF9QQ09E
RV9UQ0NPTEQJCQkweDI2DQo+ICAjZGVmaW5lICAgICBUR0xfUENPREVfRVhJVF9UQ0NPTERfREFU
QV9MX0VYSVRfRkFJTEVECVJFR19CSVQoMCkNCj4gLSNkZWZpbmUgICAgIFRHTF9QQ09ERV9FWElU
X1RDQ09MRF9EQVRBX0hfQkxPQ0tfUkVRCTANCj4gLSNkZWZpbmUgICAgIFRHTF9QQ09ERV9FWElU
X1RDQ09MRF9EQVRBX0hfVU5CTE9DS19SRVEJUkVHX0JJVCgwKQ0KPiArI2RlZmluZSAgICAgVEdM
X1BDT0RFX0VYSVRfVENDT0xEX0RBVEFfTF9CTE9DS19SRVEJMA0KPiArI2RlZmluZSAgICAgVEdM
X1BDT0RFX0VYSVRfVENDT0xEX0RBVEFfTF9VTkJMT0NLX1JFUQlSRUdfQklUKDApDQo+ICAgICAg
ICAgICAgICAvKiBTZWUgYWxzbyBJUFNfQ1RMICovDQo+ICAjZGVmaW5lICAgICBJUFNfUENPREVf
Q09OVFJPTAkJCSgxIDw8IDMwKQ0KPiAgI2RlZmluZSAgIEhTV19QQ09ERV9EWU5BTUlDX0RVVFlf
Q1lDTEVfQ09OVFJPTAkweDFBDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
