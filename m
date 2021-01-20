Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7CA2FD960
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 20:22:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DB76E426;
	Wed, 20 Jan 2021 19:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D6C46E426
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 19:22:52 +0000 (UTC)
IronPort-SDR: bKiWI6ScrPk8Q1lKWsYkF+VGjPDKCTfWkn7YeDUGYAxut/yH9SmFcAJbD/7cIX3R78osL4GdVS
 zV191iyLoklQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="263977502"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="263977502"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 11:22:51 -0800
IronPort-SDR: mTS/hjBpTWhV4Boj53rM4iLOAP/h+lVSQwT/SRURFaKJIJeVg1ETrVehU5PtC3lc4mV4kJGVmC
 iw2uCqzFHzrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="347656909"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jan 2021 11:22:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 11:22:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 11:22:49 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 20 Jan 2021 11:22:49 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Unify the sanity checks for
 the buf trans tables
Thread-Index: AQHWzNiFVvSnr3bVK0CMomvtQpqDl6oxsAcA
Date: Wed, 20 Jan 2021 19:22:49 +0000
Message-ID: <8160101be4bee501fc2203ce6df8b73f0a51ab55.camel@intel.com>
References: <20201207203512.1718-1-ville.syrjala@linux.intel.com>
 <20201207203512.1718-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20201207203512.1718-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <0BE7C4D3F58FCD4AB35E9A1B89BF2DCC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Unify the sanity checks for
 the buf trans tables
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

T24gTW9uLCAyMDIwLTEyLTA3IGF0IDIyOjM1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gR2V0IHJpZCBvZiB0aGUgIkkgbGlrZSBteSByYW5kb20gbmV3IHN0eWxlIGJlc3QiIGFw
cHJvYWNoIGFuZCB1bmlmeQ0KPiB0aGUgaGFuZGxpbmcgZm9yIHRoZSBEREkgYnVmIHRyYW5zIHRh
YmxlIHNhbml0eSBjaGVja3Mgb25jZSBhZ2Fpbi4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMjMgKysrKysr
KysrKy0tLS0tLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwg
MTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gaW5kZXggYzNhMTVjZTY2NDc4Li42ODY5M2Q0NTM4ZTIgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMjYzMSwxNSArMjYzMSwx
MSBAQCBzdGF0aWMgdm9pZCBpY2xfZGRpX2NvbWJvX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLA0KPiDCoAkJZGRpX3RyYW5zbGF0aW9ucyA9IGVobF9nZXRfY29t
Ym9fYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOw0KPiDCoAllbHNl
DQo+IMKgCQlkZGlfdHJhbnNsYXRpb25zID0gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSwgJm5fZW50cmllcyk7DQo+IC0JaWYgKCFkZGlfdHJhbnNsYXRpb25zKQ0K
PiAtCQlyZXR1cm47DQo+IMKgDQo+IA0KPiANCj4gDQo+IC0JaWYgKGxldmVsID49IG5fZW50cmll
cykgew0KPiAtCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gLQkJCSAgICAiRERJIHRy
YW5zbGF0aW9uIG5vdCBmb3VuZCBmb3IgbGV2ZWwgJWQuIFVzaW5nICVkIGluc3RlYWQuIiwNCj4g
LQkJCSAgICBsZXZlbCwgbl9lbnRyaWVzIC0gMSk7DQo+ICsJaWYgKGRybV9XQVJOX09OX09OQ0Uo
JmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25zKSkNCj4gKwkJcmV0dXJuOw0KPiArCWlm
IChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLCBsZXZlbCA+PSBuX2VudHJpZXMpKQ0K
PiDCoAkJbGV2ZWwgPSBuX2VudHJpZXMgLSAxOw0KPiAtCX0NCj4gwqANCj4gDQo+IA0KPiANCj4g
wqAJaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VEUCkp
IHsNCj4gwqAJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5j
b2Rlcik7DQo+IEBAIC0yNzYwLDEyICsyNzU2LDExIEBAIHN0YXRpYyB2b2lkIGljbF9tZ19waHlf
ZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gwqAJ
dTMyIHZhbDsNCj4gwqANCj4gDQo+IA0KPiANCj4gwqAJZGRpX3RyYW5zbGF0aW9ucyA9IGljbF9n
ZXRfbWdfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOw0KPiAtCWlm
IChsZXZlbCA+PSBuX2VudHJpZXMpIHsNCj4gLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0s
DQo+IC0JCQkgICAgIkRESSB0cmFuc2xhdGlvbiBub3QgZm91bmQgZm9yIGxldmVsICVkLiBVc2lu
ZyAlZCBpbnN0ZWFkLiIsDQo+IC0JCQkgICAgbGV2ZWwsIG5fZW50cmllcyAtIDEpOw0KPiArDQo+
ICsJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRpb25z
KSkNCj4gKwkJcmV0dXJuOw0KPiArCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJt
LCBsZXZlbCA+PSBuX2VudHJpZXMpKQ0KPiDCoAkJbGV2ZWwgPSBuX2VudHJpZXMgLSAxOw0KPiAt
CX0NCj4gwqANCj4gDQo+IA0KPiANCj4gwqAJLyogU2V0IE1HX1RYX0xJTktfUEFSQU1TIGNyaV91
c2VfZnMzMiB0byAwLiAqLw0KPiDCoAlmb3IgKGxuID0gMDsgbG4gPCAyOyBsbisrKSB7DQo+IEBA
IC0yODk3LDcgKzI4OTIsOSBAQCB0Z2xfZGtsX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiDCoA0KPiANCj4gDQo+IA0KPiDCoAlkZGlfdHJh
bnNsYXRpb25zID0gdGdsX2dldF9ka2xfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZu
X2VudHJpZXMpOw0KPiDCoA0KPiANCj4gDQo+IA0KPiAtCWlmIChsZXZlbCA+PSBuX2VudHJpZXMp
DQo+ICsJaWYgKGRybV9XQVJOX09OX09OQ0UoJmRldl9wcml2LT5kcm0sICFkZGlfdHJhbnNsYXRp
b25zKSkNCj4gKwkJcmV0dXJuOw0KPiArCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+
ZHJtLCBsZXZlbCA+PSBuX2VudHJpZXMpKQ0KPiDCoAkJbGV2ZWwgPSBuX2VudHJpZXMgLSAxOw0K
PiDCoA0KPiANCj4gDQo+IA0KPiDCoAlkcGNudF9tYXNrID0gKERLTF9UWF9QUkVTSE9PVF9DT0VG
Rl9NQVNLIHwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
