Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A05752998F6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Oct 2020 22:40:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C31F6E0F6;
	Mon, 26 Oct 2020 21:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB18E6E0F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Oct 2020 21:40:27 +0000 (UTC)
IronPort-SDR: pJzPBcslIYCmo65svpmDSkG6gSaM1fc8vObAG0twGe+mImrccV1rbQo3i/8a4DsRfLGGmzaO+O
 AicagWXzE/6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="168116748"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="168116748"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 14:40:27 -0700
IronPort-SDR: bHVZOavaj4qVsUID/OhvvxSQIYLPJqhSP+k/nMNJ2ByOJAbWyAhjDS5mNRlxhWNr24BDXBxwEZ
 8eitPU+FavNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="303544954"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 26 Oct 2020 14:40:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Oct 2020 14:40:26 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Oct 2020 14:40:25 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 26 Oct 2020 21:40:24 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/6] drm/i915/display/psr: Use plane damage clips to
 calculate damaged area
Thread-Index: AQHWobRPbXvkHCLte0OL8sA2BFBOWamqfcqA
Date: Mon, 26 Oct 2020 21:40:23 +0000
Message-ID: <39fe2eb7bb30de6eed687592f70f6652ca12e24f.camel@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
 <20201013230121.331595-2-jose.souza@intel.com>
In-Reply-To: <20201013230121.331595-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <2113C71863657B4899F203E649213B74@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display/psr: Use plane damage
 clips to calculate damaged area
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

