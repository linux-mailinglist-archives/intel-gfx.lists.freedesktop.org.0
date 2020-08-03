Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BACC23B0F8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 01:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375CA6E379;
	Mon,  3 Aug 2020 23:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CB06E379
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 23:33:47 +0000 (UTC)
IronPort-SDR: m+y/uXLH+Zl9hr4m2eGpFGQ1qqnTfzLZYP+j3E2almHlRuiVQGIr8t9sfA99djHRGExrel4hEf
 B+Xdzn64lhsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="140147357"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="140147357"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 16:33:46 -0700
IronPort-SDR: mZ9/eN3M/uRTWaFmvMz6Wiz1COhF5shI9dBrWAqd6uYGxOVYmPwabMI/OBaeMikvpAIoSQgeOi
 g/vnZk8mZxaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="436543769"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 03 Aug 2020 16:33:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:33:46 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 16:33:46 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.201]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 16:33:46 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 21/22] drm/i915/dg1: DG1 does not
 support DC6
Thread-Index: AQHWYgLxAiyURBsg1kGeaX/FG5OuDqknjwOA
Date: Mon, 3 Aug 2020 23:33:45 +0000
Message-ID: <9d696aac9566c34e9a542bff324390e9016dbe15.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-22-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-22-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <47BDFDF468095541BB096088C095FA58@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 21/22] drm/i915/dg1: DG1 does not support
 DC6
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

T24gRnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEFuc2h1bWFuIEd1cHRhIDwNCj4gYW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tDQo+
ID4NCj4gDQo+IERDNiBpcyBub3Qgc3VwcG9ydGVkIG9uIERHMSwgc28gY2hhbmdlIHRoZSBhbGxv
d2VkIERDIG1hc2sgZm9yIERHMS4NCj4gDQo+IENjOiBVbWEgU2hhbmthciA8DQo+IHVtYS5zaGFu
a2FyQGludGVsLmNvbQ0KPiA+DQo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDwNCj4g
YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tDQo+ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDUgKysrKy0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4
IDIxZjM5Yzk0MDU2ZS4uMzg5YTBmMmQzYTE0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtNDY4OSw3ICs0
Njg5LDEwIEBAIHN0YXRpYyB1MzIgZ2V0X2FsbG93ZWRfZGNfbWFzayhjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJaW50IG1heF9kYzsNCj4gIA0KPiAgCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7DQo+IC0JCW1heF9kYyA9IDQ7DQo+ICsJCWlmIChJ
U19ERzEoZGV2X3ByaXYpKQ0KDQpCZXR0ZXIgY2hhbmdlIHRvIElTX0RHRlgoKSBhcyBEQzYgaXMg
YSBTT0MgcG93ZXItc2F2aW5nIHN0YXRlLCBubyBkaXNjcmV0ZSBjYXJkIHdpbGwgZW50ZXIgaXQu
DQpXaXRoIHRoaXMgY2hhbmdlOg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+ICsJCQltYXhfZGMgPSAzOw0KPiArCQllbHNlDQo+
ICsJCQltYXhfZGMgPSA0Ow0KPiAgCQkvKg0KPiAgCQkgKiBEQzkgaGFzIGEgc2VwYXJhdGUgSFcg
ZmxvdyBmcm9tIHRoZSByZXN0IG9mIHRoZSBEQyBzdGF0ZXMsDQo+ICAJCSAqIG5vdCBkZXBlbmRp
bmcgb24gdGhlIERNQyBmaXJtd2FyZS4gSXQncyBuZWVkZWQgYnkgc3lzdGVtDQo+IA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
