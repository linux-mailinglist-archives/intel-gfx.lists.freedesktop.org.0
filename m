Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFC8374C21
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 01:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C211E6EC81;
	Wed,  5 May 2021 23:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008FE6EC81
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 23:55:29 +0000 (UTC)
IronPort-SDR: qK94fD1DRKAidJoe4SAA2Vn513QIUmMT+vF+EeMl84gtHqQrnT1wcdJXqSFgkEhy9jr7OQ3nEz
 Mqa8rd8yGyvA==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="198385269"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="198385269"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 16:55:28 -0700
IronPort-SDR: WgZusiVaDeEoSAklfWd7pqD/VTTZrBslsS+Km4DSb+mj2IJl4QgF4rjd1WDNy4kpYqS5FQOuv/
 psurOOMuGj2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="464430852"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga002.fm.intel.com with ESMTP; 05 May 2021 16:55:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 00:55:26 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Wed, 5 May 2021 16:55:25 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 02/11] drm/i915/xelpd: add XE_LPD display
 characteristics
Thread-Index: AQHXMUZA9zDS4+WV3kyq58+8ZTEU/KrWJ96A
Date: Wed, 5 May 2021 23:55:25 +0000
Message-ID: <d12c77491fe123fe2479a77a0d8386105ce6acad.camel@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
 <20210414155208.3161335-3-imre.deak@intel.com>
In-Reply-To: <20210414155208.3161335-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <F231AEBB608601478F4E7BE1E14B33D8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/xelpd: add XE_LPD display
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

T24gV2VkLCAyMDIxLTA0LTE0IGF0IDE4OjUxICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZy
b206IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IA0KPiBMZXQncyBz
dGFydCBwcmVwYXJpbmcgZm9yIHVwY29taW5nIHBsYXRmb3JtcyB0aGF0IHdpbGwgdXNlIGFuIFhF
X0xQRA0KPiBkZXNpZ24uDQo+IA0KPiB2MjoNCj4gIC0gVXNlIHRoZSBub3ctcHJlZmVycmVkICJY
RV9MUEQiIHRlcm0gdG8gcmVmZXIgdG8gdGhpcyBkZXNpZ24NCj4gIC0gVXRpbGl6ZSBESVNQTEFZ
X1ZFUigpIHJhdGhlciB0aGFuIGEgZmVhdHVyZSBmbGFnDQo+ICAtIERyb3AgdW51c2VkIG1idXNf
c2l6ZSBmaWVsZCAoTHVjYXMpDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jIHwgMTAgKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBpbmRleCA0NGU3Yjk0
ZGI2M2RjLi40MGI1OGE2ZGMzMTkzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4g
QEAgLTkzOSw2ICs5MzksMTYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5m
byBhZGxfc19pbmZvID0gew0KPiAgCS5kbWFfbWFza19zaXplID0gNDYsDQo+ICB9Ow0KPiAgDQo+
ICsjZGVmaW5lIFhFX0xQRF9GRUFUVVJFUyBcDQo+ICsJLmRpc3BsYXkudmVyID0gMTMsCQkJCQkJ
XA0KPiArCS5kaXNwbGF5Lmhhc19wc3JfaHdfdHJhY2tpbmcgPSAwLAkJCQlcDQo+ICsJLmFib3hf
bWFzayA9IEdFTk1BU0soMSwgMCksCQkJCQlcDQo+ICsJLnBpcGVfbWFzayA9IEJJVChQSVBFX0Ep
IHwgQklUKFBJUEVfQikgfCBCSVQoUElQRV9DKSB8IEJJVChQSVBFX0QpLCBcDQo+ICsJLmNwdV90
cmFuc2NvZGVyX21hc2sgPSBCSVQoVFJBTlNDT0RFUl9BKSB8IEJJVChUUkFOU0NPREVSX0IpIHwJ
XA0KPiArCQlCSVQoVFJBTlNDT0RFUl9DKSB8IEJJVChUUkFOU0NPREVSX0QpLAkJCVwNCj4gKwku
ZGRiX3NpemUgPSA0MDk2LAkJCQkJCVwNCj4gKwkubnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlcyA9
IDQNCj4gKw0KPiAgI3VuZGVmIEdFTg0KPiAgI3VuZGVmIFBMQVRGT1JNDQo+ICANCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
