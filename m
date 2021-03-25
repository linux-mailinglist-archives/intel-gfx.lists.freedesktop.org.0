Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A42349B64
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B2F6E0C6;
	Thu, 25 Mar 2021 21:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91CC86E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:06:42 +0000 (UTC)
IronPort-SDR: RlIEFGk9xco9+czXnR3C5dKHtGooRxB4/ON9EIFP2oRiSq0qQhD455F28SFNQvs3QdmfIsR2P1
 fVqO0XuVZ/2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="170998234"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="170998234"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:06:41 -0700
IronPort-SDR: G8Q+l4bdqKE8QFjBox/GgiBUCNQb1oSmGnfa488Qns0u0zV8aHfOgyWykqSJ1izfOYi7sLNtB2
 Q/1gm4CT2JEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="593923218"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 25 Mar 2021 14:06:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 14:06:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 14:06:39 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 25 Mar 2021 14:06:39 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 11/50] drm/i915/xelpd: Add Wa_14011503030
Thread-Index: AQHXIaHJ5FTTv2jcZEea0RT+CgnUJqqVqDcA
Date: Thu, 25 Mar 2021 21:06:39 +0000
Message-ID: <d9d75cc520a6cbd57756aeff7f1805be03f7c2c6.camel@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-12-matthew.d.roper@intel.com>
In-Reply-To: <20210325180720.401410-12-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <4098815665BB8C4AB75AD2C1BBD00642@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 11/50] drm/i915/xelpd: Add Wa_14011503030
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
Cc: "me@freedesktop.org" <me@freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTAzLTI1IGF0IDExOjA2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gQ2M6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8
IDQgKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAg
ICAgICAgIHwgMiArKw0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiBpbmRleCBlMzQ5NWQzMzA1YjMuLjkzMDQ4OGZiYTNjZCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4g
QEAgLTU4NDAsNiArNTg0MCwxMCBAQCBzdGF0aWMgdm9pZCBpY2xfZGlzcGxheV9jb3JlX2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiDCoAkJICAgICAgRENQUl9NQVNL
X0xQTU9ERSB8IERDUFJfTUFTS19NQVhMQVRFTkNZX01FTVVQX0NMUjsNCj4gwqAJCWludGVsX3Vu
Y29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdFTjExX0NISUNLRU5fRENQUl8yLCAwLCB2YWwp
Ow0KPiDCoAl9DQo+ICsNCj4gKwkvKiBXYV8xNDAxMTUwMzAzMDp4ZWxwZCAqLw0KPiArCWlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTMpDQo+ICsJCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBYRUxQRF9ESVNQTEFZX0VSUl9GQVRBTF9NQVNLLCB+MCk7DQo+IMKgfQ0KPiDCoA0KPiANCj4g
wqBzdGF0aWMgdm9pZCBpY2xfZGlzcGxheV9jb3JlX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCBkMTZmMjI4
YmJlZjIuLjIyYmVhY2IyODkyMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBA
IC03NzkxLDYgKzc3OTEsOCBAQCBlbnVtIHsNCj4gwqAjZGVmaW5lICBHRU44X0dUX0JDU19JUlEJ
CSgxIDw8IDEpDQo+IMKgI2RlZmluZSAgR0VOOF9HVF9SQ1NfSVJRCQkoMSA8PCAwKQ0KPiDCoA0K
PiANCj4gKyNkZWZpbmUgWEVMUERfRElTUExBWV9FUlJfRkFUQUxfTUFTSwlfTU1JTygweDQ0MjFj
KQ0KPiArDQo+IMKgI2RlZmluZSBHRU44X0dUX0lTUih3aGljaCkgX01NSU8oMHg0NDMwMCArICgw
eDEwICogKHdoaWNoKSkpDQo+IMKgI2RlZmluZSBHRU44X0dUX0lNUih3aGljaCkgX01NSU8oMHg0
NDMwNCArICgweDEwICogKHdoaWNoKSkpDQo+IMKgI2RlZmluZSBHRU44X0dUX0lJUih3aGljaCkg
X01NSU8oMHg0NDMwOCArICgweDEwICogKHdoaWNoKSkpDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
