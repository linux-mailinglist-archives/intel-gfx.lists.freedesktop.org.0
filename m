Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00901279592
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Sep 2020 02:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0556ED8D;
	Sat, 26 Sep 2020 00:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBF86ED8D
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Sep 2020 00:28:42 +0000 (UTC)
IronPort-SDR: wqWKOR14hrBgacQjfRWdWonnG5Bk2SBeatBGr0N7xbaQBQLATGiGbvtCeuX1o5XGyi8u6dFfY/
 d+gF3qYP8wwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="149444595"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="149444595"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 17:28:41 -0700
IronPort-SDR: 2BYTHTBlGnojRvgy5X0JJM+pc/ne5Wpv2NSfg6VlJGjFMn3HWAuIety5qVmGtGV2htkMT8WQnO
 2Qxc4CreDuWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="383728933"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 25 Sep 2020 17:28:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Sep 2020 17:28:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Sep 2020 17:28:40 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Fri, 25 Sep 2020 17:28:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Make intel_{enable,
 disable}_sagv() static
Thread-Index: AQHWkzXqMFG337GKsU+GDf+2p73Re6l6h8mA
Date: Sat, 26 Sep 2020 00:28:40 +0000
Message-ID: <7ccb8fd1f477adebb329578dbd0fcde61de9a80c.camel@intel.com>
References: <20200925121749.708-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200925121749.708-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <43456828CEF358499D036791FD6E7E5E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Make intel_{enable,
 disable}_sagv() static
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
bQ0KPiA+DQo+IA0KPiBpbnRlbF97ZW5hYmxlLGRpc2FibGV9X3NhZ3YoKSBhcmUgbm8gbG9uZ2Vy
IG5lZWRlZCBvdXRzaWRlIHRoZQ0KPiBjb21waWxhdGlvbiB1bml0LiBNYWtlIHRoZW0gc3RhdGlj
Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8DQo+IHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tDQo+ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIHwgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5oIHwgMiAtLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gaW5kZXggMzRlMGQyMmQ0NTZi
Li44Y2Q2MjQwMmQ1OTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBAQCAtMzcw
Niw3ICszNzA2LDcgQEAgc2tsX3NldHVwX3NhZ3ZfYmxvY2tfdGltZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAgKiAgLSBBbGwgcGxhbmVzIGNhbiBlbmFibGUgd2F0ZXJt
YXJrcyBmb3IgbGF0ZW5jaWVzID49IFNBR1YgZW5naW5lIGJsb2NrIHRpbWUNCj4gICAqICAtIFdl
J3JlIG5vdCB1c2luZyBhbiBpbnRlcmxhY2VkIGRpc3BsYXkgY29uZmlndXJhdGlvbg0KPiAgICov
DQo+IC1pbnQNCj4gK3N0YXRpYyBpbnQNCj4gIGludGVsX2VuYWJsZV9zYWd2KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIHsNCj4gIAlpbnQgcmV0Ow0KPiBAQCAtMzc0MCw3
ICszNzQwLDcgQEAgaW50ZWxfZW5hYmxlX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQ0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAgDQo+IC1pbnQNCj4gK3N0YXRpYyBpbnQN
Cj4gIGludGVsX2Rpc2FibGVfc2FndihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
DQo+ICB7DQo+ICAJaW50IHJldDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oDQo+IGluZGV4IGEy
NDczNTk0YzJkYi4uZWFiODNlMjUxZGQ1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgN
Cj4gQEAgLTQ5LDggKzQ5LDYgQEAgdm9pZCBnNHhfd21fc2FuaXRpemUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsNCj4gIHZvaWQgdmx2X3dtX3Nhbml0aXplKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdik7DQo+ICBib29sIGludGVsX2Nhbl9lbmFibGVfc2Fndihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJCQkgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlKTsNCj4gLWludCBpbnRlbF9lbmFibGVfc2FndihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOw0KPiAtaW50IGludGVsX2Rpc2FibGVfc2Fn
dihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOw0KPiAgdm9pZCBpbnRlbF9zYWd2
X3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiAg
dm9pZCBpbnRlbF9zYWd2X3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKTsNCj4gIGJvb2wgc2tsX3dtX2xldmVsX2VxdWFscyhjb25zdCBzdHJ1Y3Qgc2ts
X3dtX2xldmVsICpsMSwNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
