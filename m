Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AA5330EFE
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44D589565;
	Mon,  8 Mar 2021 13:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA83089565
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:17:51 +0000 (UTC)
IronPort-SDR: 1OK7iSkxU6/SCYDLe05OrbITaR/a3Mb+yFixk0tmRMz5TiyHFcsrmdKUSzZzABVNd5milklSe+
 xU6YRAYdQP7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249403681"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="249403681"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:17:50 -0800
IronPort-SDR: /pIeEJxc9BF4h+UA5I58IOgDH8ZLrw0oLYJ820ydA3Mi1ILZbIm3Ia3mt3Bl09i0KDRmixJM/V
 +1FhLtNbBHuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="588045752"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga005.jf.intel.com with ESMTP; 08 Mar 2021 05:17:49 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Mar 2021 13:17:49 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Mon, 8 Mar 2021 13:17:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/6] drm/i915: Extend
 icl_sanitize_encoder_pll_mapping() to all DDI platforms
Thread-Index: AQHXCrtUWpJwAbA4SE2Ywup3bCchz6p6JURQ
Date: Mon, 8 Mar 2021 13:17:48 +0000
Message-ID: <d9e5c05db72a43fca5d6960e62578a5d@intel.com>
References: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
 <20210224144214.24803-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20210224144214.24803-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Extend
 icl_sanitize_encoder_pll_mapping() to all DDI platforms
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAyNCwgMjAyMSA0OjQyIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCA2LzZdIGRybS9pOTE1OiBFeHRlbmQNCj4gaWNsX3Nhbml0aXplX2VuY29kZXJfcGxs
X21hcHBpbmcoKSB0byBhbGwgRERJIHBsYXRmb3Jtcw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IE5vdyB0aGF0IGFsbCB0
aGUgZW5jb2RlciBjbG9jayBzdHVmZiBpcyB1bmlmb3JtbHkgYWJzdHJhY3RlZCBmb3IgYWxsIGhz
dysNCj4gcGxhdGZvcm1zLCBsZXQncyBleHRlbmQgaWNsX3Nhbml0aXplX2VuY29kZXJfcGxsX21h
cHBpbmcoKQ0KPiB0byBjb3ZlciBhbGwgb2YgdGhlbS4NCj4gDQo+IE5vdCBzdXJlIHRoZXJlIGlz
IGEgcGFydGljdWxhciBiZW5lZml0IGluIGRvaW5nIHNvLCBidXQgbGVzcyBzcGVjaWFsIGNhc2Vz
IGFsd2F5cw0KPiBtYWtlcyBtZSBoYXBweS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAyICstDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5oICAgICB8IDIgKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tDQo+ICAzIGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCA3ZDQ3N2M0MDA3YzcuLmRk
MjIwM2Y4NzA3OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+IEBAIC0yMTM0LDcgKzIxMzQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZGlzYWJs
ZV9jbG9jayhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlcikNCj4gIAkJZW5jb2Rlci0+
ZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsNCj4gIH0NCj4gDQo+IC12b2lkIGljbF9zYW5pdGl6ZV9l
bmNvZGVyX3BsbF9tYXBwaW5nKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiArdm9p
ZCBpbnRlbF9kZGlfc2FuaXRpemVfZW5jb2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5j
b2Rlcg0KPiArKmVuY29kZXIpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gIAl1MzIgcG9ydF9tYXNrOw0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmgNCj4gaW5kZXggOTljZWJi
ZTZiNTg2Li41OWM2YjAxZDQxOTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuaA0KPiBAQCAtNjYsNiArNjYsNiBAQCB1MzIgZGRpX3NpZ25hbF9sZXZlbHMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgIGludA0KPiBpbnRlbF9kZGlfdG9nZ2xlX2hkY3Bf
Yml0cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciwNCj4gIAkJCSAgICAgICBl
bnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIsDQo+ICAJCQkgICAgICAgYm9vbCBlbmFibGUs
IHUzMiBoZGNwX21hc2spOw0KPiAtdm9pZCBpY2xfc2FuaXRpemVfZW5jb2Rlcl9wbGxfbWFwcGlu
ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7DQo+ICt2b2lkIGludGVsX2RkaV9zYW5p
dGl6ZV9lbmNvZGVyX3BsbF9tYXBwaW5nKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICsqZW5jb2Rl
cik7DQo+IA0KPiAgI2VuZGlmIC8qIF9fSU5URUxfRERJX0hfXyAqLw0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA4YjVjYjgxNGI2
NzkuLjg3ZGI1MzMxMTc2YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTEzMTQ0LDggKzEzMTQ0LDggQEAgc3RhdGljIHZvaWQg
aW50ZWxfc2FuaXRpemVfZW5jb2RlcihzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlcikN
Cj4gIAkvKiBub3RpZnkgb3ByZWdpb24gb2YgdGhlIHNhbml0aXplZCBlbmNvZGVyIHN0YXRlICov
DQo+ICAJaW50ZWxfb3ByZWdpb25fbm90aWZ5X2VuY29kZXIoZW5jb2RlciwgY29ubmVjdG9yICYm
DQo+IGhhc19hY3RpdmVfY3J0Yyk7DQo+IA0KPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExKQ0KPiAtCQlpY2xfc2FuaXRpemVfZW5jb2Rlcl9wbGxfbWFwcGluZyhlbmNvZGVyKTsNCj4g
KwlpZiAoSEFTX0RESShkZXZfcHJpdikpDQo+ICsJCWludGVsX2RkaV9zYW5pdGl6ZV9lbmNvZGVy
X3BsbF9tYXBwaW5nKGVuY29kZXIpOw0KPiAgfQ0KPiANCj4gIC8qIEZJWE1FIHJlYWQgb3V0IGZ1
bGwgcGxhbmUgc3RhdGUgZm9yIGFsbCBwbGFuZXMgKi8NCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
