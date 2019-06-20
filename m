Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FE74C48C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 02:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 381956E49A;
	Thu, 20 Jun 2019 00:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0BF6E49A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 00:36:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 17:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="358783463"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jun 2019 17:36:57 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.66]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 17:36:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/icl: Add new supported CD clocks
Thread-Index: AQHVJihDFH+nqdWjzEmY7TzBD2wnoqajUvEAgADWn4A=
Date: Thu, 20 Jun 2019 00:36:57 +0000
Message-ID: <399658b426ef24b2e113fa46e0bacc7bb6f66913.camel@intel.com>
References: <20190618225035.31816-1-jose.souza@intel.com>
 <20190619114848.GX5942@intel.com>
In-Reply-To: <20190619114848.GX5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <62050F168BA65146B86249B16F1BD5C3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/icl: Add new supported CD
 clocks
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

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDE0OjQ4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDAzOjUwOjMzUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gTm93IDE4MCwgMTcyLjggYW5kIDE5MiBNSHogYXJl
IHN1cHBvcnRlZC4NCj4gPiANCj4gPiAxODAgYW5kIDE3Mi44IE1IeiBDRCBjbG9ja3Mgd2lsbCBv
bmx5IGJlIHVzZWQgd2hlbiBhdWRpbyBpcyBub3QNCj4gPiBlbmFibGVkIGFzIHN0YXRlIGJ5IEJT
cGVjIGFuZCBpbXBsZW1lbnRlZCBpbg0KPiA+IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGso
KSwgQ0QgY2xvY2sgbXVzdCBiZSBhdCBsZWFzdCB0d2ljZSBvZg0KPiA+IEF6YWxpYSBCQ0xLIGFu
ZCBCQ0xLIGJ5IGRlZmF1bHQgaXMgOTYgTUh6LCBpdCBjb3VsZCBiZSBzZXQgdG8gNDgNCj4gPiBN
SHoNCj4gPiBidXQgd2UgYXJlIG5vdCByZWFkaW5nIGl0Lg0KPiA+IA0KPiA+IEJTcGVjOiAyMDU5
OA0KPiA+IEJTcGVjOiAxNTcyOQ0KPiA+IENjOiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXls
b3JAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyOSArKysrKysrKysrKysrKystLS0NCj4gPiAtLS0t
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0K
PiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiA+IGluZGV4IDg5OTNhYjI4MzU2Mi4uZDU2MGUyNWQzZmI1IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IEBAIC0xNzU2LDkg
KzE3NTYsMTAgQEAgc3RhdGljIHZvaWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdA0KPiA+IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICANCj4gPiAgc3RhdGljIGludCBpY2xfY2Fs
Y19jZGNsayhpbnQgbWluX2NkY2xrLCB1bnNpZ25lZCBpbnQgcmVmKQ0KPiA+ICB7DQo+ID4gLQlp
bnQgcmFuZ2VzXzI0W10gPSB7IDMxMjAwMCwgNTUyMDAwLCA2NDgwMDAgfTsNCj4gPiAtCWludCBy
YW5nZXNfMTlfMzhbXSA9IHsgMzA3MjAwLCA1NTY4MDAsIDY1MjgwMCB9Ow0KPiA+IC0JaW50ICpy
YW5nZXM7DQo+ID4gKwljb25zdCBpbnQgcmFuZ2VzXzI0W10gPSB7IDE4MDAwMCwgMTkyMDAwLCAz
MTIwMDAsIDU1MjAwMCwNCj4gPiA2NDgwMDAgfTsNCj4gPiArCWNvbnN0IGludCByYW5nZXNfMTlf
MzhbXSA9IHsgMTcyODAwLCAxOTIwMDAsIDMwNzIwMCwgNTU2ODAwLA0KPiA+IDY1MjgwMCB9Ow0K
PiANCj4gc3RhdGljPw0KDQpXZSBkb24ndCBuZWVkIHRvIGtlZXAgdGhpcyBpbiBtZW1vcnkgYWxs
IHRoZSB0aW1lLg0KDQo+IA0KPiA+ICsJY29uc3QgaW50ICpyYW5nZXM7DQo+ID4gKwl1bnNpZ25l
ZCBpbnQgbGVuLCBpOw0KPiANCj4ganVzdCAnaW50JyBwbGVhc2UNCg0KT2sNCg0KPiANCj4gPiAg
DQo+ID4gIAlzd2l0Y2ggKHJlZikgew0KPiA+ICAJZGVmYXVsdDoNCj4gPiBAQCAtMTc2NiwxOSAr
MTc2NywyMiBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrKGludCBtaW5fY2RjbGssDQo+ID4g
dW5zaWduZWQgaW50IHJlZikNCj4gPiAgCQkvKiBmYWxsIHRocm91Z2ggKi8NCj4gPiAgCWNhc2Ug
MjQwMDA6DQo+ID4gIAkJcmFuZ2VzID0gcmFuZ2VzXzI0Ow0KPiA+ICsJCWxlbiA9IEFSUkFZX1NJ
WkUocmFuZ2VzXzI0KTsNCj4gPiAgCQlicmVhazsNCj4gPiAgCWNhc2UgMTkyMDA6DQo+ID4gIAlj
YXNlIDM4NDAwOg0KPiA+ICAJCXJhbmdlcyA9IHJhbmdlc18xOV8zODsNCj4gPiArCQlsZW4gPSBB
UlJBWV9TSVpFKHJhbmdlc18xOV8zOCk7DQo+ID4gIAkJYnJlYWs7DQo+ID4gIAl9DQo+ID4gIA0K
PiA+IC0JaWYgKG1pbl9jZGNsayA+IHJhbmdlc1sxXSkNCj4gPiAtCQlyZXR1cm4gcmFuZ2VzWzJd
Ow0KPiA+IC0JZWxzZSBpZiAobWluX2NkY2xrID4gcmFuZ2VzWzBdKQ0KPiA+IC0JCXJldHVybiBy
YW5nZXNbMV07DQo+ID4gLQllbHNlDQo+ID4gLQkJcmV0dXJuIHJhbmdlc1swXTsNCj4gPiArCWZv
ciAoaSA9IDA7IGkgPCBsZW47IGkrKykgew0KPiA+ICsJCWlmIChtaW5fY2RjbGsgPD0gcmFuZ2Vz
W2ldKQ0KPiA+ICsJCQlyZXR1cm4gcmFuZ2VzW2ldOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCVdB
Uk5fT04obWluX2NkY2xrID4gcmFuZ2VzW2xlbiAtIDFdKTsNCj4gPiArCXJldHVybiByYW5nZXNb
bGVuIC0gMV07DQo+ID4gIH0NCj4gPiAgDQo+ID4gIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGtf
cGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwgaW50IGNkY2xr
KQ0KPiA+IEBAIC0xNzkyLDE2ICsxNzk2LDIzIEBAIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGtf
cGxsX3ZjbyhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGNkY2xr
KQ0KPiA+ICAJZGVmYXVsdDoNCj4gPiAgCQlNSVNTSU5HX0NBU0UoY2RjbGspOw0KPiA+ICAJCS8q
IGZhbGwgdGhyb3VnaCAqLw0KPiA+ICsJY2FzZSAxNzI4MDA6DQo+ID4gIAljYXNlIDMwNzIwMDoN
Cj4gPiAgCWNhc2UgNTU2ODAwOg0KPiA+ICAJY2FzZSA2NTI4MDA6DQo+ID4gIAkJV0FSTl9PTihk
ZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmDQo+ID4gIAkJCWRldl9wcml2LT5jZGNs
ay5ody5yZWYgIT0gMzg0MDApOw0KPiA+ICAJCWJyZWFrOw0KPiA+ICsJY2FzZSAxODAwMDA6DQo+
ID4gIAljYXNlIDMxMjAwMDoNCj4gPiAgCWNhc2UgNTUyMDAwOg0KPiA+ICAJY2FzZSA2NDgwMDA6
DQo+ID4gIAkJV0FSTl9PTihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDI0MDAwKTsNCj4gPiAr
CQlicmVhazsNCj4gPiArCWNhc2UgMTkyMDAwOg0KPiA+ICsJCVdBUk5fT04oZGV2X3ByaXYtPmNk
Y2xrLmh3LnJlZiAhPSAxOTIwMCAmJg0KPiA+ICsJCQlkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9
IDM4NDAwICYmDQo+ID4gKwkJCWRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMjQwMDApOw0KPiAN
Cj4gSSdkIHByb2JhYmx5IHB1dCBhIGJyZWFrIGhlcmUgdG9vIGZvciBzeW1tZXRyeS4NCg0KT2sN
Cg0KPiANCj4gPiAgCX0NCj4gPiAgDQo+ID4gIAlyYXRpbyA9IGNkY2xrIC8gKGRldl9wcml2LT5j
ZGNsay5ody5yZWYgLyAyKTsNCj4gPiAtLSANCj4gPiAyLjIyLjANCj4gPiANCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
