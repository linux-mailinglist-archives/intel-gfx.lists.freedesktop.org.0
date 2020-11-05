Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309452A830D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DF46EDA6;
	Thu,  5 Nov 2020 16:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45AE26EDA6
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 16:07:50 +0000 (UTC)
IronPort-SDR: pEC0LkTDh8D2cVhFG75Yf4qqiw3+1sKLqSCmB+JCrruJ2U9KazTO/eQXxJ5uIKsr/jg106wFb+
 6GuAnohbnEcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="148687734"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="148687734"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:07:49 -0800
IronPort-SDR: ghYcKIUa5pp1VUC8DX6XrwXniuG2lJ112WsBbjDgjLm3T14VQGP9uhh7tVNJHf8xfJ78QH3JJR
 o+Rxr8PH/Yzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="529471920"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 05 Nov 2020 08:07:49 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 08:07:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Nov 2020 21:37:45 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Thu, 5 Nov 2020 08:07:43 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
Thread-Index: AQHWst/Ov/Zo+jvH20qTW9gpW/9sL6m6O+iA
Date: Thu, 5 Nov 2020 16:07:43 +0000
Message-ID: <e878e9da4dc6ff8cd139d661ac5ba7d2469f7745.camel@intel.com>
References: <20201104195604.3334-1-uma.shankar@intel.com>
 <20201104195604.3334-2-uma.shankar@intel.com>
In-Reply-To: <20201104195604.3334-2-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <20F6BB09550F924DB380F3C68993662A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/tgl: Disable FBC with
 PSR2
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

T24gVGh1LCAyMDIwLTExLTA1IGF0IDAxOjI2ICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4g
VGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVuYWJsZQ0K
PiBGQkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRpb24gZnJvbSBoYXJkd2FyZSBpcyB0
bw0KPiBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQuDQoNCkRvIHlvdSBoYXZlIGFueSBy
ZWZlcmVuY2VzIHRvIHRoaXM/IEhTRD8gQlNwZWM/DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2ICsrKysrKw0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYw0KPiBpbmRleCBhNWIwNzI4MTZhN2IuLjMyYzQxMTQxNDkwOCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC03OTksNiArNzk5
LDEyIEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpDQo+IMKgCXN0cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOw0K
PiDCoAlzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlICpjYWNoZSA9ICZmYmMtPnN0YXRlX2Nh
Y2hlOw0KPiDCoA0KPiANCj4gDQo+IA0KPiArCWlmIChkZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9z
dXBwb3J0ICYmDQo+ICsJICAgIElTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsNCj4gKwkJZmJjLT5u
b19mYmNfcmVhc29uID0gIm5vdCBzdXBwb3J0ZWQgd2l0aCBQU1IyIjsNCj4gKwkJcmV0dXJuIGZh
bHNlOw0KPiArCX0NCj4gKw0KPiDCoAlpZiAoIWludGVsX2ZiY19jYW5fZW5hYmxlKGRldl9wcml2
KSkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gDQo+IA0KPiANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
