Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBBB349B5F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E716E0C6;
	Thu, 25 Mar 2021 21:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 777A46E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:04:16 +0000 (UTC)
IronPort-SDR: Yr5U/NpP1cOK6BW2s4Eyhzly3WIXwWKsV2v4jG429iTpZx6EUfRG3fJYAfWXttmycReC5zobVV
 LIAbuPZ8y7lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="170997694"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="170997694"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:04:16 -0700
IronPort-SDR: 6w0ksp7O/AjPyb25ztVf30U/B8c/DVAL5ydo4GjKxf0ud/phLCKtnpi8umsbzXb/flisBRjO3o
 tLWTVLFANVpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="593922576"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 25 Mar 2021 14:04:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 14:04:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 14:04:15 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 25 Mar 2021 14:04:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "wanjiabing@vivo.com" <wanjiabing@vivo.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drivers: gpu: drm: Remove repeated declaration
Thread-Index: AQHXITPz8OiRDrIa4USzQqOC0HykgaqVqGQA
Date: Thu, 25 Mar 2021 21:04:14 +0000
Message-ID: <cf2b00cb079d50e3f8e6bcfd6fea6d1e0d9b5d53.camel@intel.com>
References: <20210325050059.848207-1-wanjiabing@vivo.com>
In-Reply-To: <20210325050059.848207-1-wanjiabing@vivo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <E9931EDB29BA3944B98A7FB19351DD03@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drivers: gpu: drm: Remove repeated
 declaration
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
Cc: "kael_w@yeah.net" <kael_w@yeah.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNoYW5nZXMgbG9va3MgZ29vZCBidXQgY2FuIHlvdSByZXNlbmQgY2hhbmdpbmcgdGhlIGNv
bW1pdCBtZXNzYWdlIHRvOiAiZHJtL2k5MTU6IFJlbW92ZSByZXBlYXRlZCBkZWNsYXJhdGlvbiI/
DQpUbyBiZXR0ZXIgbWF0Y2ggd2l0aCBpOTE1IHBhdGNoZXMuDQoNCldpdGggdGhpcyBjaGFuZ2Ug
eW91IGNhbiBhZGQNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KDQpPbiBUaHUsIDIwMjEtMDMtMjUgYXQgMTM6MDAgKzA4MDAsIFdh
biBKaWFiaW5nIHdyb3RlOg0KPiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSwgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgYW5kDQo+IHN0cnVjdCBpbnRlbF9jcnRjIGhhdmUgYmVlbiBkZWNsYXJlZCBi
ZWZvcmUuIA0KPiBSZW1vdmUgdGhlIGR1cGxpY2F0ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFdh
biBKaWFiaW5nIDx3YW5qaWFiaW5nQHZpdm8uY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5oICAgICB8IDEgLQ0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMSAtDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaCAgICAgfCAxIC0NCj4gwqAzIGZpbGVzIGNoYW5nZWQs
IDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jcnQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0LmgNCj4gaW5kZXggMWIzZmJhMzU5ZWZjLi42YzVjNDQ2MDBjYmQgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuaA0KPiBAQCAtMTEsNyArMTEsNiBAQA0K
PiDCoGVudW0gcGlwZTsNCj4gwqBzdHJ1Y3QgZHJtX2VuY29kZXI7DQo+IMKgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGU7DQo+IC1zdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gwqANCj4gDQo+IMKg
Ym9vbCBpbnRlbF9jcnRfcG9ydF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gwqAJCQkgICAgaTkxNV9yZWdfdCBhZHBhX3JlZywgZW51bSBwaXBlICpwaXBlKTsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gaW5k
ZXggNzZmOGE4MDViMGEzLi4yOWNiNmQ4NGVkNzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+IEBAIC00OCw3ICs0OCw2IEBAIHN0cnVj
dCBpOTE1X2dndHRfdmlldzsNCj4gwqBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOw0KPiDCoHN0
cnVjdCBpbnRlbF9jcnRjOw0KPiDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiAtc3RydWN0
IGludGVsX2NydGNfc3RhdGU7DQo+IMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydDsNCj4gwqBz
dHJ1Y3QgaW50ZWxfZHA7DQo+IMKgc3RydWN0IGludGVsX2VuY29kZXI7DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaA0KPiBpbmRleCBmYWMwMWJmNGFiNTAuLjk2Zjlj
OWMyN2FiOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5o
DQo+IEBAIC0xNSw3ICsxNSw2IEBAIHN0cnVjdCBpbnRlbF9jcnRjOw0KPiDCoHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlOw0KPiDCoHN0cnVjdCBpbnRlbF9kcDsNCj4gwqBzdHJ1Y3QgaW50ZWxfZW5j
b2RlcjsNCj4gLXN0cnVjdCBpbnRlbF9jcnRjOw0KPiDCoA0KPiANCj4gwqBib29sIGludGVsX3Zy
cl9pc19jYXBhYmxlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOw0KPiDCoHZvaWQg
aW50ZWxfdnJyX2NoZWNrX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
