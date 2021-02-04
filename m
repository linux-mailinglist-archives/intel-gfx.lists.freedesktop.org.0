Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0141630FE4B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557F46E112;
	Thu,  4 Feb 2021 20:32:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64746E112
 for <Intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:32:01 +0000 (UTC)
IronPort-SDR: CG1a5+fwgfytmgSoWv/+fT30zWesGkcDiadhby0/gBoWl38IssT3E/w4G3zLYWYmElzt5ZZBAJ
 JlqgrGiqjDDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="180548790"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="180548790"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:32:00 -0800
IronPort-SDR: a0cB8ec8d2cPwwpSQpRbENGXCexC5z41lNjhYgh+Jm0lBvh0YbY+htdHxXtGOjaJH2+wyq3gG9
 PwXYbeOcD1fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="508268073"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 04 Feb 2021 12:32:00 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 12:31:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Feb 2021 12:31:46 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Thu, 4 Feb 2021 12:31:46 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Thread-Topic: [PATCH] drm/i915/display: support ddr5 mem types
Thread-Index: AQHW+zEJrl6lFwP0902S4btu3y/R4apI+aEA
Date: Thu, 4 Feb 2021 20:31:46 +0000
Message-ID: <155766d0bcfaf157ee5439cd33ff9ea971b1d228.camel@intel.com>
References: <20210204200458.21875-1-clinton.a.taylor@intel.com>
In-Reply-To: <20210204200458.21875-1-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <602FB1AA52AF094A9E40D1CF41323800@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: support ddr5 mem types
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

T24gVGh1LCAyMDIxLTAyLTA0IGF0IDEyOjA0IC0wODAwLCBjbGludG9uLmEudGF5bG9yQGludGVs
LmNvbSB3cm90ZToNCj4gRnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVs
LmNvbT4NCj4gDQo+IEFkZCBERFI1IGFuZCBMUEREUjUgcmV0dXJuIHZhbHVlcyBmcm9tIHB1bml0
IGZ3Lg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQo+IEJTUEVDOiA1NDAyMw0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNsaW50b24u
YS50YXlsb3JAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMgfCAxMiArKysrKysrKysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgfCAgNCArKystDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHJhbS5jICAgICAgIHwgIDYgKysrKysrDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAyMCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYw0KPiBpbmRleCBiYTllNzEzNTg1ZTcuLmQxMjJiOTk2NTUzMiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBAQCAtNzgsNyAr
NzgsMTcgQEAgc3RhdGljIGludCBpY2xfZ2V0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LA0KPiDCoAlxaS0+bnVtX3BvaW50cyA9IGRyYW1faW5mby0+bnVtX3Fn
dl9wb2ludHM7DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgCWlmIChJU19HRU4oZGV2X3ByaXYsIDEy
KSkNCj4gLQkJcWktPnRfYmwgPSBkZXZfcHJpdi0+ZHJhbV9pbmZvLnR5cGUgPT0gSU5URUxfRFJB
TV9ERFI0ID8gNCA6IDE2Ow0KPiArCQlzd2l0Y2ggKGRyYW1faW5mby0+dHlwZSkgew0KPiArCQlj
YXNlIElOVEVMX0RSQU1fRERSNDoNCj4gKwkJCXFpLT50X2JsID0gNDsNCj4gKwkJCWJyZWFrOw0K
PiArCQljYXNlIElOVEVMX0RSQU1fRERSNToNCj4gKwkJCXFpLT50X2JsID0gODsNCj4gKwkJCWJy
ZWFrOw0KPiArCQlkZWZhdWx0Og0KPiArCQkJcWktPnRfYmwgPSAxNjsNCj4gKwkJCWJyZWFrOw0K
PiArCQl9DQo+IMKgCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQ0KPiDCoAkJcWktPnRf
YmwgPSBkZXZfcHJpdi0+ZHJhbV9pbmZvLnR5cGUgPT0gSU5URUxfRFJBTV9ERFI0ID8gNCA6IDg7
DQo+IMKgDQo+IA0KPiANCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBpbmRleCBhMmZk
N2U1MDM5YjMuLjgwODNhNTA5MDhiZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+
IEBAIC0xMTM2LDcgKzExMzYsOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7DQo+IMKgCQkJ
SU5URUxfRFJBTV9ERFIzLA0KPiDCoAkJCUlOVEVMX0RSQU1fRERSNCwNCj4gwqAJCQlJTlRFTF9E
UkFNX0xQRERSMywNCj4gLQkJCUlOVEVMX0RSQU1fTFBERFI0DQo+ICsJCQlJTlRFTF9EUkFNX0xQ
RERSNCwNCj4gKwkJCUlOVEVMX0RSQU1fRERSNSwNCj4gKwkJCUlOVEVMX0RSQU1fTFBERFI1LA0K
PiDCoAkJfSB0eXBlOw0KPiDCoAkJdTggbnVtX3Fndl9wb2ludHM7DQo+IMKgCX0gZHJhbV9pbmZv
Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+IGluZGV4IDczZDI1NmZjNjgzMC4uMWU1
M2MwMTdjMzBkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFt
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+IEBAIC00Mjcs
NiArNDI3LDEyIEBAIHN0YXRpYyBpbnQgaWNsX3Bjb2RlX3JlYWRfbWVtX2dsb2JhbF9pbmZvKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gwqAJCWNhc2UgMDoNCj4gwqAJCQlk
cmFtX2luZm8tPnR5cGUgPSBJTlRFTF9EUkFNX0REUjQ7DQo+IMKgCQkJYnJlYWs7DQo+ICsJCWNh
c2UgMToNCj4gKwkJCWRyYW1faW5mby0+dHlwZSA9IElOVEVMX0RSQU1fRERSNTsNCj4gKwkJCWJy
ZWFrOw0KPiArCQljYXNlIDI6DQo+ICsJCQlkcmFtX2luZm8tPnR5cGUgPSBJTlRFTF9EUkFNX0xQ
RERSNTsNCj4gKwkJCWJyZWFrOw0KPiDCoAkJY2FzZSAzOg0KPiDCoAkJCWRyYW1faW5mby0+dHlw
ZSA9IElOVEVMX0RSQU1fTFBERFI0Ow0KPiDCoAkJCWJyZWFrOw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
