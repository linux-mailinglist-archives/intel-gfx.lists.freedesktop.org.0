Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1FC63C36
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 21:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D79889C80;
	Tue,  9 Jul 2019 19:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E850089C80
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 19:54:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 12:54:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="173660280"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jul 2019 12:54:43 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 12:54:43 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.16]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 12:54:42 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 18/25] drm/i915/tgl: extend intel_port_is_combophy/tc
Thread-Index: AQHVNeNF+THtNhs6f0SKLe+LdvaAQqbDKd2A
Date: Tue, 9 Jul 2019 19:54:42 +0000
Message-ID: <459c611ade3232093455c0e6e7598ee33845fc66.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-19-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-19-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <29B3530AD5AD0D4B987C6CC035B96073@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 18/25] drm/i915/tgl: extend
 intel_port_is_combophy/tc
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1haGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+DQo+IA0KPiBU
R0wgaGFzIDMgY29tYm9waHkgcG9ydHMsIHNvIGV4dGVuZCBjaGVjayBmb3IgdGlnZXJsYWtlIGlu
DQo+IGludGVsX3BvcnRfaXNfY29tYm9waHkvdGMgZnVuY3Rpb24uDQoNClJldmlld2VkLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1h
aGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTIgKysrKysrKysrLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
aW5kZXggZDExNDg3ODY5MjBlLi5lMjI0ZGNmNjBlMzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC02Njc2LDEwICs2Njc2LDEw
IEBAIGJvb2wgaW50ZWxfcG9ydF9pc19jb21ib3BoeShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQ0KPiAgCWlmIChwb3J0ID09IFBPUlRfTk9ORSkN
Cj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgDQo+IC0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2
KSkNCj4gKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpIHx8IElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpDQo+ICAJCXJldHVybiBwb3J0IDw9IFBPUlRfQzsNCj4gIA0KPiAtCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiArCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkNCj4g
IAkJcmV0dXJuIHBvcnQgPD0gUE9SVF9COw0KPiAgDQo+ICAJcmV0dXJuIGZhbHNlOw0KPiBAQCAt
NjY4Nyw3ICs2Njg3LDEwIEBAIGJvb2wgaW50ZWxfcG9ydF9pc19jb21ib3BoeShzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQ0KPiAgDQo+ICBib29s
IGludGVsX3BvcnRfaXNfdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVt
IHBvcnQNCj4gcG9ydCkNCj4gIHsNCj4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAm
JiAhSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQ0KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKQ0KPiArCQlyZXR1cm4gcG9ydCA+PSBQT1JUX0QgJiYgcG9ydCA8PSBQT1JUX0k7DQo+
ICsNCj4gKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkgJiYgIUlTX0VMS0hBUlRMQUtFKGRldl9w
cml2KSkNCj4gIAkJcmV0dXJuIHBvcnQgPj0gUE9SVF9DICYmIHBvcnQgPD0gUE9SVF9GOw0KPiAg
DQo+ICAJcmV0dXJuIGZhbHNlOw0KPiBAQCAtNjY5OCw2ICs2NzAxLDkgQEAgZW51bSB0Y19wb3J0
IGludGVsX3BvcnRfdG9fdGMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBl
bnVtIHBvcnQgcG9ydCkNCj4gIAlpZiAoIWludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQp
KQ0KPiAgCQlyZXR1cm4gUE9SVF9UQ19OT05FOw0KPiAgDQo+ICsJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTIpDQo+ICsJCXJldHVybiBwb3J0IC0gUE9SVF9EOw0KPiArDQo+ICAJcmV0dXJu
IHBvcnQgLSBQT1JUX0M7DQo+ICB9DQo+ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
