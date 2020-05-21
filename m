Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1F61DD43B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 19:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF066E04A;
	Thu, 21 May 2020 17:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53996E04A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 17:24:59 +0000 (UTC)
IronPort-SDR: UxfkmzPtN5B9LuS+dPMhOWGVeesIQ+QFdbcOQ0ppCh3TIADRaUjf9wQg9UAJuLQnoqDN2S5S+m
 PCssJ4QjTVBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 10:24:50 -0700
IronPort-SDR: bjHeIqcY1PacHOd/njZam4crdksCvFpmj8jdQd4bvyEs6Rj3xeeIjT1i96drKKB1BeOH3cqJzq
 VHjXYDrCorQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,418,1583222400"; d="scan'208";a="309103351"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 21 May 2020 10:24:50 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 10:24:50 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.235]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.25]) with mapi id 14.03.0439.000;
 Thu, 21 May 2020 10:24:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 08/37] drm/i915: make intel_{uncore,
 de}_rmw() more useful
Thread-Index: AQHWLwgn+os0Zv8/1EKAqaHI4xOTGqizQT0A
Date: Thu, 21 May 2020 17:24:49 +0000
Message-ID: <7a5b61a80cd1839cf4cbf0891805d620b9bbdc96.camel@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-9-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-9-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.183.124]
Content-ID: <5DC96F3941CB8543B8A2AC3C0E77E53B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/37] drm/i915: make intel_{uncore,
 de}_rmw() more useful
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>,
 "fernando.pacheco@intel.com" <fernando.pacheco@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA1LTIwIGF0IDE3OjM3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFJldHVybiB0aGUgb2xkIHZhbHVlIHJlYWQgc28gc29tZSBwbGFjZXMgb2YgdGhlIGNvZGUg
Y2FuIHN0aWxsIGRvIHRoZQ0KPiBybXcgYnV0IGFkZCB3YXJuaW5ncy9lcnJvcnMgYWJvdXQgdGhl
IHZhbHVlIGl0IHJlYWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RlLmggfCAgNCArKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuaCAgICAgfCAxMCArKysrKysrLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RlLmgNCj4gaW5kZXggMDBkYTEwYmYzNWY1Li5kNTQ0MWIxYmEyZmUgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gQEAgLTQyLDEwICs0
MiwxMCBAQCBpbnRlbF9kZV93cml0ZV9mdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
aTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpDQo+ICAJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KCZpOTE1
LT51bmNvcmUsIHJlZywgdmFsKTsNCj4gIH0NCj4gDQoNCk1heWJlIGFkZCBmdW5jdGlvbiBkb2N1
bWVudGF0aW9uIHdpdGggdGhpcyBuZXcgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHJldHVybj8NCg0K
V2l0aCB0aGF0Og0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gIA0KPiAtc3RhdGljIGlubGluZSB2b2lkDQo+ICtzdGF0aWMg
aW5saW5lIHUzMg0KPiAgaW50ZWxfZGVfcm13KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCBpOTE1X3JlZ190IHJlZywgdTMyIGNsZWFyLCB1MzIgc2V0KQ0KPiAgew0KPiAtCWludGVsX3Vu
Y29yZV9ybXcoJmk5MTUtPnVuY29yZSwgcmVnLCBjbGVhciwgc2V0KTsNCj4gKwlyZXR1cm4gaW50
ZWxfdW5jb3JlX3JtdygmaTkxNS0+dW5jb3JlLCByZWcsIGNsZWFyLCBzZXQpOw0KPiAgfQ0KPiAg
DQo+ICBzdGF0aWMgaW5saW5lIGludA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaA0K
PiBpbmRleCA4ZDNhYThiOWFjZjkuLjVkYTQzYjU2ZmExMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmgNCj4gQEAgLTM3OSw4ICszNzksOCBAQCBpbnRlbF91bmNvcmVfcmVh
ZDY0XzJ4MzIoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiAgI2RlZmluZSBpbnRlbF91
bmNvcmVfd3JpdGU2NF9mdyguLi4pIF9fcmF3X3VuY29yZV93cml0ZTY0KF9fVkFfQVJHU19fKQ0K
PiAgI2RlZmluZSBpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkX2Z3KC4uLikgKCh2b2lkKWludGVs
X3VuY29yZV9yZWFkX2Z3KF9fVkFfQVJHU19fKSkNCj4gIA0KPiAtc3RhdGljIGlubGluZSB2b2lk
IGludGVsX3VuY29yZV9ybXcoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiAtCQkJCSAg
ICBpOTE1X3JlZ190IHJlZywgdTMyIGNsZWFyLCB1MzIgc2V0KQ0KPiArc3RhdGljIGlubGluZSB1
MzIgaW50ZWxfdW5jb3JlX3JtdyhzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsDQo+ICsJCQkJ
ICAgaTkxNV9yZWdfdCByZWcsIHUzMiBjbGVhciwgdTMyIHNldCkNCj4gIHsNCj4gIAl1MzIgb2xk
LCB2YWw7DQo+ICANCj4gQEAgLTM4OCw5ICszODgsMTEgQEAgc3RhdGljIGlubGluZSB2b2lkIGlu
dGVsX3VuY29yZV9ybXcoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiAgCXZhbCA9IChv
bGQgJiB+Y2xlYXIpIHwgc2V0Ow0KPiAgCWlmICh2YWwgIT0gb2xkKQ0KPiAgCQlpbnRlbF91bmNv
cmVfd3JpdGUodW5jb3JlLCByZWcsIHZhbCk7DQo+ICsNCj4gKwlyZXR1cm4gb2xkOw0KPiAgfQ0K
PiAgDQo+IC1zdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfdW5jb3JlX3Jtd19mdyhzdHJ1Y3QgaW50
ZWxfdW5jb3JlICp1bmNvcmUsDQo+ICtzdGF0aWMgaW5saW5lIHUzMiBpbnRlbF91bmNvcmVfcm13
X2Z3KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwNCj4gIAkJCQkgICAgICAgaTkxNV9yZWdf
dCByZWcsIHUzMiBjbGVhciwgdTMyIHNldCkNCj4gIHsNCj4gIAl1MzIgb2xkLCB2YWw7DQo+IEBA
IC0zOTksNiArNDAxLDggQEAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX3VuY29yZV9ybXdfZnco
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0KPiAgCXZhbCA9IChvbGQgJiB+Y2xlYXIpIHwg
c2V0Ow0KPiAgCWlmICh2YWwgIT0gb2xkKQ0KPiAgCQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5j
b3JlLCByZWcsIHZhbCk7DQo+ICsNCj4gKwlyZXR1cm4gb2xkOw0KPiAgfQ0KPiAgDQo+ICBzdGF0
aWMgaW5saW5lIGludCBpbnRlbF91bmNvcmVfd3JpdGVfYW5kX3ZlcmlmeShzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
