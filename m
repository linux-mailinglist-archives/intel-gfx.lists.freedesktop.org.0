Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E99493CBCCD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4A56E9D2;
	Fri, 16 Jul 2021 19:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BA26E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:40:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208965951"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="208965951"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="631156899"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2021 12:40:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:40:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:40:57 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 12:40:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 36/50] drm/i915/dg2: Setup display outputs
Thread-Index: AQHXeF6kyfolJ1aEWku032wtU1s29KtGeswA
Date: Fri, 16 Jul 2021 19:40:57 +0000
Message-ID: <f4c00830e717f18723e8d3ef18ba14ac86ede63b.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-37-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-37-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <3D7BFE28FE25A445BFBD1CA60AD264DD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 36/50] drm/i915/dg2: Setup display outputs
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

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBE
RzIgaGFzIG91dHB1dHMgb24gRERJIEEtRCBhdHRhY2hlZCB0byB3aGF0IHRoZSBic3BlYyBkaWFn
cmFtIHNob3dzIGFzDQo+ICJDb21ibyBQSFkgQS1ELiIgIE5vdGUgdGhhdCBkZXNwaXRlIGJlaW5n
IGxhYmVsbGVkICJjb21ibyIgdGhlIFBIWXMgb24NCj4gdGhlc2Ugb3V0cHV0cyBhcmUgU3lub3Bz
eXMgUEhZcyByYXRoZXIgdGhhbiB0cmFkaXRpb25hbCBJbnRlbCBjb21ibyBQSFkNCj4gdGVjaG5v
bG9neS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPg0KDQo+IA0KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgNyArKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA0NWRjNThkZWRmNTcuLjI4NzJiOWI3N2QxNSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAg
LTExMzI5LDcgKzExMzI5LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX3NldHVwX291dHB1dHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCWlmICghSEFTX0RJU1BMQVkoZGV2
X3ByaXYpKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gLQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpKSB7DQo+ICsJaWYgKElTX0RHMihkZXZfcHJpdikpIHsNCj4gKwkJaW50ZWxfZGRpX2luaXQo
ZGV2X3ByaXYsIFBPUlRfQSk7DQo+ICsJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0Ip
Ow0KPiArCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9DKTsNCj4gKwkJaW50ZWxfZGRp
X2luaXQoZGV2X3ByaXYsIFBPUlRfRF9YRUxQRCk7DQo+ICsJfSBlbHNlIGlmIChJU19BTERFUkxB
S0VfUChkZXZfcHJpdikpIHsNCj4gIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7
DQo+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOw0KPiAgCQlpbnRlbF9kZGlf
aW5pdChkZXZfcHJpdiwgUE9SVF9UQzEpOw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
