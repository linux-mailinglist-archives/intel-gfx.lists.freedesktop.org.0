Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D4426147C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D996E87D;
	Tue,  8 Sep 2020 16:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064B36E88E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:24:00 +0000 (UTC)
IronPort-SDR: qO0amiK/GKclYoJBjZYOBZjfNFVGEIedKPr/cGIihCCNeVALzX3EGh2iAMkSq8/ZWy3iSH/PwH
 l0xGfrzCbRzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="145882061"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="145882061"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:24:00 -0700
IronPort-SDR: HeGPmVVQNnooOshRABMKr/7JydE/ZRAocD1P6P0Co+nKaFcTsaG+Uouxu1MYsD0hKXfuSt2bFC
 iUbPqUzn/P0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="448848869"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 08 Sep 2020 09:23:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:23:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:23:56 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:23:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [03/12] drm/i915: Add AUX_CH_{H, I} power domain handling
Thread-Index: AQHWhfmexaRQITLn2UCrO7NlAxVRcKlfYxuA
Date: Tue, 8 Sep 2020 16:23:56 +0000
Message-ID: <afe65c158182051530ad8a42227a51dade5a8ec0.camel@intel.com>
References: <20200630215601.28557-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <7B3AB0E16042684A8940441E6EB04A60@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [03/12] drm/i915: Add AUX_CH_{H,
 I} power domain handling
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBBVVggQ0ggSC9JIG5lZWQgdGhlaXIgcG93ZXIgZG9tYWlucyB0b28uDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDwNCj4gdmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNjY1YWE0MjgzZmI5Li44NzgzMWZkOWUxZTEgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBA
IC03MzE4LDYgKzczMTgsMTAgQEAgaW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAkJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0Zf
VEJUOw0KPiAgCQljYXNlIEFVWF9DSF9HOg0KPiAgCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhf
R19UQlQ7DQo+ICsJCWNhc2UgQVVYX0NIX0g6DQo+ICsJCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FV
WF9IX1RCVDsNCj4gKwkJY2FzZSBBVVhfQ0hfSToNCj4gKwkJCXJldHVybiBQT1dFUl9ET01BSU5f
QVVYX0lfVEJUOw0KPiAgCQlkZWZhdWx0Og0KPiAgCQkJTUlTU0lOR19DQVNFKGRpZ19wb3J0LT5h
dXhfY2gpOw0KPiAgCQkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfQ19UQlQ7DQo+IEBAIC03MzQ5
LDYgKzczNTMsMTAgQEAgaW50ZWxfbGVnYWN5X2F1eF90b19wb3dlcl9kb21haW4oZW51bSBhdXhf
Y2ggYXV4X2NoKQ0KPiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9GOw0KPiAgCWNhc2UgQVVY
X0NIX0c6DQo+ICAJCXJldHVybiBQT1dFUl9ET01BSU5fQVVYX0c7DQo+ICsJY2FzZSBBVVhfQ0hf
SDoNCj4gKwkJcmV0dXJuIFBPV0VSX0RPTUFJTl9BVVhfSDsNCj4gKwljYXNlIEFVWF9DSF9JOg0K
PiArCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9JOw0KPiAgCWRlZmF1bHQ6DQo+ICAJCU1JU1NJ
TkdfQ0FTRShhdXhfY2gpOw0KPiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX0FVWF9BOw0KPiANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
