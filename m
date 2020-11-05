Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94EF2A8510
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 18:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0596E2E6;
	Thu,  5 Nov 2020 17:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F266B6E2E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 17:38:44 +0000 (UTC)
IronPort-SDR: nRFSKa7T1DQ9zXQQVlIbxZceZUotSAj0WiNiJbSBq9gZK2x/XmXygzw+KSPqb3ACRG1SI4U9hU
 RUe5KnQ6lQ3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="231054072"
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="231054072"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 09:38:44 -0800
IronPort-SDR: yFTEe2Npqip8zHwX8epKdbciGb267esFs+lQFOIiV6EgTcRfjUJeSwSMsSQhURkTCVXjQWqpiu
 6H5hDHrk+4rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,454,1596524400"; d="scan'208";a="539498742"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 05 Nov 2020 09:38:43 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 09:38:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 23:08:39 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Thu, 5 Nov 2020 09:38:35 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
Thread-Index: AQHWst/Ov/Zo+jvH20qTW9gpW/9sL6m6O+iAgAAFjACAABPYgA==
Date: Thu, 5 Nov 2020 17:38:35 +0000
Message-ID: <3d3e70f2fbeb653b96f3e2755a3eaf8d70cf0c3c.camel@intel.com>
References: <20201104195604.3334-1-uma.shankar@intel.com>
 <20201104195604.3334-2-uma.shankar@intel.com>
 <e878e9da4dc6ff8cd139d661ac5ba7d2469f7745.camel@intel.com>
 <515ba1d3643b4c299022d52630fe73ba@intel.com>
In-Reply-To: <515ba1d3643b4c299022d52630fe73ba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <7420085EB8FDF148AE767B2D42B938B7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
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

T24gVGh1LCAyMDIwLTExLTA1IGF0IDIxOjU3ICswNTMwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogU291emEsIEpvc2Ug
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciA1LCAy
MDIwIDk6MzggUE0NCj4gPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUmU6IFtJbnRl
bC1nZnhdIFtQQVRDSCAxLzJdIGRybS9pOTE1L2Rpc3BsYXkvdGdsOiBEaXNhYmxlIEZCQyB3aXRo
IFBTUjINCj4gPiANCj4gPiBPbiBUaHUsIDIwMjAtMTEtMDUgYXQgMDE6MjYgKzA1MzAsIFVtYSBT
aGFua2FyIHdyb3RlOg0KPiA+ID4gVGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRl
cnJ1biB3aGVuIHdlIGVuYWJsZSBGQkMgd2l0aCBQU1IyDQo+ID4gPiBvbiBUR0wuIFJlY29tbWVu
ZGF0aW9uIGZyb20gaGFyZHdhcmUgaXMgdG8ga2VlcCB0aGlzIGNvbWJpbmF0aW9uDQo+ID4gPiBk
aXNhYmxlZC4NCj4gPiANCj4gPiBEbyB5b3UgaGF2ZSBhbnkgcmVmZXJlbmNlcyB0byB0aGlzPyBI
U0Q/IEJTcGVjPw0KPiANCj4gSGkgSm9zZSwNCj4gQmVsb3cgaXMgdGhlIEhTRCBmb3IgdGhlIHNh
bWU6DQo+IGh0dHBzOi8vaHNkZXMuaW50ZWwuY29tL2FwcHN0b3JlL2FydGljbGUvIy8xNDAxMDI2
MDAwMg0KPiANCj4gV2lsbCBhZGQgdGhlIGxpbmsgaW4gcGF0Y2ggYXMgd2VsbC4NCg0KSSBoYXZl
IGNvbW1lbnRlZCBpbiB0aGF0IEhTRCBpbiB0aGUgcGFzdCwgaXQgbG9va2VkIHRvIG1lIHRoYXQg
d2Ugd2VyZSBub3QgYWZmZWN0ZWQgYnkgdGhhdCBhcyB0aGF0IEhTRCByZWZlcnMgdG8gR0VOMTEr
LiBBbHNvIHRoYXQgSFNEIGxvb2tzIG9kZA0KdGhlcmUgaXMgbm8gcmVhbCByZXBvcnQgb2YgaXNz
dWUgdGhlcmUuDQoNCkFyZSB5b3Ugc3VyZSB0aGF0IHRoZSBGQkMgdW5kZXJydW5zIGFyZSBiZWNh
dXNlIG9mIFBTUjI/IE5vdCBhbGwgVEdMIHN5c3RlbXMgaW4gQ0kgaGF2ZSBhIFBTUjIgcGFuZWws
IHBsZWFzZSBtYWtlIHN1cmUgd2UgYXJlIG5vdCBkaXNhYmxpbmcgRkJDIGluDQp2YWluLg0KDQo+
IA0KPiBSZWdhcmRzLA0KPiBVbWEgU2hhbmthcg0KPiA+IA0KPiA+ID4gDQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+
ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2ICsrKysr
Kw0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IGlu
ZGV4IGE1YjA3MjgxNmE3Yi4uMzJjNDExNDE0OTA4IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gQEAgLTc5OSw2ICs3OTksMTIg
QEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0Yw0K
PiA+ICpjcnRjKQ0KPiA+ID4gwqAJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5m
YmM7DQo+ID4gPiDCoAlzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlICpjYWNoZSA9ICZmYmMt
PnN0YXRlX2NhY2hlOw0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiArCWlm
IChkZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0ICYmDQo+ID4gPiArCSAgICBJU19USUdF
UkxBS0UoZGV2X3ByaXYpKSB7DQo+ID4gPiArCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IHN1
cHBvcnRlZCB3aXRoIFBTUjIiOw0KPiA+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gKwl9DQo+
ID4gPiArDQo+ID4gPiDCoAlpZiAoIWludGVsX2ZiY19jYW5fZW5hYmxlKGRldl9wcml2KSkNCj4g
PiA+IMKgCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiANCj4g
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
