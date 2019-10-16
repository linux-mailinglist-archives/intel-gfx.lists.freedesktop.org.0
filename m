Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C24D93BF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 16:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D166E98F;
	Wed, 16 Oct 2019 14:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB626E98F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 14:26:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 07:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="395910408"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by fmsmga005.fm.intel.com with ESMTP; 16 Oct 2019 07:25:59 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.52]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 15:25:58 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/8] drm/i915: Nuke the useless changed param from
 skl_ddb_add_affected_pipes()
Thread-Index: AQHVgG/ki7e1SGjI2Ue3kwYuWypkdqddSOYA
Date: Wed, 16 Oct 2019 14:25:58 +0000
Message-ID: <7762596917d259a3ceef4f7d420adf056ff06bc0.camel@intel.com>
References: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
 <20191011200949.7839-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20191011200949.7839-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <832C9877B242D74B8144E2EAA94DE784@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Nuke the useless changed
 param from skl_ddb_add_affected_pipes()
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

T24gRnJpLCAyMDE5LTEwLTExIGF0IDIzOjA5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gY2hhbmdlZD09dHJ1ZSBqdXN0IG1lYW5zIHdlIGhhdmUgc29tZSBjcnRjcyBpbiB0aGUg
c3RhdGUuIEFsbCB0aGUNCj4gc3R1ZmYgZm9sbG93aW5nIHRoaXMgb25seSBvcGVyYXRlcyBvbiBj
cnRjcyBpbiB0aGUgc3RhdGUgYW55d2F5IHNvDQo+IHRoZXJlIGlzIG5vIHBvaW50IGluIGhhdmlu
ZyB0aGlzIGJvb2wuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMzAgKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCBiMzA2ZTIzMzhmNWEuLjQ5
NTY4MjcwYTg5ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC01NDI0LDM1
ICs1NDI0LDE0IEBAIHNrbF9wcmludF93bV9jaGFuZ2VzKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQ0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgaW50DQo+IC1za2xfZGRiX2FkZF9h
ZmZlY3RlZF9waXBlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgYm9vbA0KPiAq
Y2hhbmdlZCkNCj4gK3NrbF9kZGJfYWRkX2FmZmVjdGVkX3BpcGVzKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0
ZS0+YmFzZS5kZXY7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShkZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiAgCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOw0KPiAgCXUzMiByZWFsbG9jX3BpcGVzID0g
cGlwZXNfbW9kaWZpZWQoc3RhdGUpOw0KPiAtCWludCByZXQsIGk7DQo+IC0NCj4gLQkvKg0KPiAt
CSAqIFdoZW4gd2UgZGlzdHJ1c3QgYmlvcyB3bSB3ZSBhbHdheXMgbmVlZCB0byByZWNvbXB1dGUg
dG8gc2V0DQo+IHRoZQ0KPiAtCSAqIGV4cGVjdGVkIEREQiBhbGxvY2F0aW9ucyBmb3IgZWFjaCBD
UlRDLg0KPiAtCSAqLw0KPiAtCWlmIChkZXZfcHJpdi0+d20uZGlzdHJ1c3RfYmlvc193bSkNCj4g
LQkJKCpjaGFuZ2VkKSA9IHRydWU7DQo+IC0NCj4gLQkvKg0KPiAtCSAqIElmIHRoaXMgdHJhbnNh
Y3Rpb24gaXNuJ3QgYWN0dWFsbHkgdG91Y2hpbmcgYW55IENSVEMncywNCj4gZG9uJ3QNCj4gLQkg
KiBib3RoZXIgd2l0aCB3YXRlcm1hcmsgY2FsY3VsYXRpb24uICBOb3RlIHRoYXQgaWYgd2UgcGFz
cw0KPiB0aGlzDQo+IC0JICogdGVzdCwgd2UncmUgZ3VhcmFudGVlZCB0byBob2xkIGF0IGxlYXN0
IG9uZSBDUlRDIHN0YXRlDQo+IG11dGV4LA0KPiAtCSAqIHdoaWNoIG1lYW5zIHdlIGNhbiBzYWZl
bHkgdXNlIHZhbHVlcyBsaWtlIGRldl9wcml2LQ0KPiA+YWN0aXZlX3BpcGVzDQo+IC0JICogc2lu
Y2UgYW55IHJhY2luZyBjb21taXRzIHRoYXQgd2FudCB0byB1cGRhdGUgdGhlbSB3b3VsZCBuZWVk
DQo+IHRvDQo+IC0JICogaG9sZCBfYWxsXyBDUlRDIHN0YXRlIG11dGV4ZXMuDQo+IC0JICovDQo+
IC0JZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3Rh
dGUsIGkpDQo+IC0JCSgqY2hhbmdlZCkgPSB0cnVlOw0KPiAtDQo+IC0JaWYgKCEqY2hhbmdlZCkN
Cj4gLQkJcmV0dXJuIDA7DQo+ICsJaW50IHJldDsNCj4gIA0KPiAgCS8qDQo+ICAJICogSWYgdGhp
cyBpcyBvdXIgZmlyc3QgYXRvbWljIHVwZGF0ZSBmb2xsb3dpbmcgaGFyZHdhcmUNCj4gcmVhZG91
dCwNCj4gQEAgLTU1NzYsMTQgKzU1NTUsMTMgQEAgc2tsX2NvbXB1dGVfd20oc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpDQo+ICAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5l
d19jcnRjX3N0YXRlOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0
ZTsNCj4gIAlzdHJ1Y3Qgc2tsX2RkYl92YWx1ZXMgKnJlc3VsdHMgPSAmc3RhdGUtPndtX3Jlc3Vs
dHM7DQo+IC0JYm9vbCBjaGFuZ2VkID0gZmFsc2U7DQo+ICAJaW50IHJldCwgaTsNCj4gIA0KPiAg
CS8qIENsZWFyIGFsbCBkaXJ0eSBmbGFncyAqLw0KPiAgCXJlc3VsdHMtPmRpcnR5X3BpcGVzID0g
MDsNCj4gIA0KPiAtCXJldCA9IHNrbF9kZGJfYWRkX2FmZmVjdGVkX3BpcGVzKHN0YXRlLCAmY2hh
bmdlZCk7DQo+IC0JaWYgKHJldCB8fCAhY2hhbmdlZCkNCj4gKwlyZXQgPSBza2xfZGRiX2FkZF9h
ZmZlY3RlZF9waXBlcyhzdGF0ZSk7DQo+ICsJaWYgKHJldCkNCj4gIAkJcmV0dXJuIHJldDsNCj4g
IA0KPiAgCS8qDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
