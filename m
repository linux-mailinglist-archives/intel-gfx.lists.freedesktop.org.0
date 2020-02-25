Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4EF16EC9B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB5389B5F;
	Tue, 25 Feb 2020 17:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B0889B5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:37:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:37:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="271395613"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2020 09:37:23 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX153.ger.corp.intel.com (163.33.192.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Feb 2020 17:30:58 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 17:30:57 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 25 Feb 2020 17:30:57 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 05/20] drm/i915: Make skl_compute_dbuf_slices() behave
 consistently for all platforms
Thread-Index: AQHV6/6tz02Jn0qi+0C39L0ep1RTsagsKdKA
Date: Tue, 25 Feb 2020 17:30:57 +0000
Message-ID: <587c8ad3b5fc69b2ec0d4fcae302d4e8c959ba82.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <020BBAA7F00ACF40B0887EC6681FAF26@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/20] drm/i915: Make
 skl_compute_dbuf_slices() behave consistently for all platforms
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

T24gVHVlLCAyMDIwLTAyLTI1IGF0IDE5OjExICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ3VycmVudGx5IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKCkgcmV0dXJucyAwIGZvciBh
bnkgaW5hY3RpdmUgcGlwZQ0KPiBvbg0KPiBpY2wrLCBidXQgcmV0dXJucyBCSVQoUzEpIG9uIHBy
ZS1pY2wgZm9yIGFueSBwaXBlICh3aGV0aGVyIGl0J3MNCj4gYWN0aXZlIG9yDQo+IG5vdCkuIExl
dCdzIG1ha2UgdGhlIGJlaGF2aW91ciBjb25zaXN0ZW50IGFuZCBhbHdheXMgcmV0dXJuIDAgZm9y
IGFueQ0KPiBpbmFjdGl2ZSBwaXBlLg0KPiANCj4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0K
PiBpbmRleCBhMmU3ODk2OWMwZGYuLjY0MGY0YzRmZDUwOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jDQo+IEBAIC00NDA4LDcgKzQ0MDgsNyBAQCBzdGF0aWMgdTggc2tsX2NvbXB1dGVf
ZGJ1Zl9zbGljZXMoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
DQo+ICAJICogRm9yIGFueXRoaW5nIGVsc2UganVzdCByZXR1cm4gb25lIHNsaWNlIHlldC4NCj4g
IAkgKiBTaG91bGQgYmUgZXh0ZW5kZWQgZm9yIG90aGVyIHBsYXRmb3Jtcy4NCj4gIAkgKi8NCj4g
LQlyZXR1cm4gQklUKERCVUZfUzEpOw0KPiArCXJldHVybiBhY3RpdmVfcGlwZXMgJiBCSVQocGlw
ZSkgPyBCSVQoREJVRl9TMSkgOiAwOw0KDQpJIHRoaW5rIHRoZSBpbml0aWFsIGlkZWEgd2FzIHRo
aXMgd29uJ3QgYmUgZXZlbiBjYWxsZWQgaWYgdGhlcmUgDQphcmUgbm8gYWN0aXZlIHBpcGVzIGF0
IGFsbCAtIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMgd291bGQNCmJhaWwgb3V0
IGltbWVkaWF0ZWx5LiBJZiB0aGVyZSB3ZXJlIHNvbWUgYWN0aXZlIHBpcGVzIC0gdGhlbiB3ZSB3
aWxsDQpoYXZlIHRvIHVzZSBzbGljZSBTMSBhbnl3YXkgLSBiZWNhdXNlIHRoZXJlIHdlcmUgc2lt
cGx5IG5vIG90aGVyIHNsaWNlcw0KYXZhaWxhYmxlLiBJZiBzb21lIHBpcGVzIHdlcmUgaW5hY3Rp
dmUgLSB0aGV5IGFyZSBjdXJyZW50bHkgc2tpcHBlZCBieQ0KIWNydGNfc3RhdGUtPmh3LmFjdGl2
ZSBjaGVjayAtIHNvIEkgd291bGQganVzdCBrZWVwIGl0IHNpbXBsZSBhbmQgZG9uJ3QNCmNhbGwg
dGhpcyBmdW5jdGlvbiBmb3Igbm9uLWFjdGl2ZSBwaXBlcyBhdCBhbGwuDQoNCkN1cnJlbnRseSB3
ZSBhcmUganVzdCBPUmluZyBzbGljZSBiaXRtYXNrcyBvbmx5IGZyb20gYWN0aXZlIHBpcGVzLg0K
DQpTdGFuDQoNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHU2NA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