T24gVHVlLCAyMDIwLTEwLTEzIGF0IDE2OjAxIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBOb3cgdXNpbmcgcGxhbmUgZGFtYWdlIGNsaXBzIHByb3BlcnR5IHRvIGNhbGN1
YWx0ZSB0aGUgZGFtYWdlZCBhcmVhLg0KPiBTZWxlY3RpdmUgZmV0Y2ggb25seSBzdXBwb3J0cyBv
bmUgcmVnaW9uIHRvIGJlIGZldGNoZWQgc28gc29mdHdhcmUNCj4gbmVlZHMgdG8gY2FsY3VsYXRl
IGEgYm91bmRpbmcgYm94IGFyb3VuZCBhbGwgZGFtYWdlIGNsaXBzLg0KPiANCj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1NCArKysrKysrKysrKysr
KysrKysrKystDQo+IC0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBpbmRleCA3NzNhNWI1ZmEwNzguLjBmMWU5ZjBmYTU3ZiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMjczLDYgKzEyNzMsOSBA
QCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShz
dGF0ZSwgcGxhbmUsDQo+IG9sZF9wbGFuZV9zdGF0ZSwNCj4gIAkJCQkJICAgICBuZXdfcGxhbmVf
c3RhdGUsIGkpIHsNCj4gIAkJc3RydWN0IGRybV9yZWN0ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsN
Cj4gKwkJc3RydWN0IGRybV9tb2RlX3JlY3QgKmRhbWFnZWRfY2xpcHM7DQo+ICsJCXUzMiBudW1f
Y2xpcHM7DQo+ICsJCWludCBqOw0KPiAgDQo+ICAJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGku
Y3J0YyAhPSBjcnRjX3N0YXRlLQ0KPiA+dWFwaS5jcnRjKQ0KPiAgCQkJY29udGludWU7DQo+IEBA
IC0xMjkxLDEzICsxMjk0LDU0IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCWlmICghbmV3X3BsYW5lX3N0
YXRlLT51YXBpLnZpc2libGUpDQo+ICAJCQljb250aW51ZTsNCj4gIA0KPiArCQlzZWxfZmV0Y2hf
YXJlYSA9ICZuZXdfcGxhbmVfc3RhdGUtPnBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ICsJCXNlbF9m
ZXRjaF9hcmVhLT55MSA9IC0xOw0KPiArDQo+ICsJCWRhbWFnZWRfY2xpcHMgPQ0KPiBkcm1fcGxh
bmVfZ2V0X2RhbWFnZV9jbGlwcygmbmV3X3BsYW5lX3N0YXRlLT51YXBpKTsNCj4gKwkJbnVtX2Ns
aXBzID0NCj4gZHJtX3BsYW5lX2dldF9kYW1hZ2VfY2xpcHNfY291bnQoJm5ld19wbGFuZV9zdGF0
ZS0+dWFwaSk7DQo+ICsNCj4gIAkJLyoNCj4gLQkJICogRm9yIG5vdyBkb2luZyBhIHNlbGVjdGl2
ZSBmZXRjaCBpbiB0aGUgd2hvbGUgcGxhbmUNCj4gYXJlYSwNCj4gLQkJICogb3B0aW1pemF0aW9u
cyB3aWxsIGNvbWUgaW4gdGhlIGZ1dHVyZS4NCj4gKwkJICogSWYgcGxhbmUgbW92ZWQsIG1hcmsg
dGhlIHdob2xlIHBsYW5lIGFyZWEgYXMgZGFtYWdlZA0KPiBhcyBpdA0KPiArCQkgKiBuZWVkcyB0
byBiZSBjb21wbGV0ZSByZWRyYXcgaW4gdGhlIG5ldyBwb3NpdGlvbi4NCj4gIAkJICovDQo+IC0J
CXNlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsN
Cj4gLQkJc2VsX2ZldGNoX2FyZWEtPnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55MSA+
Pg0KPiAxNjsNCj4gLQkJc2VsX2ZldGNoX2FyZWEtPnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBp
LnNyYy55MiA+Pg0KPiAxNjsNCj4gKwkJaWYgKCFkcm1fcmVjdF9lcXVhbHMoJm5ld19wbGFuZV9z
dGF0ZS0+dWFwaS5kc3QsDQo+ICsJCQkJICAgICAmb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdCkp
IHsNCj4gKwkJCW51bV9jbGlwcyA9IDA7DQo+ICsJCQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSBuZXdf
cGxhbmVfc3RhdGUtDQo+ID51YXBpLnNyYy55MSA+PiAxNjsNCj4gKwkJCXNlbF9mZXRjaF9hcmVh
LT55MiA9IG5ld19wbGFuZV9zdGF0ZS0NCj4gPnVhcGkuc3JjLnkyID4+IDE2Ow0KPiArCQl9IGVs
c2UgaWYgKCFudW1fY2xpcHMgJiYgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmZiICE9DQo+ICsJCQkg
ICBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZmIpIHsNCj4gKwkJCS8qDQo+ICsJCQkgKiBJZiB0aGUg
cGxhbmUgZG9uJ3QgaGF2ZSBkYW1hZ2UgYXJlYXMgYnV0IHRoZQ0KPiArCQkJICogZnJhbWVidWZm
ZXIgY2hhbmdlZCwgbWFyayB0aGUgd2hvbGUgcGxhbmUNCj4gYXJlYSBhcw0KPiArCQkJICogZGFt
YWdlZC4NCj4gKwkJCSAqLw0KPiArCQkJc2VsX2ZldGNoX2FyZWEtPnkxID0gbmV3X3BsYW5lX3N0
YXRlLQ0KPiA+dWFwaS5zcmMueTEgPj4gMTY7DQo+ICsJCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSBu
ZXdfcGxhbmVfc3RhdGUtDQo+ID51YXBpLnNyYy55MiA+PiAxNjsNCj4gKwkJfQ0KPiArDQp3aHkg
ZG9uJ3QgeW91IHVzZSBkcm1fYXRvbWljX2hlbHBlcl9kYW1hZ2VfbWVyZ2VkKCkgZnVuY3Rpb24g
aGVyZT8NCj4gKwkJZm9yIChqID0gMDsgaiA8IG51bV9jbGlwczsgaisrKSB7DQo+ICsJCQlzdHJ1
Y3QgZHJtX3JlY3QgZGFtYWdlX2FyZWE7DQo+ICsNCj4gKwkJCWRhbWFnZV9hcmVhLnkxID0gZGFt
YWdlZF9jbGlwc1tqXS55MTsNCj4gKwkJCWRhbWFnZV9hcmVhLnkyID0gZGFtYWdlZF9jbGlwc1tq
XS55MjsNCj4gKwkJCWNsaXBfYXJlYV91cGRhdGUoc2VsX2ZldGNoX2FyZWEsICZkYW1hZ2VfYXJl
YSk7DQo+ICsJCX0NCj4gKw0KPiArCQkvKg0KPiArCQkgKiBObyBwYWdlIGZsaXAsIG5vIHBsYW5l
IG1vdmltZW50IG9yIG5vIGRhbWFnZSBhcmVhcywNCj4gc28gZG9uJ3QNCnR5cG8gKG1vdmltZW50
IC0+IG1vdmVtZW50KQ0KPiArCQkgKiBmZXRjaCBhbnkgcGl4ZWwgZnJvbSBtZW1vcnkgZm9yIHRo
aXMgcGxhbmUNCj4gKwkJICovDQo+ICsJCWlmIChzZWxfZmV0Y2hfYXJlYS0+eTEgPT0gLTEpIHsN
Cj4gKwkJCXNlbF9mZXRjaF9hcmVhLT55MSA9IDA7DQo+ICsJCQlzZWxfZmV0Y2hfYXJlYS0+eTIg
PSAwOw0KPiArCQl9DQo+ICsNCj4gKwkJLyogRG9uJ3QgbmVlZCB0byByZWRyYXcgcGxhbmUgZGFt
YWdlZCBhcmVhcyBvdXRzaWRlIG9mDQo+IHNjcmVlbiAqLw0KPiArCQlqID0gc2VsX2ZldGNoX2Fy
ZWEtPnkyICsgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTENCj4gPj4gMTYpOw0Kc3JjIGNv
b3JkaW5hdGVzIG9mIHRoZSBkcm1fcGxhbmVfc3RhdGUgYXJlIDE2LjE2IGZpeGVkIHBvaW50IGJ1
dCBkc3QNCmNvb3JkaW5hdGVzIGFyZSBub3QgMTYuMTYgZml4ZWQgcG9pbnQuDQp0aGVyZWZvcmUg
d2UgZG9uJ3QgbmVlZCB0byBiaXQgc2hpZnQgZm9yIGRzdC4NCkJlY2F1c2UgdGhlIHNlbF9mZXRj
aF9hcmVhIHNlZW1zIGJhc2VkIG9uIHNyYyBjb29yZGluYXRlcywgaW4gb3JkZXIgdG8NCmFwcGx5
IHRvIGRzdCBjb29yZGluYXRlcyBoZXJlLCAgaXQgcmVxdWlyZXMgY29vcmRpbmF0ZSBjYWxjdWxh
dGlvbi4gDQo+ICsJCWogPSBjcnRjX3N0YXRlLT51YXBpLmFkanVzdGVkX21vZGUuY3J0Y192ZGlz
cGxheSAtIGo7DQo+ICsJCWlmIChqIDwgMCkNCj4gKwkJCXNlbF9mZXRjaF9hcmVhLT55MiArPSBq
Ow0KPiAgDQo+ICAJCXRlbXAgPSAqc2VsX2ZldGNoX2FyZWE7DQo+ICAJCXRlbXAueTEgKz0gbmV3
X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MSA+PiAxNjsNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
