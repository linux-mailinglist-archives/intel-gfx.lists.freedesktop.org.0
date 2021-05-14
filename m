Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D251F380F07
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749DD6F3C0;
	Fri, 14 May 2021 17:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A346F3C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:33:24 +0000 (UTC)
IronPort-SDR: uIkqNJmL5c5H7tJV45WXYk32dgS/ynaThZl8fBT3fgU21rOWXhf1Ri8QaWIj0xFSFuF+OSJjJu
 WvXFfEmVrjMA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="179809921"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="179809921"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:33:22 -0700
IronPort-SDR: rOnK0v5yXb2GEhyPjdwe65j+3poMMkc44TPu9S3F2RSMsDwkkADL3M9x+W8H1zLVAYQUGt6x3a
 CoUpL07gqmzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="470932727"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2021 10:33:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 10:33:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 10:33:21 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:33:21 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: Extract
 intel_hdmi_bpc_possible()
Thread-Index: AQHXRn+rehhq1J+5K06eeAtW/IrzSarjt7IA
Date: Fri, 14 May 2021 17:33:20 +0000
Message-ID: <aab4c6627af7d4c05901b2723217ef82bb8c8fcb.camel@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20210511160532.21446-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <80B75D58A02CCF44B05B7E24DB6D20B3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Extract
 intel_hdmi_bpc_possible()
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

T24gVHVlLCAyMDIxLTA1LTExIGF0IDE5OjA1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRXh0cmFjdCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZSgpIGZyb20gaW50ZWxfaGRtaV9k
ZWVwX2NvbG9yX3Bvc3NpYmxlKCkNCj4gc28gdGhhdCB3ZSBjYW4gcmV1c2UgaXQgZm9yIG1vZGUg
dmFsaWRhdGlvbi4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBDYzogV2VybmVyIFNlbWJhY2ggPHdzZUB0dXhlZG9j
b21wdXRlcnMuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jIHwgNDYgKysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGluZGV4IDkxYjAzZmUyMTM4
Ny4uM2RlYzMzMDdjMmI1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYw0KPiBAQCAtMTg2Miw2ICsxODYyLDMxIEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRt
aV9wb3J0X2Nsb2NrKGludCBjbG9jaywgaW50IGJwYykNCj4gIAlyZXR1cm4gY2xvY2sgKiBicGMg
LyA4Ow0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgYm9vbCBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiArCQkJCSAgICBpbnQgYnBjLCBib29s
IGhhc19oZG1pX3NpbmssIGJvb2wgeWNiY3I0MjBfb3V0cHV0KQ0KPiArew0KPiArCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvOw0K
PiArCWNvbnN0IHN0cnVjdCBkcm1faGRtaV9pbmZvICpoZG1pID0gJmluZm8tPmhkbWk7DQo+ICsN
Cj4gKwlzd2l0Y2ggKGJwYykgew0KPiArCWNhc2UgMTI6DQo+ICsJCWlmICh5Y2JjcjQyMF9vdXRw
dXQpDQo+ICsJCQlyZXR1cm4gaGRtaS0+eTQyMF9kY19tb2RlcyAmIERSTV9FRElEX1lDQkNSNDIw
X0RDXzM2Ow0KPiArCQllbHNlDQo+ICsJCQlyZXR1cm4gaW5mby0+ZWRpZF9oZG1pX2RjX21vZGVz
ICYgRFJNX0VESURfSERNSV9EQ18zNjsNCj4gKwljYXNlIDEwOg0KPiArCQlpZiAoeWNiY3I0MjBf
b3V0cHV0KQ0KPiArCQkJcmV0dXJuIGhkbWktPnk0MjBfZGNfbW9kZXMgJiBEUk1fRURJRF9ZQ0JD
UjQyMF9EQ18zMDsNCj4gKwkJZWxzZQ0KPiArCQkJcmV0dXJuIGluZm8tPmVkaWRfaGRtaV9kY19t
b2RlcyAmIERSTV9FRElEX0hETUlfRENfMzA7DQo+ICsJY2FzZSA4Og0KPiArCQlyZXR1cm4gdHJ1
ZTsNCj4gKwlkZWZhdWx0Og0KPiArCQlNSVNTSU5HX0NBU0UoYnBjKTsNCj4gKwkJcmV0dXJuIGZh
bHNlOw0KPiArCX0NCj4gK30NCj4gKw0KPiAgc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzDQo+
ICBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoc3RydWN0IGludGVsX2hkbWkgKmhkbWksIGlu
dCBjbG9jaywgYm9vbCBoYXNfaGRtaV9zaW5rKQ0KPiAgew0KPiBAQCAtMTk1MSwyOCArMTk3Niwx
MSBAQCBib29sIGludGVsX2hkbWlfZGVlcF9jb2xvcl9wb3NzaWJsZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgDQo+ICAJ
Zm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yLCBjb25uZWN0
b3Jfc3RhdGUsIGkpIHsNCj4gLQkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8g
PSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87DQo+IC0NCj4gIAkJaWYgKGNvbm5lY3Rvcl9zdGF0
ZS0+Y3J0YyAhPSBjcnRjX3N0YXRlLT51YXBpLmNydGMpDQo+ICAJCQljb250aW51ZTsNCj4gIA0K
PiAtCQlpZiAoeWNiY3I0MjBfb3V0cHV0KSB7DQo+IC0JCQljb25zdCBzdHJ1Y3QgZHJtX2hkbWlf
aW5mbyAqaGRtaSA9ICZpbmZvLT5oZG1pOw0KPiAtDQo+IC0JCQlpZiAoYnBjID09IDEyICYmICEo
aGRtaS0+eTQyMF9kY19tb2RlcyAmDQo+IC0JCQkJCSAgIERSTV9FRElEX1lDQkNSNDIwX0RDXzM2
KSkNCj4gLQkJCQlyZXR1cm4gZmFsc2U7DQo+IC0JCQllbHNlIGlmIChicGMgPT0gMTAgJiYgISho
ZG1pLT55NDIwX2RjX21vZGVzICYNCj4gLQkJCQkJCURSTV9FRElEX1lDQkNSNDIwX0RDXzMwKSkN
Cj4gLQkJCQlyZXR1cm4gZmFsc2U7DQo+IC0JCX0gZWxzZSB7DQo+IC0JCQlpZiAoYnBjID09IDEy
ICYmICEoaW5mby0+ZWRpZF9oZG1pX2RjX21vZGVzICYNCj4gLQkJCQkJICAgRFJNX0VESURfSERN
SV9EQ18zNikpDQo+IC0JCQkJcmV0dXJuIGZhbHNlOw0KPiAtCQkJZWxzZSBpZiAoYnBjID09IDEw
ICYmICEoaW5mby0+ZWRpZF9oZG1pX2RjX21vZGVzICYNCj4gLQkJCQkJCURSTV9FRElEX0hETUlf
RENfMzApKQ0KPiAtCQkJCXJldHVybiBmYWxzZTsNCj4gLQkJfQ0KPiArCQlpZiAoIWludGVsX2hk
bWlfYnBjX3Bvc3NpYmxlKGNvbm5lY3RvciwgYnBjLCBoYXNfaGRtaV9zaW5rLCB5Y2JjcjQyMF9v
dXRwdXQpKQ0KPiArCQkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gIA0KPiAgCXJldHVybiB0cnVl
Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
