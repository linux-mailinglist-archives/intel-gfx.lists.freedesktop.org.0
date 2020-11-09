Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE38B2AC624
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6629A89369;
	Mon,  9 Nov 2020 20:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEB589369
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:47:16 +0000 (UTC)
IronPort-SDR: BWg4boCDpGFCPIj89+hl5SWBa2SMrdygeFOb/XdgH6+v5egkOFLGLi91KKgH5Acshv4AKP2OZu
 Fc35Zw74GswQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="234036478"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="234036478"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:47:15 -0800
IronPort-SDR: Zn7DwRRJOl9Eczym32yln5Eq8HrVZYXWgEj/WCWd11cXnh4/gzEC4N4/c7kh2wBSyeNT8zJRCZ
 gZYvYKPBLFgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="473136257"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 09 Nov 2020 12:47:15 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:47:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 12:47:14 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 9 Nov 2020 12:47:14 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 6/8] drm/i915: re-order if/else ladder for hpd_irq_setup
Thread-Index: AQHWtI/77U85WJJwMkCVHWkd3b5k7qnAz/iA
Date: Mon, 9 Nov 2020 20:47:14 +0000
Message-ID: <1fc24ff1413b0b59a496f8622d54c8a30bc3b19a.camel@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
 <20201106225531.920641-6-lucas.demarchi@intel.com>
In-Reply-To: <20201106225531.920641-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <11FC16C6097AC24C82B3403E14344CE7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915: re-order if/else ladder for
 hpd_irq_setup
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

T24gRnJpLCAyMDIwLTExLTA2IGF0IDE0OjU1IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFVzZSB0aGUgY29udmVudGlvbiBvZiBuZXcgcGxhdGZvcm1zIGZpcnN0LiBObyBuZWVkIHRv
IHNwZWNpYWwgY2FzZQ0KPiBIQVNfR01DSCgpIHNpbmNlIHRoYXQgc3RvcHBlZCBiZWluZyB0cnVl
IGF0IHRoZSBsYXR0ZXN0IG9uIGdlbjggKGZvcg0KPiBjaGVycnl2aWV3KS4NCj4gDQoNClJldmll
d2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0K
PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDI3ICsrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCAxNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiBpbmRl
eCBlMGViMzJiZDk2MDcuLjJhYjRlZGY3ZjI1YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jDQo+IEBAIC00MjM3LDIxICs0MjM3LDE4IEBAIHZvaWQgaW50ZWxfaXJxX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiDCoAkgKi8NCj4gwqAJZGV2X3ByaXYtPmhv
dHBsdWcuaHBkX3Nob3J0X3N0b3JtX2VuYWJsZWQgPSAhSEFTX0RQX01TVChkZXZfcHJpdik7DQo+
IMKgDQo+IA0KPiANCj4gDQo+IC0JaWYgKEhBU19HTUNIKGRldl9wcml2KSkgew0KPiAtCQlpZiAo
STkxNV9IQVNfSE9UUExVRyhkZXZfcHJpdikpDQo+IC0JCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRf
aXJxX3NldHVwID0gaTkxNV9ocGRfaXJxX3NldHVwOw0KPiAtCX0gZWxzZSB7DQo+IC0JCWlmIChI
QVNfUENIX0RHMShkZXZfcHJpdikpDQo+IC0JCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3Nl
dHVwID0gZGcxX2hwZF9pcnFfc2V0dXA7DQo+IC0JCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpDQo+IC0JCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gZ2VuMTFf
aHBkX2lycV9zZXR1cDsNCj4gLQkJZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpDQo+IC0J
CQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gYnh0X2hwZF9pcnFfc2V0dXA7DQo+
IC0JCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfU1BUKQ0KPiAtCQkJ
ZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IHNwdF9ocGRfaXJxX3NldHVwOw0KPiAt
CQllbHNlDQo+IC0JCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gaWxrX2hwZF9p
cnFfc2V0dXA7DQo+IC0JfQ0KPiArCWlmIChIQVNfUENIX0RHMShkZXZfcHJpdikpDQo+ICsJCWRl
dl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBkZzFfaHBkX2lycV9zZXR1cDsNCj4gKwll
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiArCQlkZXZfcHJpdi0+ZGlzcGxh
eS5ocGRfaXJxX3NldHVwID0gZ2VuMTFfaHBkX2lycV9zZXR1cDsNCj4gKwllbHNlIGlmIChJU19H
RU45X0xQKGRldl9wcml2KSkNCj4gKwkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9
IGJ4dF9ocGRfaXJxX3NldHVwOw0KPiArCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2
KSA+PSBQQ0hfU1BUKQ0KPiArCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gc3B0
X2hwZF9pcnFfc2V0dXA7DQo+ICsJZWxzZSBpZiAoSEFTX0dNQ0goZGV2X3ByaXYpICYmIEk5MTVf
SEFTX0hPVFBMVUcoZGV2X3ByaXYpKQ0KPiArCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3Nl
dHVwID0gaTkxNV9ocGRfaXJxX3NldHVwOw0KPiArCWVsc2UNCj4gKwkJZGV2X3ByaXYtPmRpc3Bs
YXkuaHBkX2lycV9zZXR1cCA9IGlsa19ocGRfaXJxX3NldHVwOw0KPiDCoH0NCj4gwqANCj4gDQo+
IA0KPiANCj4gwqAvKioNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
