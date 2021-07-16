Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E36F33CBCC8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B006E9D2;
	Fri, 16 Jul 2021 19:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B036E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:40:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="210594573"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210594573"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:40:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="429355972"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2021 12:40:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 16 Jul 2021 12:40:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:40:01 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 12:40:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 35/50] drm/i915/dg2: Don't wait for AUX
 power well enable ACKs
Thread-Index: AQHXeF6ksHLHZSFqHk6bvZ/cpJieCKtGeoqA
Date: Fri, 16 Jul 2021 19:40:01 +0000
Message-ID: <36b1fdeeba2ff204ec9e6ee8a42a41ae020ecd97.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-36-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-36-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <A5F1EAA25885124FAEB57DDE7714B827@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 35/50] drm/i915/dg2: Don't wait for AUX
 power well enable ACKs
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

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBERzIgd2UncmUgc3VwcG9zZWQgdG8ganVzdCB3YWl0IDYwMHVzIGFmdGVyIHByb2dyYW1taW5n
IHRoZSB3ZWxsDQo+IGJlZm9yZSBtb3Zpbmcgb247IHRoZXJlIHdvbid0IGJlIGFuIGFjayBmcm9t
IHRoZSBoYXJkd2FyZS4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBCc3BlYzogNDkyOTYNCj4gU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgfCAxNiArKysrKysr
KysrKysrKysrDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5oICAgfCAgNiArKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMNCj4gaW5kZXggZDkyZGI0NzE0MTFlLi4wNGFmOTg3ZjMzMjQgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+IEBAIC0zNDEsNiArMzQxLDE3IEBAIHN0YXRpYyB2b2lkIGhzd193YWl0X2Zvcl9wb3dlcl93
ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICB7DQo+ICAJ
Y29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9yZWdzICpyZWdzID0gcG93ZXJfd2VsbC0+ZGVz
Yy0+aHN3LnJlZ3M7DQo+ICAJaW50IHB3X2lkeCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pZHg7
DQo+ICsJaW50IGVuYWJsZV9kZWxheSA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5maXhlZF9lbmFi
bGVfZGVsYXk7DQo+ICsNCj4gKwkvKg0KPiArCSAqIEZvciBzb21lIHBvd2VyIHdlbGxzIHdlJ3Jl
IG5vdCBzdXBwb3NlZCB0byB3YXRjaCB0aGUgc3RhdHVzIGJpdCBmb3INCj4gKwkgKiBhbiBhY2ss
IGJ1dCByYXRoZXIganVzdCB3YWl0IGEgZml4ZWQgYW1vdW50IG9mIHRpbWUgYW5kIHRoZW4NCj4g
KwkgKiBwcm9jZWVkLiAgVGhpcyBpcyBvbmx5IHVzZWQgb24gREcyLg0KPiArCSAqLw0KPiArCWlm
IChJU19ERzIoZGV2X3ByaXYpICYmIGVuYWJsZV9kZWxheSkgew0KPiArCQl1c2xlZXBfcmFuZ2Uo
ZW5hYmxlX2RlbGF5LCAyICogZW5hYmxlX2RlbGF5KTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4g
IA0KPiAgCS8qIFRpbWVvdXQgZm9yIFBXMToxMCB1cywgQVVYOm5vdCBzcGVjaWZpZWQsIG90aGVy
IFBXczoyMCB1cy4gKi8NCj4gIAlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jfc2V0KGRldl9wcml2LCBy
ZWdzLT5kcml2ZXIsDQo+IEBAIC00ODI4LDYgKzQ4MzksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHhlbHBkX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCXsNCj4g
IAkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywNCj4gIAkJCS5oc3cuaWR4
ID0gSUNMX1BXX0NUTF9JRFhfQVVYX0EsDQo+ICsJCQkuaHN3LmZpeGVkX2VuYWJsZV9kZWxheSA9
IDYwMCwNCj4gIAkJfSwNCj4gIAl9LA0KPiAgCXsNCj4gQEAgLTQ4MzgsNiArNDg1MCw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgeGVscGRfcG93ZXJfd2VsbHNb
XSA9IHsNCj4gIAkJew0KPiAgCQkJLmhzdy5yZWdzID0gJmljbF9hdXhfcG93ZXJfd2VsbF9yZWdz
LA0KPiAgCQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQiwNCj4gKwkJCS5oc3cuZml4
ZWRfZW5hYmxlX2RlbGF5ID0gNjAwLA0KPiAgCQl9LA0KPiAgCX0sDQo+ICAJew0KPiBAQCAtNDg0
OCw2ICs0ODYxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB4
ZWxwZF9wb3dlcl93ZWxsc1tdID0gew0KPiAgCQl7DQo+ICAJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1
eF9wb3dlcl93ZWxsX3JlZ3MsDQo+ICAJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX0FVWF9D
LA0KPiArCQkJLmhzdy5maXhlZF9lbmFibGVfZGVsYXkgPSA2MDAsDQo+ICAJCX0sDQo+ICAJfSwN
Cj4gIAl7DQo+IEBAIC00ODU4LDYgKzQ4NzIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVf
cG93ZXJfd2VsbF9kZXNjIHhlbHBkX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCXsNCj4gIAkJCS5o
c3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywNCj4gIAkJCS5oc3cuaWR4ID0gWEVM
UERfUFdfQ1RMX0lEWF9BVVhfRCwNCj4gKwkJCS5oc3cuZml4ZWRfZW5hYmxlX2RlbGF5ID0gNjAw
LA0KPiAgCQl9LA0KPiAgCX0sDQo+ICAJew0KPiBAQCAtNDg3OCw2ICs0ODkzLDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB4ZWxwZF9wb3dlcl93ZWxsc1tdID0g
ew0KPiAgCQl7DQo+ICAJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX3JlZ3MsDQo+
ICAJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURYX0FVWF9UQzEsDQo+ICsJCQkuaHN3LmZpeGVk
X2VuYWJsZV9kZWxheSA9IDYwMCwNCj4gIAkJfSwNCj4gIAl9LA0KPiAgCXsNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gaW5k
ZXggNGYwOTE3ZGY0Mzc1Li4yMjM2N2I1Y2JhOTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IEBAIC0yMjMsNiAr
MjIzLDEyIEBAIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB7DQo+ICAJCQl1OCBpZHg7DQo+
ICAJCQkvKiBNYXNrIG9mIHBpcGVzIHdob3NlIElSUSBsb2dpYyBpcyBiYWNrZWQgYnkgdGhlIHB3
ICovDQo+ICAJCQl1OCBpcnFfcGlwZV9tYXNrOw0KPiArCQkJLyoNCj4gKwkJCSAqIEluc3RlYWQg
b2Ygd2FpdGluZyBmb3IgdGhlIHN0YXR1cyBiaXQgdG8gYWNrIGVuYWJsZXMsDQo+ICsJCQkgKiBq
dXN0IHdhaXQgYSBzcGVjaWZpYyBhbW91bnQgb2YgdGltZSBhbmQgdGhlbiBjb25zaWRlcg0KPiAr
CQkJICogdGhlIHdlbGwgZW5hYmxlZC4NCj4gKwkJCSAqLw0KPiArCQkJdTE2IGZpeGVkX2VuYWJs
ZV9kZWxheTsNCj4gIAkJCS8qIFRoZSBwdyBpcyBiYWNraW5nIHRoZSBWR0EgZnVuY3Rpb25hbGl0
eSAqLw0KPiAgCQkJYm9vbCBoYXNfdmdhOjE7DQo+ICAJCQlib29sIGhhc19mdXNlczoxOw0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
