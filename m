Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20823375B6F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 21:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F496ED23;
	Thu,  6 May 2021 19:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40DA86ED23
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 19:09:49 +0000 (UTC)
IronPort-SDR: R4L2UN000BnYJ1ELtikJa1qd+rc7Y560I5DQDIP0b9NYUPTxaVHBRHhXxcpZHXDnNVAEVlbA76
 Hnn5Q7mRTGqg==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="178794591"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="178794591"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 12:09:48 -0700
IronPort-SDR: R8Zs2Yx00FXg7vZW01h5Tkel4+V52e2Q1O8OLQdtB1DUxNI1nGYoXoWb81Gx4qVVIUXbwdmDGo
 DLdHEI8M/5cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="622575055"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 06 May 2021 12:09:48 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 12:09:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 12:09:47 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 6 May 2021 12:09:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v2 01/10] drm/i915/xelpd: add XE_LPD display
 characteristics
Thread-Index: AQHXQpOaA3dYuVpI1ECWCKayi5wRdqrXR8sA
Date: Thu, 6 May 2021 19:09:47 +0000
Message-ID: <3e9fcc4cddc87eafc731badb805e1076af43ddc9.camel@intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
 <20210506161930.309688-2-imre.deak@intel.com>
In-Reply-To: <20210506161930.309688-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <AB4C2DAE00794241B41ED292AA2F1821@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915/xelpd: add XE_LPD display
 characteristics
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

T24gVGh1LCAyMDIxLTA1LTA2IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZy
b206IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IA0KPiBMZXQncyBz
dGFydCBwcmVwYXJpbmcgZm9yIHVwY29taW5nIHBsYXRmb3JtcyB0aGF0IHdpbGwgdXNlIGFuIFhF
X0xQRA0KPiBkZXNpZ24uDQo+IA0KPiB2MjoNCj4gIC0gVXNlIHRoZSBub3ctcHJlZmVycmVkICJY
RV9MUEQiIHRlcm0gdG8gcmVmZXIgdG8gdGhpcyBkZXNpZ24NCj4gIC0gVXRpbGl6ZSBESVNQTEFZ
X1ZFUigpIHJhdGhlciB0aGFuIGEgZmVhdHVyZSBmbGFnDQo+ICAtIERyb3AgdW51c2VkIG1idXNf
c2l6ZSBmaWVsZCAoTHVjYXMpDQo+IHYzOg0KPiAgLSBBZGp1c3QgZm9yIGRidWYue3NpemUsc2xp
Y2VfbWFza30gKFZpbGxlKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4gKHYyKQ0KPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggfCAgMiArKw0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgICAgICAgfCAxMCArKysrKysrKysr
DQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IGluZGV4
IGYzY2E1ZDVjOTc3ODEuLmFjZjQ3MjUyZDllNzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IEBAIC0zODAsNiAr
MzgwLDggQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYWxsX2luX3NldChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIGVudW0gZGJ1Zl9zbGljZSB7DQo+ICAJREJVRl9TMSwNCj4g
IAlEQlVGX1MyLA0KPiArCURCVUZfUzMsDQo+ICsJREJVRl9TNCwNCj4gIAlJOTE1X01BWF9EQlVG
X1NMSUNFUw0KPiAgfTsNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gaW5kZXggYzY3
OGUwNjYzZDgwOC4uMDBlMTVmZTAwZjRmMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
DQo+IEBAIC05MzksNiArOTM5LDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNl
X2luZm8gYWRsX3NfaW5mbyA9IHsNCj4gIAkuZG1hX21hc2tfc2l6ZSA9IDQ2LA0KPiAgfTsNCj4g
IA0KPiArI2RlZmluZSBYRV9MUERfRkVBVFVSRVMgXA0KPiArCS5kaXNwbGF5LnZlciA9IDEzLAkJ
CQkJCVwNCj4gKwkuZGlzcGxheS5oYXNfcHNyX2h3X3RyYWNraW5nID0gMCwJCQkJXA0KPiArCS5h
Ym94X21hc2sgPSBHRU5NQVNLKDEsIDApLAkJCQkJXA0KPiArCS5waXBlX21hc2sgPSBCSVQoUElQ
RV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwgXA0KPiArCS5j
cHVfdHJhbnNjb2Rlcl9tYXNrID0gQklUKFRSQU5TQ09ERVJfQSkgfCBCSVQoVFJBTlNDT0RFUl9C
KSB8CVwNCj4gKwkJQklUKFRSQU5TQ09ERVJfQykgfCBCSVQoVFJBTlNDT0RFUl9EKSwJCQlcDQo+
ICsJLmRidWYuc2l6ZSA9IDQwOTYsCQkJCQkJXA0KPiArCS5kYnVmLnNsaWNlX21hc2sgPSBCSVQo
REJVRl9TMSkgfCBCSVQoREJVRl9TMikgfCBCSVQoREJVRl9TMykgfCBCSVQoREJVRl9TNCkNCj4g
Kw0KPiAgI3VuZGVmIEdFTg0KPiAgI3VuZGVmIFBMQVRGT1JNDQo+ICANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
