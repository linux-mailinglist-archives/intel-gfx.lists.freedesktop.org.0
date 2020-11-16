Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F1E2B5260
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 21:23:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396736EA6F;
	Mon, 16 Nov 2020 20:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5208D6EA6F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 20:23:56 +0000 (UTC)
IronPort-SDR: 1CdfBY65YW83VWrh9RNvGli/K1k+OAvWuO0pnvVAti6UViUS3Y2BK3wyGiIYawV1W9kcnemL39
 LiZb9lINPuqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170914440"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="170914440"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 12:23:38 -0800
IronPort-SDR: uNCznWnLmToRLsd8IbYKG5/gO5I9V9ctr5oDRPxvmmIo/k2CJUO4MuNZIJ99gTEKGFEOfPiHsS
 RYLoc2I+cFTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="329817286"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 16 Nov 2020 12:23:35 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Nov 2020 12:23:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Nov 2020 12:23:34 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 16 Nov 2020 12:23:34 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Handle max_bpc==16
Thread-Index: AQHWt6UxeEDfxyRmNEu8Xu3PZL7n4qnLw40A
Date: Mon, 16 Nov 2020 20:23:34 +0000
Message-ID: <d901ed54d86ffd673dc392d5f6613655b6257278.camel@intel.com>
References: <20201110210447.27454-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201110210447.27454-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <50DAB6FDC2F7D040B66377261AF25086@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Handle max_bpc==16
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTExLTEwIGF0IDIzOjA0ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRURJRCBjYW4gZGVjbGFyZSB0aGUgbWF4aW11bSBzdXBwb3J0ZWQgYnBjIHVwIHRvIDE2
LA0KPiBhbmQgYXBwYXJlbnRseSB0aGVyZSBhcmUgZGlzcGxheXMgdGhhdCBkbyBzby4gQ3VycmVu
dGx5DQo+IHdlIGFzc3VtZSAxMiBicGMgaXMgdGhhIG1heC4gRml4IHRoZSBhc3N1bXB0aW9uIGFu
ZA0KPiB0b3NzIGluIGEgTUlTU0lOR19DQVNFKCkgZm9yIGFueSBvdGhlciB2YWx1ZSB3ZSBkb24n
dA0KPiBleHBlY3QgdG8gc2VlLg0KPiANCj4gVGhpcyBmaXhlcyBtb2Rlc2V0cyB3aXRoIGEgZGlz
cGxheSB3aXRoIEVESUQgbWF4IGJwYyA+IDEyLg0KPiBQcmV2aW91c2x5IGFueSBtb2Rlc2V0IHdv
dWxkIGp1c3Qgc2lsZW50bHkgZmFpbCBvbiBwbGF0Zm9ybXMNCj4gdGhhdCBkaWRuJ3Qgb3RoZXJ3
aXNlIGxpbWl0IHRoaXMgdmlhIHRoZSBtYXhfYnBjIHByb3BlcnR5Lg0KPiBJbiBwYXJ0aWN1bGFy
IHdlIGRvbid0IGFkZCB0aGUgbWF4X2JwYyBwcm9wZXJ0eSB0byBIRE1JDQo+IHBvcnRzIG9uIGdt
Y2ggcGxhdGZvcm1zLCBhbmQgdGh1cyB3ZSB3b3VsZCBzZWUgdGhlIHJhdw0KPiBtYXhfYnBjIGNv
bWluZyBmcm9tIHRoZSBFRElELg0KPiANCj4gSSBzdXBwb3NlIHdlIGNvdWxkIGFscmVhZHkgYWRq
dXN0IHRoaXMgdG8gYWxzbyBhbGxvdyAxNmJwYywNCj4gYnV0IHNlZWluZyBhcyBubyBjdXJyZW50
IHBsYXRmb3JtIHN1cHBvcnRzIHRoYXQgdGhlcmUgaXMNCj4gbGl0dGxlIHBvaW50Lg0KDQpSZXZp
ZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoN
Cg0KPiANCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2xvc2VzOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI2MzINCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAz
ICsrLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IDI3MjljODUyYzY2OC4uMmE2ZWIxY2E5YzhlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTMwNjAsMTAgKzEzMDYw
LDExIEBAIGNvbXB1dGVfc2lua19waXBlX2JwcChjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSwNCj4gwqAJY2FzZSAxMCAuLi4gMTE6DQo+IMKgCQlicHAgPSAxMCAq
IDM7DQo+IMKgCQlicmVhazsNCj4gLQljYXNlIDEyOg0KPiArCWNhc2UgMTIgLi4uIDE2Og0KPiDC
oAkJYnBwID0gMTIgKiAzOw0KPiDCoAkJYnJlYWs7DQo+IMKgCWRlZmF1bHQ6DQo+ICsJCU1JU1NJ
TkdfQ0FTRShjb25uX3N0YXRlLT5tYXhfYnBjKTsNCj4gwqAJCXJldHVybiAtRUlOVkFMOw0KPiDC
oAl9DQo+IMKgDQo+IA0KPiANCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
