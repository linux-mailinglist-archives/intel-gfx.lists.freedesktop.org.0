Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 250C8344600
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 14:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAF46E489;
	Mon, 22 Mar 2021 13:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36E216E489
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 13:40:57 +0000 (UTC)
IronPort-SDR: cK3uAZSfBv2i5/4ZzKIuuTKKO+CTAYCNHorZ1RTgIUpuXQGY6iLZMUZAP294PmYqlyjn3CHotC
 NeGuSqDjhS5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="169602990"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="169602990"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 06:40:55 -0700
IronPort-SDR: jN0I1+uWgThEngjrl71ski4Ck1SMHnCqscNzL7g+X5Xtq0J8tgD5vs8/2/eaBWIo6SD5SUFW8h
 zEXU92wbmZ9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="414494105"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga008.jf.intel.com with ESMTP; 22 Mar 2021 06:40:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Mar 2021 13:40:53 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Mon, 22 Mar 2021 06:40:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: Not to try to re-enable PSR after
 being raised an irq aux error
Thread-Index: AQHXG3Q4PppkI0VD70SWD3XgRc/J4qqQgQKA
Date: Mon, 22 Mar 2021 13:40:51 +0000
Message-ID: <2218a7a4ae4069dfefb223610df50c6a20378807.camel@intel.com>
References: <20210317212632.2211971-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210317212632.2211971-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <B2400421F2BD7A4E914DC81BF5FC71F8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Not to try to
 re-enable PSR after being raised an irq aux error
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

T24gV2VkLCAyMDIxLTAzLTE3IGF0IDIzOjI2ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IElmIGFuIGlycSBhdXggZXJyb3IgaGFwcGVucywgaXQgZG9lcyBub3QgbmVlZCB0byB3YWl0
IGZvciBQU1IgIklETEUgc3RhdGUiDQo+IGZvciByZS1lbmFibGluZyBQU1IuIEFuZCBpdCBzaG91
bGQgbm90IHRyeSB0byByZS1lbmFibGUgUFNSLg0KPiANCj4gVGhlIFBTUiBpbnRlcnJ1cHQgaGFu
ZGxlciBzZXRzIGlycV9hdXhfZXJyb3Igd2hlbiB0aGUgUFNSIGVycm9yIGhhcHBlbnMuDQo+IEFu
ZCBpdCBzY2hlZHVsZXMgdGhlIGludGVyX3Bzcl93b3JrKCkuIGJ1dCB0aGUgY3VycmVudCBpbnRl
bF9wc3Jfd29yaygpIGNhbg0KPiBiZSBzY2hlZHVsZWQgYnkgYW5vdGhlciBQU1IgaW50ZXJuYWwg
cm91dGluZS4NCj4gVGhlcmVmb3JlLCB3ZSBzaG91bGQgbm90IHJlLWVuYWJsZSBQU1IgYWZ0ZXIg
aGFuZGluZyBpcnFfYXV4X2Vycm9yIGluDQo+IGludGVsX3Bzcl93b3JrKCkuDQo+IA0KPiB2Mjog
QWRkcmVzcyBKb3NlJ3MgcmV2aWV3IGNvbW1lbnQuDQo+IMKgLSBIYW5kbGluZyB0aGUgY2xvc2lu
ZyBmdW5jdGlvbiBpbiB0aGUgY2hlY2sgcm91dGluZSBvZiBpcnFfYXV4X2Vycm9yLg0KPiDCoC0g
QWRkIGEgZGV0YWlsZWQgY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBzY2VuYXJpby4NCg0KUmV2aWV3
ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+
IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDQgKysrLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRl
eCBjZDQzNDI4NWUzYjcuLmFiYTE1ODQ2ZTc4ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNjgzLDggKzE2ODMsMTAgQEAgc3RhdGljIHZv
aWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiDCoAlpZiAoIWlu
dGVsX2RwLT5wc3IuZW5hYmxlZCkNCj4gwqAJCWdvdG8gdW5sb2NrOw0KPiDCoA0KPiANCj4gDQo+
IA0KPiAtCWlmIChSRUFEX09OQ0UoaW50ZWxfZHAtPnBzci5pcnFfYXV4X2Vycm9yKSkNCj4gKwlp
ZiAoUkVBRF9PTkNFKGludGVsX2RwLT5wc3IuaXJxX2F1eF9lcnJvcikpIHsNCj4gwqAJCWludGVs
X3Bzcl9oYW5kbGVfaXJxKGludGVsX2RwKTsNCj4gKwkJZ290byB1bmxvY2s7DQo+ICsJfQ0KPiDC
oA0KPiANCj4gDQo+IA0KPiDCoAkvKg0KPiDCoAkgKiBXZSBoYXZlIHRvIG1ha2Ugc3VyZSBQU1Ig
aXMgcmVhZHkgZm9yIHJlLWVuYWJsZQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
