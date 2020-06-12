Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4B61F7A83
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA8C56E0CB;
	Fri, 12 Jun 2020 15:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998876E0CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 15:15:10 +0000 (UTC)
IronPort-SDR: YikV6wqATkSJST+o2M2G88uHiMPUUQGnuCoExXUS6vMk7JrxnSzZT/r5RPo057mA4ZGmwdAUKx
 Fq94nMAnWtEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 08:15:09 -0700
IronPort-SDR: 1wEBVzgjtkHvz3ys3V4g4bdtkt/Uf9Ol8DhI4PCjr3j+nUgVbYjMhHFuQgGDkqbsrVPiVkKgLJ
 hxN7fAbr9EEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="315153902"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2020 08:15:09 -0700
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jun 2020 16:15:08 +0100
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 12 Jun 2020 16:15:08 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 12 Jun 2020 16:15:08 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips property
Thread-Index: AQHWM6rSQ9vvySr8FUuDk3F5hMfkXqjVIGYA
Date: Fri, 12 Jun 2020 15:15:07 +0000
Message-ID: <34d9a217f77904894a06bceb9fc4de6925b9c7ee.camel@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
 <20200526221447.64110-2-jose.souza@intel.com>
In-Reply-To: <20200526221447.64110-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.162]
Content-ID: <9ACB7957B1F8FD408264F5B6D022FD40@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips
 property
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

VGhpcyBmZWF0dXJlIGlzIHN1cHBvcnRlZCBmcm9tIEdFTjkrLCBidXQgdGhpcyB0aW1lIGl0IGZv
Y3VzZXMgb24NCnN1cHBvcnRpbmcgb2YgUFNSMiBzb2Z0d2FyZSB0cmFja2luZyBmb3IgR0VOMTIr
Lg0KTG9va3MgZ29vZCB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4NCg0KT24gVHVlLCAyMDIwLTA1LTI2IGF0IDE1OjE0IC0w
NzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiBUaGlzIHByb3BlcnR5IHdpbGwg
YmUgdXNlZCBieSBQU1IyIHNvZnR3YXJlIHRyYWNraW5nLCBhZGRpbmcgaXQgdG8NCj4gR0VOMTIr
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA0ICsrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgIHwgNCArKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gaW5kZXggZjQwYjkwOTk1MmNjLi5iNjk4NzgzMzQwNDAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0zNSw2ICszNSw3
IEBADQo+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJt
X2F0b21pY19oZWxwZXIuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY191YXBpLmg+DQo+
ICsjaW5jbHVkZSA8ZHJtL2RybV9kYW1hZ2VfaGVscGVyLmg+DQo+ICAjaW5jbHVkZSA8ZHJtL2Ry
bV9kcF9oZWxwZXIuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJtX2VkaWQuaD4NCj4gICNpbmNsdWRl
IDxkcm0vZHJtX2ZvdXJjYy5oPg0KPiBAQCAtMTY0NzYsNiArMTY0NzcsOSBAQCBpbnRlbF9jdXJz
b3JfcGxhbmVfY3JlYXRlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
IAl6cG9zID0gUlVOVElNRV9JTkZPKGRldl9wcml2KS0+bnVtX3Nwcml0ZXNbcGlwZV0gKyAxOw0K
PiAgCWRybV9wbGFuZV9jcmVhdGVfenBvc19pbW11dGFibGVfcHJvcGVydHkoJmN1cnNvci0+YmFz
ZSwgenBvcyk7DQo+ICANCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikNCj4gKwkJ
ZHJtX3BsYW5lX2VuYWJsZV9mYl9kYW1hZ2VfY2xpcHMoJmN1cnNvci0+YmFzZSk7DQo+ICsNCj4g
IAlkcm1fcGxhbmVfaGVscGVyX2FkZCgmY3Vyc29yLT5iYXNlLCAmaW50ZWxfcGxhbmVfaGVscGVy
X2Z1bmNzKTsNCj4gIA0KPiAgCXJldHVybiBjdXJzb3I7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBpbmRleCA1NzFjMzZmOTI5YmQuLjhiZTA2
Y2IyNTk5OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jDQo+IEBAIC0zNCw2ICszNCw3IEBADQo+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNf
aGVscGVyLmg+DQo+ICAjaW5jbHVkZSA8ZHJtL2RybV9jb2xvcl9tZ210Lmg+DQo+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9jcnRjLmg+DQo+ICsjaW5jbHVkZSA8ZHJtL2RybV9kYW1hZ2VfaGVscGVyLmg+
DQo+ICAjaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4NCj4gICNpbmNsdWRlIDxkcm0vZHJtX3Bs
YW5lX2hlbHBlci5oPg0KPiAgI2luY2x1ZGUgPGRybS9kcm1fcmVjdC5oPg0KPiBAQCAtMzE1MSw2
ICszMTUyLDkgQEAgc2tsX3VuaXZlcnNhbF9wbGFuZV9jcmVhdGUoc3RydWN0DQo+IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgDQo+ICAJZHJtX3BsYW5lX2NyZWF0ZV96cG9zX2ltbXV0
YWJsZV9wcm9wZXJ0eSgmcGxhbmUtPmJhc2UsDQo+IHBsYW5lX2lkKTsNCj4gIA0KPiArCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiArCQlkcm1fcGxhbmVfZW5hYmxlX2ZiX2RhbWFn
ZV9jbGlwcygmcGxhbmUtPmJhc2UpOw0KPiArDQo+ICAJZHJtX3BsYW5lX2hlbHBlcl9hZGQoJnBs
YW5lLT5iYXNlLCAmaW50ZWxfcGxhbmVfaGVscGVyX2Z1bmNzKTsNCj4gIA0KPiAgCXJldHVybiBw
bGFuZTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
