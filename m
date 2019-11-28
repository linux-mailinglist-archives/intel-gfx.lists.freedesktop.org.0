Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B2810C13B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:01:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206936E042;
	Thu, 28 Nov 2019 01:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7466E042
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:01:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:01:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="211853851"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2019 17:01:03 -0800
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 17:01:02 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.88]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 17:01:02 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Suspend MST topology
 manager before destroy fbdev
Thread-Index: AQHVpMinUUEq+LTWM0+SFyxvY4c8Bqef4aKAgABpg4A=
Date: Thu, 28 Nov 2019 01:01:02 +0000
Message-ID: <92efede2dc1b5bcb9448e7f92c1eb77c5c70a0b6.camel@intel.com>
References: <20191127021609.162700-1-jose.souza@intel.com>
 <20191127184323.zcnibpc6p5khub4z@ldmartin-desk1>
In-Reply-To: <20191127184323.zcnibpc6p5khub4z@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <EC7E986F0780DB4093D2ED63DF8E9012@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Suspend MST topology
 manager before destroy fbdev
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDEwOjQzIC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFR1ZSwgTm92IDI2LCAyMDE5IGF0IDA2OjE2OjA5UE0gLTA4MDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gTVNUIGRvIHRvcG9sb2d5IHByb2JlIGluIHRocmVhZHMsIHNvIHRoaXMgcnVu
bmluZyB0aHJlYWRzIG5lZWRzIHRvDQo+ID4gYmUNCj4gPiBmbHVzaGVkIGJlZm9yZSBmYmRldiBp
cyBkZXN0cm95ZWQgYXMgd2hlbiBhIG5ldyBNU1Qgbm9kZSBpcyBmb3VuZA0KPiA+IGl0DQo+ID4g
Y2FsbHMgZHJtX2ttc19oZWxwZXJfaG90cGx1Z19ldmVudCgpIHRoYXQgY2FsbHMgZmJkZXYgZnVu
Y3Rpb25zDQo+ID4gDQo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwOTk2NA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNyArKysrKysrDQo+ID4gMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRleCA4ZjI3NzA5NTE0NTku
LjM3MmRkNDg2OTFjZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTE3OTg5LDYgKzE3OTg5LDEzIEBAIHZvaWQgaW50
ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpDQo+ID4gCSAqLw0KPiA+IAlpbnRlbF9ocGRfcG9sbF9maW5pKGk5MTUpOw0KPiA+IA0KPiA+
ICsJLyoNCj4gPiArCSAqIE1TVCBkbyB0b3BvbG9neSBwcm9iZSBpbiB0aHJlYWRzLCBzbyB0aGlz
IHJ1bm5pbmcgdGhyZWFkcw0KPiA+IG5lZWRzIHRvDQo+ID4gKwkgKiBiZSBmbHVzaGVkIGJlZm9y
ZSBmYmRldiBpcyBkZXN0cm95ZWQgYXMgd2hlbiBhIG5ldyBNU1Qgbm9kZQ0KPiA+IGlzIGZvdW5k
DQo+ID4gKwkgKiBpdCBjYWxsIGRybV9rbXNfaGVscGVyX2hvdHBsdWdfZXZlbnQoKSB0aGF0IGNh
bGxzIGZiZGV2DQo+ID4gZnVuY3Rpb25zDQo+ID4gKwkgKi8NCj4gDQo+IHRoaXMgd291bGQgbm9y
bWFsbHkgYmUgcGFydCBvZiBkcm1fbW9kZV9jb25maWdfY2xlYW51cCgpIGluIHdoaWNoIHRoZQ0K
PiBlbmNvZGVycyB3aWxsIGJlIGRlc3Ryb3llZCwgdG9nZXRoZXIgd2l0aCB0aGVpciBtc3RfbWdy
IHZpYSANCj4gZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfZGVzdHJveSgpDQo+IA0KPiBTbyBJIHRo
aW5rIHRoZSBjb21tZW50IHNob3VsZCBhY3R1YWxseSBtZW50aW9uIHdoeQ0KPiBkcm1fbW9kZV9j
b25maWdfY2xlYW51cCgpIGNhbid0IGJlIGRvbmUgYmVmb3JlIG9yIGp1c3Qgc3RhdGUgd2hlcmUg
aXQNCj4gd2lsbCBhY3R1YWxseSBiZSBkZXN0cm95ZWQuIFNvLi4uIEkgZ3Vlc3Mgc29tZXRoaW5n
IGxpa2U6DQo+IA0KPiAvKg0KPiAgICogTVNUIHRvcG9sb2d5IG5lZWRzIHRvIGJlIHN1c3BlbmRl
ZCBzbyB3ZSBkb24ndCBoYXZlIGFueSBjYWxscyB0bw0KPiAgICogZmJkZXYgYWZ0ZXIgaXQncyBm
aW5hbGl6ZWQuIE1TVCB3aWxsIGJlIGRlc3Ryb3llZCBsYXRlciBhcyBwYXJ0DQo+IG9mDQo+ICAg
KiBkcm1fbW9kZV9jb25maWdfY2xlYW51cCgpDQo+ICAgKi8NCj4gDQo+IE9mIGNvdXJzZSwgaWYg
d2UgY2FuIGZpZ3VyZSBvdXQgYSBiZXR0ZXIgb3JkZXJpbmcgdG8gcGVlbCB0aGUgb25pb24NCj4g
d291bGQgYmUgYmV0dGVyLCBidXQgSSB0aGluayB0aGlzIGlzIHN1ZmZpY2llbnQuDQoNClNvdW5k
cyBiZXR0ZXIsIHRoYW5rcy4NCg0KPiANCj4gV2l0aCB0aGUgY29tbWVudCB1cGRhdGUsDQo+IA0K
PiANCj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPg0KPiANCj4gTHVjYXMgRGUgTWFyY2hpDQo+IA0KPiA+ICsJaW50ZWxfZHBfbXN0X3N1c3Bl
bmQoaTkxNSk7DQo+ID4gKw0KPiA+IAkvKiBwb2xsIHdvcmsgY2FuIGNhbGwgaW50byBmYmRldiwg
aGVuY2UgY2xlYW4gdGhhdCB1cA0KPiA+IGFmdGVyd2FyZHMgKi8NCj4gPiAJaW50ZWxfZmJkZXZf
ZmluaShpOTE1KTsNCj4gPiANCj4gPiAtLSANCj4gPiAyLjI0LjANCj4gPiANCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
