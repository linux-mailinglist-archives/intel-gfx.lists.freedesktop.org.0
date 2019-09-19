Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FA8B82C3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 22:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A22D96FB72;
	Thu, 19 Sep 2019 20:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6793C6FB72
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 20:41:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 13:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,526,1559545200"; d="scan'208";a="387394569"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 19 Sep 2019 13:41:04 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Sep 2019 13:41:04 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.72]) with mapi id 14.03.0439.000;
 Thu, 19 Sep 2019 13:41:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 10/13] drm/i915/tgl: Check the UC health
 of tc controllers after power on
Thread-Index: AQHVbn5DsC7Ai3HW5kOhW1FxnkT7dacz2F6AgAAQ3ICAAAQ9gA==
Date: Thu, 19 Sep 2019 20:41:03 +0000
Message-ID: <5d0d5d307a66130caa9f1ed9e1dd55520542bdbc.camel@intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-11-jose.souza@intel.com>
 <20190919192533.GH29039@ideak-desk.fi.intel.com>
 <20190919202553.GJ29039@ideak-desk.fi.intel.com>
In-Reply-To: <20190919202553.GJ29039@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <16DFCDEE1D55EE4D9B094A1F68749C56@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 10/13] drm/i915/tgl: Check the UC health
 of tc controllers after power on
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA5LTE5IGF0IDIzOjI1ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFRodSwgU2VwIDE5LCAyMDE5IGF0IDEwOjI1OjMzUE0gKzAzMDAsIEltcmUgRGVhayB3cm90ZToN
Cj4gPiBPbiBXZWQsIFNlcCAxOCwgMjAxOSBhdCAwNTowNzoyM1BNIC0wNzAwLCBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphDQo+ID4gd3JvdGU6DQo+ID4gPiBOZXcgc3RlcCBhZGRlZCBmb3IgVEdMLCBy
ZXF1aXJlZCBmb3IgdXMgdG8gY2hlY2sgdGhlIFRDDQo+ID4gPiBtaWNyb2NvbnRyb2xsZXIgaGVh
bHRoIGFmdGVyIHBvd2VyIG9uIFRDIGF1eC4NCj4gPiA+IA0KPiA+ID4gQlNwZWM6IDQ5Mjk0DQo+
ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiA+IA0KPiA+IFJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+ID4gDQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDEzDQo+ID4gPiArKysrKysrKysr
KysrDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jDQo+ID4gPiBpbmRleCBjZTg4YTI3MjI5ZWYuLmYxMTg2YmMyMzU0MiAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYw0KPiA+ID4gQEAgLTU2Miw2ICs1NjIsOCBAQCBzdGF0aWMgdm9pZA0K
PiA+ID4gaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gPiA+ICANCj4gPiA+ICAjZW5kaWYNCj4gPiA+ICANCj4gPiA+ICsjZGVm
aW5lIFRHTF9BVVhfUFdfVE9fVENfUE9SVChwd19pZHgpCSgocHdfaWR4KSAtDQo+ID4gPiBUR0xf
UFdfQ1RMX0lEWF9BVVhfVEMxKQ0KPiA+ID4gKw0KPiA+ID4gIHN0YXRpYyB2b2lkDQo+ID4gPiAg
aWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUN
Cj4gPiA+ICpkZXZfcHJpdiwNCj4gPiA+ICAJCQkJIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBv
d2VyX3dlbGwpDQo+ID4gPiBAQCAtNTc4LDYgKzU4MCwxNyBAQCBpY2xfdGNfcGh5X2F1eF9wb3dl
cl93ZWxsX2VuYWJsZShzdHJ1Y3QNCj4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiA+ID4gIAlJOTE1X1dSSVRFKERQX0FVWF9DSF9DVEwoYXV4X2NoKSwgdmFsKTsNCj4gPiA+ICAN
Cj4gPiA+ICAJaHN3X3Bvd2VyX3dlbGxfZW5hYmxlKGRldl9wcml2LCBwb3dlcl93ZWxsKTsNCj4g
PiA+ICsNCj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYgIXBvd2VyX3dl
bGwtPmRlc2MtDQo+ID4gPiA+aHN3LmlzX3RjX3RidCkgew0KPiA+ID4gKwkJZW51bSB0Y19wb3J0
IHRjX3BvcnQ7DQo+ID4gPiArDQo+ID4gPiArCQl0Y19wb3J0ID0gVEdMX0FVWF9QV19UT19UQ19Q
T1JUKHBvd2VyX3dlbGwtPmRlc2MtDQo+ID4gPiA+aHN3LmlkeCk7DQo+ID4gPiArCQlJOTE1X1dS
SVRFKEhJUF9JTkRFWF9SRUcodGNfcG9ydCksDQo+ID4gPiBISVBfSU5ERVhfVkFMKHRjX3BvcnQs
IDB4MikpOw0KPiANCj4gTml0OiBpbnN0ZWFkIG9mIGhhcmQtY29kaW5nIHRoZSB1cHBlciBiaXRz
IHRoZSBES0wgUEhZIHJlZ3Mgc2hvdWxkIGJlDQo+IGRlZmluZWQgYXMNCj4gdGhlIGZ1bGwgYWRk
cmVzcyAoZm9yIGluc3RhbmNlIGJhc2UgKyAweDIzNkMgZm9yIERLTF9DTU5fVUNfRFdfMjcpDQo+
IGFuZA0KPiB1c2UgaGVscGVycyBoZXJlIHRvIGdldCB0aGUgbG93L2hpZ2ggYml0cyBmcm9tIHRo
ZSBmdWxsIGFkZHJlc3MuDQoNCkdvb2QgaWRlYSwgZGVwZW5kaW5nIG9mIGhvdyBtdWNoIHdvcmsg
d2lsbCBiZSBuZWVkZWQgdG8gdGhlIGN1cnJlbnQNCnBhdGNoZXMgYmUgbWVyZ2VkIEkgd2lsbCBk
byB0aGF0IGluIHRoZSBjdXJyZW50IHBhdGNoZXMgb3RoZXJ3aXNlIHdpbGwNCmRvIHRvcC4NCg0K
PiANCj4gPiA+ICsNCj4gPiA+ICsJCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3ByaXYs
DQo+ID4gPiBES0xfQ01OX1VDX0RXXzI3KHRjX3BvcnQpLA0KPiA+ID4gKwkJCQkJICBES0xfQ01O
X1VDX0RXMjdfVUNfSEVBTFRILA0KPiA+ID4gMSkpDQo+ID4gPiArCQkJRFJNX1dBUk4oIlRpbWVv
dXQgd2FpdGluZyBUQyB1QyBoZWFsdGhcbiIpOw0KPiA+ID4gKwl9DQo+ID4gPiAgfQ0KPiA+ID4g
IA0KPiA+ID4gIHN0YXRpYyB2b2lkDQo+ID4gPiAtLSANCj4gPiA+IDIuMjMuMA0KPiA+ID4gDQo+
ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+
ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngNCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
