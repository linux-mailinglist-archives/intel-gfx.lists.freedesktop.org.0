Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91A279590
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Sep 2020 02:28:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5503F6ED88;
	Sat, 26 Sep 2020 00:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49CAB6ED88
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Sep 2020 00:28:27 +0000 (UTC)
IronPort-SDR: 7Cql/J/yUGJR7O0LFxSazQnSVdXvpruKyITrJdEqH5/si5KwRvb11GeTuI+L/ENwDdcWRm+rrW
 sLNnn1kVv1nQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="179817403"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="179817403"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 17:28:26 -0700
IronPort-SDR: rWwH49e7YyMrG64Ta1JDFRBltaPET9o8Cf9aM/r+5ZFbwtDeUJEPJ0bnYYvucbyjMXz7c5+rkm
 Ypkqi10A4XjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="383728891"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 25 Sep 2020 17:28:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Sep 2020 17:28:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Sep 2020 17:28:26 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Fri, 25 Sep 2020 17:28:26 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Don't hide the
 intel_crtc_atomic_check() call
Thread-Index: AQHWkzXs2DtUNM7c60yGBGJJGbuyI6l6h7iA
Date: Sat, 26 Sep 2020 00:28:25 +0000
Message-ID: <08af9a5877d1bdc7f8270743440c6d9785c75273.camel@intel.com>
References: <20200925121749.708-1-ville.syrjala@linux.intel.com>
 <20200925121749.708-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200925121749.708-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <E07C67ED8273B340B5813B45ADDA7DFD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't hide the
 intel_crtc_atomic_check() call
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

T24gRnJpLCAyMDIwLTA5LTI1IGF0IDE1OjE3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBNb3ZlIHRoZSBpbnRlbF9jcnRjX2F0b21pY19jaGVjaygpIGNhbGwgb3V0
IGZyb20gdGhlIHZhcmlhYmxlDQo+IGRlY2xhcmF0aW9ucyB0byBhIHBsYWNlIHdoZXJlIHdlIGNh
biBhY3R1YWxseSBzZWUgaXQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDwNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKystDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA1
YTlkOTMzZTQyNWEuLjExODYyZGUzZDc3MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTE0ODQ0LDggKzE0ODQ0LDEwIEBAIHN0
YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX2NydGNzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQ0KPiAgCWludCBpOw0KPiAgDQo+ICAJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNf
aW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsNCj4gLQkJaW50IHJldCA9IGlu
dGVsX2NydGNfYXRvbWljX2NoZWNrKHN0YXRlLCBjcnRjKTsNCj4gIAkJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gKwkJaW50IHJldDsN
Cj4gKw0KPiArCQlyZXQgPSBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdGF0ZSwgY3J0Yyk7DQo+
ICAJCWlmIChyZXQpIHsNCj4gIAkJCWRybV9kYmdfYXRvbWljKCZpOTE1LT5kcm0sDQo+ICAJCQkJ
ICAgICAgICJbQ1JUQzolZDolc10gYXRvbWljIGRyaXZlciBjaGVjayBmYWlsZWRcbiIsDQo+IA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
