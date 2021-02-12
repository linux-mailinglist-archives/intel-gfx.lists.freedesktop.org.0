Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B26531A595
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 20:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5966E09F;
	Fri, 12 Feb 2021 19:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A076E09F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 19:44:26 +0000 (UTC)
IronPort-SDR: LO3+cYOoEqNjZzZIF7LUAU1Z1h6qgCMtCH9ZhSOjP5TKAAUlUiSdjdgFn0M8MY3dGi94LHwbej
 Tc81Ix4WWtIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="169596881"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="169596881"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 11:44:24 -0800
IronPort-SDR: 6sYlhMKX3UZHbmhcty3nPGlxJpw1HTZs6ovL2X4j1i/E5oqUj0gXZtBlK0gQ8z49s9LwT0XsZy
 1UdZur5HGofA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="423315908"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 12 Feb 2021 11:44:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 11:44:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 11:44:23 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 12 Feb 2021 11:44:23 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
Thread-Index: AQHXAWvFgtFzeGCzuUqI9w5witXg7KpVXxCAgAATkYA=
Date: Fri, 12 Feb 2021 19:44:22 +0000
Message-ID: <463536ed55ca9d96c96e48efe60e99e2dad8cb07.camel@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <20210212182201.155043-3-jose.souza@intel.com> <YCbKi3rpV3pWwkHw@intel.com>
In-Reply-To: <YCbKi3rpV3pWwkHw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <46EA9F85E32902419ED0A4A6874C8328@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAyLTEyIGF0IDIwOjM1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRmViIDEyLCAyMDIxIGF0IDEwOjIyOjAxQU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gRm91bmQgYSBzeXN0ZW0gd2VyZSBmaXJtd2FyZS9CSU9T
IGxlZnQgdGhlIHBsYW5lX3Jlc19iIGFuZCBwbGFuZV9yZXNfbA0KPiA+IHNldCB3aXRoIG5vbi16
ZXJvIHZhbHVlcyBmb3IgZGlzYWJsZSBwbGFuZXMuDQo+IA0KPiBJdCBwcmV0dHkgbXVjaCBoYXBw
ZW5zIGFsd2F5cyBzaW5jZSB0aGUgcmVzZXQgdmFsdWUgaXMgbm90IHplcm8uDQo+IElJUkMgd2Ug
bWFkZSB0aGUgc3RhdGUgY2hja2VyIHBlZGFudGljIGVub3VnaCB0byBjb21wbGFpbiBhYm91dA0K
PiB0aGF0LCBzbyB3ZSBuZWVkIHRvIGNsZWFuIGl0IHVwLg0KDQpBcmUgeW91IHBsYW5uaW5nIHRv
IGZpeCBpdCBzb29uPw0KSWYgbm90IEkgY2FuIGRvIGl0IGJ1dCB3aWxsIG5lZWQgYSBjb3VwbGUg
bW9yZSBvZiBoaW50cyBvZiB3aGF0IHlvdQ0KdGhpbmtpbmcgdG8gZG8uDQoNCldlIHdpbGwgbmVl
ZCB0aGlzIGZpeGVkIHNvb24gb3RoZXJ3aXNlIHRoaXMgc3lzdGVtIHdpbGwgYmxvY2sgQ0kNCnRl
c3RpbmcgaW4gdGhpcyBwbGF0Zm9ybS4NCg0KPiANCj4gPiBBcyB0aGUgcGxhbmVzIGFyZSBkaXNh
YmxlZCBpOTE1IHdpbGwgbm90IGV2ZW4gdHJ5IHRvIHNhbml0aXplIGl0IHNvDQo+ID4gaGVyZSBy
ZXR1cm5pbmcgZWFybGllciBpZiBib3RoIHNrbF93bV9sZXZlbHMgYmVpbmcgY29tcGFyZWQgYXJl
DQo+ID4gZGlzYWJsZWQsIGlmIHRoYXQgaXMgdHJ1ZSBubyBuZWVkIHRvIGNoZWNrIHRoZSBvdGhl
ciBmaWVsZHMgYXMgSFcNCj4gPiB3aWxsIGlnbm9yZSBpdC4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIgKysNCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYw0KPiA+IGluZGV4IDhjYzY3ZjljNGU1OC4uYzYzMGRjMTBjMzRiIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gQEAgLTU2MzMsNiArNTYzMyw4IEBAIHZvaWQgc2ts
X3dyaXRlX2N1cnNvcl93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiA+ICBib29sIHNr
bF93bV9sZXZlbF9lcXVhbHMoY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqbDEsDQo+ID4gIAkJ
CSBjb25zdCBzdHJ1Y3Qgc2tsX3dtX2xldmVsICpsMikNCj4gPiAgew0KPiA+ICsJaWYgKGwxLT5w
bGFuZV9lbiA9PSBmYWxzZSAmJiBsMi0+cGxhbmVfZW4gPT0gZmFsc2UpDQo+ID4gKwkJcmV0dXJu
IHRydWU7DQo+ID4gIAlyZXR1cm4gbDEtPnBsYW5lX2VuID09IGwyLT5wbGFuZV9lbiAmJg0KPiA+
ICAJCWwxLT5pZ25vcmVfbGluZXMgPT0gbDItPmlnbm9yZV9saW5lcyAmJg0KPiA+ICAJCWwxLT5w
bGFuZV9yZXNfbCA9PSBsMi0+cGxhbmVfcmVzX2wgJiYNCj4gPiAtLSANCj4gPiAyLjMwLjENCj4g
PiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
