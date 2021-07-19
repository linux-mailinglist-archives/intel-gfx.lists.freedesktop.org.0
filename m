Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9643CEAE7
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7D489CAA;
	Mon, 19 Jul 2021 18:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3F189CAA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:14:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="190695902"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="190695902"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 11:14:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="494250830"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jul 2021 11:14:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:14:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:14:00 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 11:14:00 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 08/50] drm/i915/xehp: Extra media engines
 - Part 3 (reset)
Thread-Index: AQHXeF6f4TGZnQ5DSECPFjfKYiQCp6tLGYMA
Date: Mon, 19 Jul 2021 18:13:58 +0000
Message-ID: <38d9d3a1d9f0212735d994fcc38fe225e971fd39.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-9-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-9-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <7955813185F81242B62242B5F6F8010B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/50] drm/i915/xehp: Extra media engines
 - Part 3 (reset)
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

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPg0KPiANCj4gWGVf
SFAgY2FuIGhhdmUgYSBsb3Qgb2YgZXh0cmEgbWVkaWEgZW5naW5lcy4gVGhpcyBwYXRjaCBhZGRz
IHRoZSByZXNldA0KPiBzdXBwb3J0IGZvciB0aGVtLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDYgKysrKysrDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgIHwgOCArKysrKysrKw0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMNCj4gaW5kZXggNzIyNTE2MzhkNGVhLi45NTg2NjEzZWUzOTkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYw0KPiBAQCAtNTE1LDggKzUxNSwxNCBA
QCBzdGF0aWMgaW50IGdlbjExX3Jlc2V0X2VuZ2luZXMoc3RydWN0IGludGVsX2d0ICpndCwNCj4g
IAkJW1ZDUzFdICA9IEdFTjExX0dSRE9NX01FRElBMiwNCj4gIAkJW1ZDUzJdICA9IEdFTjExX0dS
RE9NX01FRElBMywNCj4gIAkJW1ZDUzNdICA9IEdFTjExX0dSRE9NX01FRElBNCwNCj4gKwkJW1ZD
UzRdICA9IEdFTjExX0dSRE9NX01FRElBNSwNCj4gKwkJW1ZDUzVdICA9IEdFTjExX0dSRE9NX01F
RElBNiwNCj4gKwkJW1ZDUzZdICA9IEdFTjExX0dSRE9NX01FRElBNywNCj4gKwkJW1ZDUzddICA9
IEdFTjExX0dSRE9NX01FRElBOCwNCj4gIAkJW1ZFQ1MwXSA9IEdFTjExX0dSRE9NX1ZFQ1MsDQo+
ICAJCVtWRUNTMV0gPSBHRU4xMV9HUkRPTV9WRUNTMiwNCj4gKwkJW1ZFQ1MyXSA9IEdFTjExX0dS
RE9NX1ZFQ1MzLA0KPiArCQlbVkVDUzNdID0gR0VOMTFfR1JET01fVkVDUzQsDQo+ICAJfTsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7DQo+ICAJaW50ZWxfZW5naW5lX21hc2tf
dCB0bXA7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCBhZjhmMTRmZTQwMjYuLjFl
Y2E4OGFjNzA1NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0zOTUsMTAg
KzM5NSwxOCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3Jl
Z190IHJlZykNCj4gICNkZWZpbmUgIEdFTjExX0dSRE9NX01FRElBMgkJKDEgPDwgNikNCj4gICNk
ZWZpbmUgIEdFTjExX0dSRE9NX01FRElBMwkJKDEgPDwgNykNCj4gICNkZWZpbmUgIEdFTjExX0dS
RE9NX01FRElBNAkJKDEgPDwgOCkNCj4gKyNkZWZpbmUgIEdFTjExX0dSRE9NX01FRElBNQkJKDEg
PDwgOSkNCj4gKyNkZWZpbmUgIEdFTjExX0dSRE9NX01FRElBNgkJKDEgPDwgMTApDQo+ICsjZGVm
aW5lICBHRU4xMV9HUkRPTV9NRURJQTcJCSgxIDw8IDExKQ0KPiArI2RlZmluZSAgR0VOMTFfR1JE
T01fTUVESUE4CQkoMSA8PCAxMikNCj4gICNkZWZpbmUgIEdFTjExX0dSRE9NX1ZFQ1MJCSgxIDw8
IDEzKQ0KPiAgI2RlZmluZSAgR0VOMTFfR1JET01fVkVDUzIJCSgxIDw8IDE0KQ0KPiArI2RlZmlu
ZSAgR0VOMTFfR1JET01fVkVDUzMJCSgxIDw8IDE1KQ0KPiArI2RlZmluZSAgR0VOMTFfR1JET01f
VkVDUzQJCSgxIDw8IDE2KQ0KPiAgI2RlZmluZSAgR0VOMTFfR1JET01fU0ZDMAkJKDEgPDwgMTcp
DQo+ICAjZGVmaW5lICBHRU4xMV9HUkRPTV9TRkMxCQkoMSA8PCAxOCkNCj4gKyNkZWZpbmUgIEdF
TjExX0dSRE9NX1NGQzIJCSgxIDw8IDE5KQ0KPiArI2RlZmluZSAgR0VOMTFfR1JET01fU0ZDMwkJ
KDEgPDwgMjApDQo+ICANCj4gICNkZWZpbmUgIEdFTjExX1ZDU19TRkNfUkVTRVRfQklUKGluc3Rh
bmNlKQkoR0VOMTFfR1JET01fU0ZDMCA8PCAoKGluc3RhbmNlKSA+PiAxKSkNCj4gICNkZWZpbmUg
IEdFTjExX1ZFQ1NfU0ZDX1JFU0VUX0JJVChpbnN0YW5jZSkJKEdFTjExX0dSRE9NX1NGQzAgPDwg
KGluc3RhbmNlKSkNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
