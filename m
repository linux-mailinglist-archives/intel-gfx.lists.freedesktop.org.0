Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CED783DF3D2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 19:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4123289E7C;
	Tue,  3 Aug 2021 17:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7889E89E7C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 17:19:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="235682369"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="235682369"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 10:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="437114500"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 03 Aug 2021 10:19:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:19:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 10:19:19 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 3 Aug 2021 10:19:19 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/4] drm/i915: Nuke ORIGIN_GTT
Thread-Index: AQHXhZ/TtxJ2v1IGDkCTCeda4qBMJqtiHRiAgABlsAA=
Date: Tue, 3 Aug 2021 17:19:19 +0000
Message-ID: <42fd8ffa5aab181c4e82e30b8c9d67e61c03ee66.camel@intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-3-jose.souza@intel.com>
 <29fc7f2e-93e9-229b-0fd6-75e4b988edef@intel.com>
In-Reply-To: <29fc7f2e-93e9-229b-0fd6-75e4b988edef@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <81C41DD948EE5A48BA278CF357D2BF7B@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke ORIGIN_GTT
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA4LTAzIGF0IDE0OjIwICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA3LzMxLzIxIDM6MTAgQU0sIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6
DQo+ID4gVGhlcmUgaXMgbm8gdXNlcnMgb2YgaXQsIHNvIG5vIG5lZWQgdG8ga2VlcCBoYW5kbGlu
ZyBmb3IgaXQuDQo+ID4gDQo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVu
QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICAgICB8IDEwICstLS0tLS0tLS0NCj4gPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCB8ICAzICstLQ0KPiA+
ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiA+
IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IGluZGV4
IGRkZmMxN2UyMTY2OGEuLmU0ZDQxMmQzOTVjMzQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBAQCAtMTEyOSw3ICsxMTI5LDcgQEAgdm9p
ZCBpbnRlbF9mYmNfaW52YWxpZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
DQo+ID4gICAJaWYgKCFIQVNfRkJDKGRldl9wcml2KSkNCj4gPiAgIAkJcmV0dXJuOw0KPiA+ICAg
DQo+ID4gLQlpZiAob3JpZ2luID09IE9SSUdJTl9HVFQgfHwgb3JpZ2luID09IE9SSUdJTl9GTElQ
KQ0KPiA+ICsJaWYgKG9yaWdpbiA9PSBPUklHSU5fRkxJUCkNCj4gPiAgIAkJcmV0dXJuOw0KPiA+
ICAgDQo+ID4gICAJbXV0ZXhfbG9jaygmZmJjLT5sb2NrKTsNCj4gPiBAQCAtMTE1MCwxNCArMTE1
MCw2IEBAIHZvaWQgaW50ZWxfZmJjX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gPiAgIAlpZiAoIUhBU19GQkMoZGV2X3ByaXYpKQ0KPiA+ICAgCQlyZXR1cm47DQo+
ID4gICANCj4gPiAtCS8qDQo+ID4gLQkgKiBHVFQgdHJhY2tpbmcgZG9lcyBub3QgbnVrZSB0aGUg
ZW50aXJlIGNmYg0KPiA+IC0JICogc28gZG9uJ3QgY2xlYXIgYnVzeV9iaXRzIHNldCBmb3Igc29t
ZSBvdGhlcg0KPiA+IC0JICogcmVhc29uLg0KPiA+IC0JICovDQo+ID4gLQlpZiAob3JpZ2luID09
IE9SSUdJTl9HVFQpDQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0NCj4gPiAgIAltdXRleF9sb2NrKCZm
YmMtPmxvY2spOw0KPiA+ICAgDQo+ID4gICAJZmJjLT5idXN5X2JpdHMgJj0gfmZyb250YnVmZmVy
X2JpdHM7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZnJvbnRidWZmZXIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJv
bnRidWZmZXIuaA0KPiA+IGluZGV4IDZkNDFmNTM5NDQyNTAuLjRiOTc3YzFlNGQ1MmIgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZl
ci5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1
ZmZlci5oDQo+ID4gQEAgLTMzLDggKzMzLDcgQEANCj4gPiAgIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlOw0KPiA+ICAgDQo+ID4gICBlbnVtIGZiX29wX29yaWdpbiB7DQo+ID4gLQlPUklHSU5fR1RU
LA0KPiA+IC0JT1JJR0lOX0NQVSwNCj4gPiArCU9SSUdJTl9DUFUgPSAwLA0KPiA+ICAgCU9SSUdJ
Tl9DUywNCj4gPiAgIAlPUklHSU5fRkxJUCwNCj4gPiAgIAlPUklHSU5fRElSVFlGQiwNCj4gPiAN
Cj4gSXMgdGhpcyBwYXRjaCBhYnNvbHV0ZWx5IG5lY2Vzc2FyeSBmb3IgdGhpcyBzZXJpZXM/DQoN
Ck5vcGUsIGp1c3Qgbm90aWNlIHRoaXMgdW51c2VkIE9SSUdJTl9HVFQgd2hpbGUgZGVidWdnaW5n
Lg0K
