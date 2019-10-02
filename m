Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B5CC92C1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 22:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB666E17C;
	Wed,  2 Oct 2019 20:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EE36E17C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 20:07:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 13:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="216568850"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 02 Oct 2019 13:07:22 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.82]) with mapi id 14.03.0439.000;
 Wed, 2 Oct 2019 13:07:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Add the Thunderbolt PLL divider values
Thread-Index: AQHVeSr6PzNBV/tEkEKM0Ao3jfTZQ6dIPQAA
Date: Wed, 2 Oct 2019 20:07:21 +0000
Message-ID: <98aabffa976035d5f71f2f43b56bcf08327e05b1.camel@intel.com>
References: <20191002140808.12000-1-imre.deak@intel.com>
In-Reply-To: <20191002140808.12000-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <24ABACB05AD33246A1B6DEEDC764F83A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add the Thunderbolt PLL
 divider values
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
Cc: "Westerberg, Mika" <mika.westerberg@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTEwLTAyIGF0IDE3OjA4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBUaHVuZGVyYm9sdCBQTEwgZGl2aWRlciB2YWx1ZXMgb24gVEdMIGRpZmZlciBmcm9tIHRoZSBJ
Q0wgb25lcywNCj4gdXBkYXRlIHRoZSBQTEwgcGFyYW1ldGVyIGNhbGN1bGF0aW9uIGZ1bmN0aW9u
IGFjY29yZGluZ2x5Lg0KPiANCj4gQnNwZWM6IDQ5MjA0DQo+IA0KPiBDYzogSm9zZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEu
dGF5bG9yQGludGVsLmNvbT4NCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPg0KPiBDYzogTWlrYSBXZXN0ZXJiZXJnIDxtaWthLndlc3RlcmJlcmdAaW50ZWwu
Y29tPg0KPiBUZXN0ZWQtYnk6IE1pa2EgV2VzdGVyYmVyZyA8bWlrYS53ZXN0ZXJiZXJnQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8
IDUxDQo+ICsrKysrKysrKysrKysrKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBpbmRleCBiZTY5YTIzNDQyOTQuLjdiMGIxOGQ5
NWIwNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYw0KPiBAQCAtMjUyMCw2ICsyNTIwLDI0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2ts
X3dycGxsX3BhcmFtcw0KPiBpY2xfdGJ0X3BsbF8xOV8yTUh6X3ZhbHVlcyA9IHsNCj4gIAkucGRp
diA9IDB4NCAvKiA1ICovLCAua2RpdiA9IDEsIC5xZGl2X21vZGUgPSAwLCAucWRpdl9yYXRpbyA9
DQo+IDAsDQo+ICB9Ow0KPiAgDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHNrbF93cnBsbF9wYXJh
bXMgdGdsX3RidF9wbGxfMTlfMk1Iel92YWx1ZXMgPSB7DQo+ICsJLmRjb19pbnRlZ2VyID0gMHg1
NCwgLmRjb19mcmFjdGlvbiA9IDB4MzAwMCwNCj4gKwkvKiB0aGUgZm9sbG93aW5nIHBhcmFtcyBh
cmUgdW51c2VkICovDQo+ICsJLnBkaXYgPSAwLCAua2RpdiA9IDAsIC5xZGl2X21vZGUgPSAwLCAu
cWRpdl9yYXRpbyA9IDAsDQo+ICt9Ow0KPiArDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHNrbF93
cnBsbF9wYXJhbXMgdGdsX3RidF9wbGxfMjRNSHpfdmFsdWVzID0gew0KPiArCS5kY29faW50ZWdl
ciA9IDB4NDMsIC5kY29fZnJhY3Rpb24gPSAweDQwMDAsDQo+ICsJLyogdGhlIGZvbGxvd2luZyBw
YXJhbXMgYXJlIHVudXNlZCAqLw0KPiArCS5wZGl2ID0gMCwgLmtkaXYgPSAwLCAucWRpdl9tb2Rl
ID0gMCwgLnFkaXZfcmF0aW8gPSAwLA0KPiArfTsNCj4gKw0KPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBza2xfd3JwbGxfcGFyYW1zIHRnbF90YnRfcGxsXzI1TUh6X3ZhbHVlcyA9IHsNCj4gKwkuZGNv
X2ludGVnZXIgPSAweDQwLCAuZGNvX2ZyYWN0aW9uID0gMHg2NjY2LA0KPiArCS8qIHRoZSBmb2xs
b3dpbmcgcGFyYW1zIGFyZSB1bnVzZWQgKi8NCj4gKwkucGRpdiA9IDAsIC5rZGl2ID0gMCwgLnFk
aXZfbW9kZSA9IDAsIC5xZGl2X3JhdGlvID0gMCwNCj4gK307DQoNCg0KMjVNSHogcmVmZXJlbmNl
IGZyZXF1ZW5jeSBpcyBub3QgUE9SIGl0IHdhcyBqdXN0IGEgdGVzdCBieSBIVyB0ZWFtIGFuZA0K
d2UgZG9uJ3QgZXZlbiBzdXBwb3J0IGl0IGluIGljbF9yZWFkb3V0X3JlZmNsaygpLCBub3Qgc3Vy
ZSBpZiB3ZSBzaG91bGQNCmFkZCBpdCBoZXJlLg0KDQpPdGhlciB0aGFuIHRoYXQsIExHVE06DQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiArDQo+ICBzdGF0aWMgYm9vbCBpY2xfY2FsY19kcF9jb21ib19wbGwoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+ICAJCQkJICBzdHJ1Y3Qgc2tsX3dycGxs
X3BhcmFtcyAqcGxsX3BhcmFtcykNCj4gIHsNCj4gQEAgLTI1NDcsOCArMjU2NSwzNyBAQCBzdGF0
aWMgYm9vbCBpY2xfY2FsY190YnRfcGxsKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLA0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY3J0Y19zdGF0ZS0NCj4gPmJhc2UuY3J0Yy0+ZGV2KTsNCj4gIA0KPiAtCSpwbGxfcGFy
YW1zID0gZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiA9PSAyNDAwMCA/DQo+IC0JCQlpY2xfdGJ0X3Bs
bF8yNE1Iel92YWx1ZXMgOg0KPiBpY2xfdGJ0X3BsbF8xOV8yTUh6X3ZhbHVlczsNCj4gKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgew0KPiArCQlzd2l0Y2ggKGRldl9wcml2LT5jZGNs
ay5ody5yZWYpIHsNCj4gKwkJZGVmYXVsdDoNCj4gKwkJCU1JU1NJTkdfQ0FTRShkZXZfcHJpdi0+
Y2RjbGsuaHcucmVmKTsNCj4gKwkJCS8qIGZhbGwtdGhyb3VnaCAqLw0KPiArCQljYXNlIDE5MjAw
Og0KPiArCQljYXNlIDM4NDAwOg0KPiArCQkJKnBsbF9wYXJhbXMgPSB0Z2xfdGJ0X3BsbF8xOV8y
TUh6X3ZhbHVlczsNCj4gKwkJCWJyZWFrOw0KPiArCQljYXNlIDI0MDAwOg0KPiArCQkJKnBsbF9w
YXJhbXMgPSB0Z2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXM7DQo+ICsJCQlicmVhazsNCj4gKwkJY2Fz
ZSAyNTAwMDoNCj4gKwkJCSpwbGxfcGFyYW1zID0gdGdsX3RidF9wbGxfMjVNSHpfdmFsdWVzOw0K
PiArCQkJYnJlYWs7DQo+ICsJCX0NCj4gKwl9IGVsc2Ugew0KPiArCQlzd2l0Y2ggKGRldl9wcml2
LT5jZGNsay5ody5yZWYpIHsNCj4gKwkJZGVmYXVsdDoNCj4gKwkJCU1JU1NJTkdfQ0FTRShkZXZf
cHJpdi0+Y2RjbGsuaHcucmVmKTsNCj4gKwkJCS8qIGZhbGwtdGhyb3VnaCAqLw0KPiArCQljYXNl
IDE5MjAwOg0KPiArCQljYXNlIDM4NDAwOg0KPiArCQkJKnBsbF9wYXJhbXMgPSBpY2xfdGJ0X3Bs
bF8xOV8yTUh6X3ZhbHVlczsNCj4gKwkJCWJyZWFrOw0KPiArCQljYXNlIDI0MDAwOg0KPiArCQkJ
KnBsbF9wYXJhbXMgPSBpY2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXM7DQo+ICsJCQlicmVhazsNCj4g
KwkJfQ0KPiArCX0NCj4gKw0KPiAgCXJldHVybiB0cnVlOw0KPiAgfQ0KPiAgDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
