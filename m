Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A8F310C25
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 14:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC236F42D;
	Fri,  5 Feb 2021 13:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4FE36F42D
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 13:49:46 +0000 (UTC)
IronPort-SDR: CuISxu4omelP12DCBDOkRdkVeJpVPONUAgm6GDkwrjlreSW+2c2wrzdVELQsrVpNlw8KS2ND3E
 atlg9ahZzyWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="180657468"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="180657468"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 05:49:41 -0800
IronPort-SDR: paN8Lk2Pk/e2dj/xlCexORdmq2SCrW5T2f0GAY+2FbuUnu3i1Gosuqms9qFWwNIc15f4JJIJc/
 pnA5n1K7D5DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="397450141"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga007.jf.intel.com with ESMTP; 05 Feb 2021 05:49:39 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 5 Feb 2021 13:49:38 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 5 Feb 2021 13:49:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Index min_{cdclk,
 voltage_level}[] with pipe
Thread-Index: AQHW+prJMTNwmEsq8E+an5jrvkFs8KpJlhLQ
Date: Fri, 5 Feb 2021 13:49:38 +0000
Message-ID: <00e09f6889b44f2c85b17d798e4cfc28@intel.com>
References: <20210204020846.2094-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210204020846.2094-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Index min_{cdclk,
 voltage_level}[] with pipe
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSA0LCAyMDIxIDQ6MDkgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdm
eF0gW1BBVENIIDEvMl0gZHJtL2k5MTU6IEluZGV4IG1pbl97Y2RjbGssIHZvbHRhZ2VfbGV2ZWx9
W10NCj4gd2l0aCBwaXBlDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gbWluX2NkY2xrW10gYW5kIG1pbl92b2x0YWdlX2xl
dmVsW10gYXJlIHN1cHBvc2VkIHRvIGJlIGluZGV4ZWQgd2l0aCB0aGUNCj4gcGlwZS4gRml4IHVw
IGEgZmV3IGNhc2VzIHdoZXJlIHdlIGluZGV4IHZpYSB0aGUgY3J0YyBpbmRleCAodmlhIHRoZSBh
dG9taWMNCj4gaXRlcmF0b3JzKSBpbnN0ZWFkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCA4ICsrKystLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCBiZjgzZTll
NzUyMjcuLmE5MDE5Mjg3ZjdkNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMjE0NSwxMCArMjE0NSwxMCBAQCBzdGF0aWMgaW50IGlu
dGVsX2NvbXB1dGVfbWluX2NkY2xrKHN0cnVjdA0KPiBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtf
c3RhdGUpDQo+ICAJCWlmIChJU19FUlIoYndfc3RhdGUpKQ0KPiAgCQkJcmV0dXJuIFBUUl9FUlIo
Yndfc3RhdGUpOw0KPiANCj4gLQkJaWYgKGNkY2xrX3N0YXRlLT5taW5fY2RjbGtbaV0gPT0gbWlu
X2NkY2xrKQ0KPiArCQlpZiAoY2RjbGtfc3RhdGUtPm1pbl9jZGNsa1tjcnRjLT5waXBlXSA9PSBt
aW5fY2RjbGspDQo+ICAJCQljb250aW51ZTsNCj4gDQo+IC0JCWNkY2xrX3N0YXRlLT5taW5fY2Rj
bGtbaV0gPSBtaW5fY2RjbGs7DQo+ICsJCWNkY2xrX3N0YXRlLT5taW5fY2RjbGtbY3J0Yy0+cGlw
ZV0gPSBtaW5fY2RjbGs7DQo+IA0KPiAgCQlyZXQgPSBpbnRlbF9hdG9taWNfbG9ja19nbG9iYWxf
c3RhdGUoJmNkY2xrX3N0YXRlLT5iYXNlKTsNCj4gIAkJaWYgKHJldCkNCj4gQEAgLTIxOTksMTAg
KzIxOTksMTAgQEAgc3RhdGljIGludCBieHRfY29tcHV0ZV9taW5fdm9sdGFnZV9sZXZlbChzdHJ1
Y3QNCj4gaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlKQ0KPiAgCQllbHNlDQo+ICAJCQlt
aW5fdm9sdGFnZV9sZXZlbCA9IDA7DQo+IA0KPiAtCQlpZiAoY2RjbGtfc3RhdGUtPm1pbl92b2x0
YWdlX2xldmVsW2ldID09IG1pbl92b2x0YWdlX2xldmVsKQ0KPiArCQlpZiAoY2RjbGtfc3RhdGUt
Pm1pbl92b2x0YWdlX2xldmVsW2NydGMtPnBpcGVdID09DQo+IG1pbl92b2x0YWdlX2xldmVsKQ0K
PiAgCQkJY29udGludWU7DQo+IA0KPiAtCQljZGNsa19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2ZWxb
aV0gPSBtaW5fdm9sdGFnZV9sZXZlbDsNCj4gKwkJY2RjbGtfc3RhdGUtPm1pbl92b2x0YWdlX2xl
dmVsW2NydGMtPnBpcGVdID0NCj4gbWluX3ZvbHRhZ2VfbGV2ZWw7DQo+IA0KPiAgCQlyZXQgPSBp
bnRlbF9hdG9taWNfbG9ja19nbG9iYWxfc3RhdGUoJmNkY2xrX3N0YXRlLT5iYXNlKTsNCj4gIAkJ
aWYgKHJldCkNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
