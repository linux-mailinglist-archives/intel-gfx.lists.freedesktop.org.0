Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD5132B99A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 18:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDA26E9AE;
	Wed,  3 Mar 2021 17:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7096E9AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 17:51:11 +0000 (UTC)
IronPort-SDR: fyzVZYgyM/Ph6v9iqAJxLRkGdKRSNdDuMmXXSZpTRLsymVVcbpg2VLOJLgLazS5xFWQ3xpL6Sv
 V7PdEsXLNwZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="206938959"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="206938959"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 09:51:11 -0800
IronPort-SDR: 9yXX1SKOTmU0QNCjzfE7sjQJD9pjdLhCX+o7aZsedisIWDoD7q1gdcEEj0LH9B59l/ziaJIBUH
 KcY7bURXkmoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="445365690"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 03 Mar 2021 09:51:11 -0800
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 3 Mar 2021 09:51:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 3 Mar 2021 23:21:06 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Wed, 3 Mar 2021 09:51:04 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/display: Remove a redundant function
 argument from intel_psr_enable_source()
Thread-Index: AQHXEEwojHHnZyEYj0yn9qA3q5wBpapzEZsA
Date: Wed, 3 Mar 2021 17:51:04 +0000
Message-ID: <223c364bd151c99ca3fdf1b78555427e9ac2d14a.camel@intel.com>
References: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
 <20210303164201.31301-2-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210303164201.31301-2-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <A1B49E2CCAF8344993BB1933FC0982AB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Remove a redundant
 function argument from intel_psr_enable_source()
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

T24gV2VkLCAyMDIxLTAzLTAzIGF0IDE4OjQyICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IEl0IHJlbW92ZXMgaW50ZWxfY3J0Y19zdGF0ZSBmcm9tIGZ1bmN0aW9uIGFyZ3VtZW50IG9m
DQo+IGludGVsX3Bzcl9lbmFibGVfc291cmNlKCkgaW4gb3JkZXIgdG8gdXNlIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKCkNCj4gd2l0aG91dCBpbnRlbF9jcnRjX3N0YXRlIG9uIG90aGVyIHBzciBp
bnRlcm5hbCBmdW5jdGlvbnMuDQo+IEFuZCB3ZSBjYW4gZ2V0IGNwdV90cmFuY29kZXIgZnJvbSBp
bnRlbF9wc3IsIHRoZXJlZm9yZSB3ZSBkb24ndCBuZWVkIHRvDQo+IHBhc3MgaW50ZWxfY3J0Y19z
dGF0ZSB0byB0aGlzIGZ1bmN0aW9uLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVv
bmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKystLS0tDQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5NzY4MjY2NTMxNDMuLmVhOGY5
NTk4ZTZhMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC04OTYsMTEgKzg5NiwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfYWN0aXZhdGUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqAJaW50ZWxfZHAtPnBzci5hY3RpdmUgPSB0
cnVlOw0KPiDCoH0NCj4gwqANCj4gDQo+IA0KPiANCj4gLXN0YXRpYyB2b2lkIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IC0JCQkJICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqB7DQo+
IMKgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOw0KPiAtCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNw
dV90cmFuc2NvZGVyOw0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVs
X2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gwqAJdTMyIG1hc2s7DQo+IMKgDQo+IA0KPiANCj4gDQo+
IMKgCS8qIE9ubHkgSFNXIGFuZCBCRFcgaGF2ZSBQU1IgQVVYIHJlZ2lzdGVycyB0aGF0IG5lZWQg
dG8gYmUgc2V0dXAuIFNLTCsNCj4gQEAgLTEwMDcsNyArMTAwNiw3IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJ
CSAgICAgJmludGVsX2RwLT5wc3IudnNjKTsNCj4gwqAJaW50ZWxfd3JpdGVfZHBfdnNjX3NkcChl
bmNvZGVyLCBjcnRjX3N0YXRlLCAmaW50ZWxfZHAtPnBzci52c2MpOw0KPiDCoAlpbnRlbF9wc3Jf
ZW5hYmxlX3NpbmsoaW50ZWxfZHApOw0KPiAtCWludGVsX3Bzcl9lbmFibGVfc291cmNlKGludGVs
X2RwLCBjcnRjX3N0YXRlKTsNCj4gKwlpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9kcCk7
DQo+IMKgCWludGVsX2RwLT5wc3IuZW5hYmxlZCA9IHRydWU7DQo+IMKgDQo+IA0KPiANCj4gDQo+
IMKgCWludGVsX3Bzcl9hY3RpdmF0ZShpbnRlbF9kcCk7DQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
