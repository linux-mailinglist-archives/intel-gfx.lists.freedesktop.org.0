Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53514112045
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 00:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FCF6E0F3;
	Tue,  3 Dec 2019 23:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEDD16E0F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 23:29:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 15:29:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; d="scan'208";a="213603540"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 03 Dec 2019 15:29:50 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 15:29:49 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.184]) with mapi id 14.03.0439.000;
 Tue, 3 Dec 2019 15:29:49 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 6/7] drm/i915/display/tgl: Fix the order of
 the step to turn transcoder clock off
Thread-Index: AQHVoZinjaZwP3tFxESrwX/FIbTibqeheWUAgAgsoAA=
Date: Tue, 3 Dec 2019 23:29:49 +0000
Message-ID: <074e8c9be80392f9400c4716160fdb1bbad65deb.camel@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-6-jose.souza@intel.com>
 <20191128184000.GX1208@intel.com>
In-Reply-To: <20191128184000.GX1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.67]
Content-ID: <451A8497B7E9AD4CAEE34FF5A300EDAE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/display/tgl: Fix the order of
 the step to turn transcoder clock off
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

T24gVGh1LCAyMDE5LTExLTI4IGF0IDIwOjQwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDIyLCAyMDE5IGF0IDA0OjU0OjU4UE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gRm9yIFRHTCB0aGUgc3RlcCB0byB0dXJuIG9mZiB0
aGUgdHJhbnNjb2RlciBjbG9jayB3YXMgbW92ZWQgdG8NCj4gPiBhZnRlcg0KPiA+IHRoZSBjb21w
bGV0ZSBzaHV0ZG93biBvZiBEREkuIE9ubHkgdGhlIE1TVCBzbGF2ZSB0cmFuc2NvZGVycyBzaG91
bGQNCj4gPiBkaXNhYmxlIHRoZSBjbG9jayBiZWZvcmUgdGhhdC4NCj4gPiANCj4gPiBCU3BlYzog
NDkxOTANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICB8ICA5ICsrKysrKysrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMTUgKysrKysrKysrKysrLS0tDQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4IGNm
Y2FhN2M4MTU3NS4uYWEwMjQ5MzMzMTc1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gQEAgLTM4MTMsNyArMzgxMyw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoc3RydWN0DQo+ID4gaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gPiAgCSAqLw0KPiA+ICAJaW50ZWxfZHBfc2lua19kcG1zKGludGVsX2RwLCBE
Uk1fTU9ERV9EUE1TX09GRik7DQo+ID4gIA0KPiA+IC0JaWYgKCFpc19tc3QpDQo+ID4gKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA8IDEyICYmICFpc19tc3QpDQo+ID4gIAkJaW50ZWxfZGRpX2Rp
c2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7DQo+ID4gIA0KPiA+ICAJaW50ZWxfZGlz
YWJsZV9kZGlfYnVmKGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlKTsNCj4gPiBAQCAtMzgyNiw2ICsz
ODI2LDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoc3RydWN0DQo+
ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1
dF91bmNoZWNrZWQoZGV2X3ByaXYsDQo+ID4gIAkJCQkJCSAgZGlnX3BvcnQtDQo+ID4gPmRkaV9p
b19wb3dlcl9kb21haW4pOw0KPiA+ICANCj4gPiArCS8qDQo+ID4gKwkgKiBGcm9tIFRHTCBCU3Bl
YyAiSWYgc2luZ2xlIHN0cmVhbSBvciBtdWx0aS1zdHJlYW0gbWFzdGVyDQo+ID4gdHJhbnNjb2Rl
cjoNCj4gPiArCSAqIENvbmZpZ3VyZSBUcmFuc2NvZGVyIENsb2NrIHNlbGVjdCB0byBkaXJlY3Qg
bm8gY2xvY2sgdG8gdGhlDQo+ID4gKwkgKiB0cmFuc2NvZGVyIg0KPiA+ICsJICovDQo+IA0KPiBO
b3QgcmVhbGx5IGNvbnZpbmNlZCB0aGVzZSBjb21tZW50cyBhZGQgYW55dGhpbmcgdGhlIGNvZGUg
aXNuJ3QNCj4gYWxyZWFkeSBzYXlpbmcuDQoNCldlIGhhdmUgYWRkZWQgc2ltaWxhciBjb21tZW50
cyBpbiB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSwgaXQgaGVscHMNCnRyYWNrcyB0aGUgY29kZSB3
aXRoIEJTcGVjIHN0ZXBzLg0KDQo+IA0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIpDQo+ID4gKwkJaW50ZWxfZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7
DQo+IA0KPiBUaGF0J3MgbXVjaCBsYXRlciB0aGFuIHRoZSBic3BlYyBzZXF1ZW5jZSBzdWdnZXN0
cy4NCg0KT2gsIHRoYW5rcy4NClllYWggaXQgc2hvdWxkIHJpZ2h0IGFmdGVyIGludGVsX2Rpc2Fi
bGVfZGRpX2J1ZigpDQoNCj4gDQo+ID4gIAlpbnRlbF9kZGlfY2xrX2Rpc2FibGUoZW5jb2Rlcik7
DQo+ID4gIAl0Z2xfY2xlYXJfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKG9sZF9jcnRjX3N0YXRl
KTsNCj4gPiAgfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX21zdC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jDQo+ID4gaW5kZXggOTQ1NDk4NDg2NTNhLi41M2FmZTNlMTc5ZjcgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gPiBA
QCAtMzY5LDggKzM2OSwxOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcG9zdF9kaXNhYmxlX2Rw
KHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gJmludGVsX2RpZ19wb3J0LT5kcDsNCj4gPiAgCXN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvbm5lY3RvciA9DQo+ID4gIAkJdG9faW50ZWxfY29ubmVjdG9yKG9sZF9jb25u
X3N0YXRlLT5jb25uZWN0b3IpOw0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShjb25uZWN0b3ItDQo+ID4gPmJhc2UuZGV2KTsNCj4gPiAgDQo+ID4gLQlp
bnRlbF9kZGlfZGlzYWJsZV9waXBlX2Nsb2NrKG9sZF9jcnRjX3N0YXRlKTsNCj4gPiArCWludGVs
X2RwLT5hY3RpdmVfbXN0X2xpbmtzLS07DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIEZyb20g
VEdMIEJTcGVjICJJZiBtdWx0aS1zdHJlYW0gc2xhdmUgdHJhbnNjb2RlcjogQ29uZmlndXJlDQo+
ID4gKwkgKiBUcmFuc2NvZGVyIENsb2NrIFNlbGVjdCB0byBkaXJlY3Qgbm8gY2xvY2sgdG8gdGhl
DQo+ID4gdHJhbnNjb2RlciINCj4gPiArCSAqDQo+ID4gKwkgKiBGcm9tIG9sZGVyIEdFTnMgQlNw
ZWMgIkNvbmZpZ3VyZSBUcmFuc2NvZGVyIENsb2NrIFNlbGVjdCB0bw0KPiA+IGRpcmVjdA0KPiA+
ICsJICogbm8gY2xvY2sgdG8gdGhlIHRyYW5zY29kZXIiDQo+ID4gKwkgKi8NCj4gPiArCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIgfHwgaW50ZWxfZHAtPmFjdGl2ZV9tc3RfbGlua3MpDQo+
IA0KPiBNYXliZSB3ZSBzaG91bGQgYWRkICdsYXN0X21zdF9zdHJlYW0nIHRvIG1pcnJvciB0aGUN
Cj4gJ2ZpcnN0X21zdF9zdHJlYW0nDQo+IGluIHRoZSBlbmFibGUgY29kZT8NCg0KU291bmRzIGdv
b2QNCg0KPiANCj4gPiArCQlpbnRlbF9kZGlfZGlzYWJsZV9waXBlX2Nsb2NrKG9sZF9jcnRjX3N0
YXRlKTsNCj4gPiAgDQo+ID4gIAkvKiB0aGlzIGNhbiBmYWlsICovDQo+ID4gIAlkcm1fZHBfY2hl
Y2tfYWN0X3N0YXR1cygmaW50ZWxfZHAtPm1zdF9tZ3IpOw0KPiA+IEBAIC0zODYsOCArMzk3LDYg
QEAgc3RhdGljIHZvaWQgaW50ZWxfbXN0X3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QNCj4gPiBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJZHJtX2RwX3NlbmRfcG93ZXJfdXBkb3duX3BoeSgm
aW50ZWxfZHAtPm1zdF9tZ3IsIGNvbm5lY3Rvci0NCj4gPiA+cG9ydCwNCj4gPiAgCQkJCSAgICAg
ZmFsc2UpOw0KPiA+ICANCj4gPiAtCWludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzLS07DQo+ID4g
LQ0KPiA+ICAJaW50ZWxfbXN0LT5jb25uZWN0b3IgPSBOVUxMOw0KPiA+ICAJaWYgKGludGVsX2Rw
LT5hY3RpdmVfbXN0X2xpbmtzID09IDApIHsNCj4gPiAgCQlpbnRlbF9kaWdfcG9ydC0+YmFzZS5w
b3N0X2Rpc2FibGUoJmludGVsX2RpZ19wb3J0LQ0KPiA+ID5iYXNlLA0KPiA+IC0tIA0KPiA+IDIu
MjQuMA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
