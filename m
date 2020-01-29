Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5666314D418
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 00:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA396E492;
	Wed, 29 Jan 2020 23:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42EAE6E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 23:53:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 15:53:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="428133245"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jan 2020 15:53:22 -0800
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jan 2020 15:53:22 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.186]) with mapi id 14.03.0439.000;
 Wed, 29 Jan 2020 15:53:22 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915: Fix preallocated barrier list append
Thread-Index: AQHV1vsqBhqwYhkSM0yyjo+WRsh7NqgC0TEAgAAFhgA=
Date: Wed, 29 Jan 2020 23:53:21 +0000
Message-ID: <90fcddaaa6ad112eb4790616b39c8ac4b743460e.camel@intel.com>
References: <20200129232345.84512-1-jose.souza@intel.com>
 <158034081430.14720.1142522476870394698@skylake-alporthouse-com>
In-Reply-To: <158034081430.14720.1142522476870394698@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.17]
Content-ID: <586ED13411D01E45A437891B73BD504D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix preallocated barrier list
 append
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

T24gV2VkLCAyMDIwLTAxLTI5IGF0IDIzOjMzICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoMjAyMC0wMS0yOSAyMzoyMzo0NSkNCj4g
PiBPbmx5IHRoZSBmaXJzdCBhbmQgdGhlIGxhc3Qgbm9kZXMgd2VyZSBiZWluZyBhZGRlZCB0bw0K
PiA+IHJlZi0+cHJlYWxsb2NhdGVkX2JhcnJpZXJzLg0KPiA+IA0KPiA+IEknbSBub3QgZmFtaWxp
YXIgd2l0aCB0aGlzIHBhcnQgb2YgdGhlIGNvZGUgYnV0IGlmIHRoYXQgaXMgdGhlDQo+ID4gZXhw
ZWN0ZWQgYmVoYXZpb3IgaXQgaXMgbGVha2luZyB0aGUgbm9kZXMgaW4gYmV0d2Vlbi4NCj4gPiAN
Cj4gPiBSZW5hbWluZyB2YXJpYWJsZXMgdG8gbWFrZSBpdCBtb3JlIGVhc3kgdG8gcmVhZC4NCj4g
PiANCj4gPiBGaXhlczogODQxMzUwMjIzODE2ICgiZHJtL2k5MTUvZ3Q6IERyb3AgbXV0ZXggc2Vy
aWFsaXNhdGlvbiBiZXR3ZWVuDQo+ID4gY29udGV4dCBwaW4vdW5waW4iKQ0KPiA+IENjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4gPiBDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyB8IDE5ICsrKysrKysr
KystLS0tLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDkgZGVs
ZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYWN0aXZlLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMNCj4g
PiBpbmRleCA5ZDY4MzA4ODVkMmUuLjNkMmU3Y2Y1NWU1MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYw0KPiA+IEBAIC02MDcsNyArNjA3LDcgQEAgaW50DQo+ID4gaTkx
NV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAq
cmVmLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcw0KPiA+ICplbmdpbmUpDQo+ID4gIHsNCj4gPiAgICAgICAgIGlu
dGVsX2VuZ2luZV9tYXNrX3QgdG1wLCBtYXNrID0gZW5naW5lLT5tYXNrOw0KPiA+IC0gICAgICAg
c3RydWN0IGxsaXN0X25vZGUgKnBvcyA9IE5VTEwsICpuZXh0Ow0KPiA+ICsgICAgICAgc3RydWN0
IGxsaXN0X25vZGUgKmZpcnN0ID0gTlVMTCwgKmxhc3QgPSBOVUxMOw0KPiANCj4gbGFzdCBjYW5u
b3QgYmUgTlVMTCBhdCB0aGUgZW5kLg0KDQpsYXN0IHdpbGwgYmUgc2V0IGluIHRoZSBmaXJzdCBp
dGVyYXRpb24gYW5kIGl0IHdpbGwgYWx3YXlzIGludGVyYXRlIGF0DQpsZWFzdCBvbmNlIGJlY2F1
c2UgdGhlIG1hc2sgd2lsbCBhdCBsZWFzdCBtYXRjaCB3aXRoIHRoZSBlbmdpbmUgaW4NCmk5MTVf
YWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmllcigpIHBhcmFtZXRlci4NCg0KPiANCj4g
PiAgICAgICAgIHN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBlbmdpbmUtPmd0Ow0KPiA+ICAgICAgICAg
aW50IGVycjsNCj4gPiAgDQo+ID4gQEAgLTYyNiw2ICs2MjYsNyBAQCBpbnQNCj4gPiBpOTE1X2Fj
dGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYs
DQo+ID4gICAgICAgICBHRU1fQlVHX09OKCFtYXNrKTsNCj4gPiAgICAgICAgIGZvcl9lYWNoX2Vu
Z2luZV9tYXNrZWQoZW5naW5lLCBndCwgbWFzaywgdG1wKSB7DQo+ID4gICAgICAgICAgICAgICAg
IHU2NCBpZHggPSBlbmdpbmUtPmtlcm5lbF9jb250ZXh0LT50aW1lbGluZS0NCj4gPiA+ZmVuY2Vf
Y29udGV4dDsNCj4gPiArICAgICAgICAgICAgICAgc3RydWN0IGxsaXN0X25vZGUgKnByZXYgPSBm
aXJzdDsNCj4gPiAgICAgICAgICAgICAgICAgc3RydWN0IGFjdGl2ZV9ub2RlICpub2RlOw0KPiA+
ICANCj4gPiAgICAgICAgICAgICAgICAgbm9kZSA9IHJldXNlX2lkbGVfYmFycmllcihyZWYsIGlk
eCk7DQo+ID4gQEAgLTY1OSwyMyArNjYwLDIzIEBAIGludA0KPiA+IGk5MTVfYWN0aXZlX2FjcXVp
cmVfcHJlYWxsb2NhdGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwNCj4gPiAgICAg
ICAgICAgICAgICAgR0VNX0JVR19PTihyY3VfYWNjZXNzX3BvaW50ZXIobm9kZS0+YmFzZS5mZW5j
ZSkgIT0NCj4gPiBFUlJfUFRSKC1FQUdBSU4pKTsNCj4gPiAgDQo+ID4gICAgICAgICAgICAgICAg
IEdFTV9CVUdfT04oYmFycmllcl90b19lbmdpbmUobm9kZSkgIT0gZW5naW5lKTsNCj4gPiAtICAg
ICAgICAgICAgICAgbmV4dCA9IGJhcnJpZXJfdG9fbGwobm9kZSk7DQo+ID4gLSAgICAgICAgICAg
ICAgIG5leHQtPm5leHQgPSBwb3M7DQo+ID4gLSAgICAgICAgICAgICAgIGlmICghcG9zKQ0KPiA+
IC0gICAgICAgICAgICAgICAgICAgICAgIHBvcyA9IG5leHQ7DQo+IA0KPiBZZWFoLCB0aGF0IHdh
cyBhIGJpdCBvZiBub25zZW5zZS4NCj4gDQo+IE1pbnVzIHRoZSBzcHVyaW91cyBOVUxMLA0KPiBS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IC1D
aHJpcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
