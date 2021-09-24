Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E8941797B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 19:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 643F96E1FB;
	Fri, 24 Sep 2021 17:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB556E1FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 17:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10117"; a="287789494"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="287789494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 10:11:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="519400494"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 24 Sep 2021 10:11:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 10:11:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 10:11:50 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 24 Sep 2021 10:11:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/7] drm/i915/display: Add new fb_op_origin type and use
 it to optimize power savings
Thread-Index: AQHXsLLmNUTi0iFJ7USW7TfOnZKDdKuzuAyAgAAsBIA=
Date: Fri, 24 Sep 2021 17:11:50 +0000
Message-ID: <e14f42977a9b814834a91d03a305f7abbb9433b0.camel@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-3-jose.souza@intel.com> <YU3jP1fUHPJcxvR+@intel.com>
In-Reply-To: <YU3jP1fUHPJcxvR+@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <3E5490D1A7934844AB824F46C12EAA00@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/display: Add new fb_op_origin
 type and use it to optimize power savings
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTA5LTI0IGF0IDE3OjM5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgU2VwIDIzLCAyMDIxIGF0IDEyOjQ2OjEzUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gaW50ZWxfcHJlcGFyZV9wbGFuZV9mYigpIHdhcyBjYWxs
aW5nIGk5MTVfZ2VtX29iamVjdF9mbHVzaF9mcm9udGJ1ZmZlcigpDQo+ID4gd2l0aCB0aGUgZ2Vu
ZXJpYyBPUklHSU5fRElSVFlGQiwgd2hhdCB3YXMgY2F1c2luZw0KPiA+IFBTUiwgRkJDIGFuZCBE
UlJTIHRvIGRvIHRoZWlyIGZyb250YnVmZmVyIHJlbmRlcmluZyBpbiBhIGZyYW1lYnVmZmVyDQo+
ID4gdGhhdCB3aWxsIGJlIGZsaXBwZWQuDQo+ID4gDQo+ID4gTm90IGhhbmRsaW5nIHRoaXMgY2Fs
bCBhcyBmcm9udGJ1ZmZlciByZW5kZXJpbmcgYWxsb3cgdXMgdG8gc2F2ZQ0KPiA+IG1vcmUgcG93
ZXIgd2l0aCBhbGwgMyBmZWF0dXJlcy4NCj4gPiANCj4gPiBTYW1lIGFwcGxpZXMgd2hlbiBhbGxv
Y2F0aW5nIGEgZnJhbWVidWZmZXIgZm9yIGZiZGV2IGVtdWxhdGlvbiwgYWZ0ZXINCj4gPiBhbGxv
Y2F0aW9uIHVzZXJzcGFjZSB3aWxsIGRyYXcgb24gaXQgYW5kIHRyaWdnZXIgaW52YWxkYXRlL2Zs
dXNoIGNhbGxzDQo+ID4gd2l0aCBPUklHSU5fRElSVFlGQi4NCj4gPiANCj4gPiBDYzogR3dhbi1n
eWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgfCAy
ICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jICAgICAg
ICB8IDUgKysrKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJz
LmggICAgICAgIHwgNCArKystDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgICAgICAgICB8IDIgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmRldi5jICAgICAgIHwgMiArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMgfCAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCB8IDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgICAgfCA1ICsrKystDQo+ID4gIDggZmls
ZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4
IGYyN2MyOTRiZWI5MjYuLmVjZjhjNjk0NzNlMzggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xMDY2Niw3ICsxMDY2
Niw3IEBAIGludGVsX3ByZXBhcmVfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLA0K
PiA+ICAJCXJldHVybiByZXQ7DQo+ID4gIA0KPiA+ICAJaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJp
b3JpdHkob2JqLCAwLCAmYXR0cik7DQo+ID4gLQlpOTE1X2dlbV9vYmplY3RfZmx1c2hfZnJvbnRi
dWZmZXIob2JqLCBPUklHSU5fRElSVFlGQik7DQo+ID4gKwlpOTE1X2dlbV9vYmplY3RfZmx1c2hf
ZnJvbnRidWZmZXIob2JqLCBPUklHSU5fUFJFUEFSRV9GQik7DQo+IA0KPiBJIHRoaW5rIHRoaXMg
c2hvdWxkIGp1c3QgZ2V0IG51a2VkLiBTZWUNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoLzQzMjE2Ni8/c2VyaWVzPTg5ODI0JnJldj0xDQo+IA0KPiBVbmZvcnR1bmF0
ZWx5IEkgd2Fzbid0IGFibGUgdG8gZ2V0IHBhc3QgZ2xrJ3Mgc2VtaS1ib3JrZWQNCj4gRkJDIHdp
dGggdGhhdCB5ZXQuDQoNCkNvb2wsIHdpbGwgdHJ5IHRvIG51a2UgaXQuDQpUaGlzIHNlcmllcyBw
YXNzZWQgaW4gQkFUIGFuZCBzaGFyZHMsIGhvcGVmdWxseSB3ZSB3aWxsIG5vdCBoaXQgdGhpcyBp
c3N1ZSB0b2RheS4gDQoNCj4gDQo+ID4gIA0KPiA+ICAJaWYgKCFuZXdfcGxhbmVfc3RhdGUtPnVh
cGkuZmVuY2UpIHsgLyogaW1wbGljaXQgZmVuY2luZyAqLw0KPiA+ICAJCXN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RycnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5j
DQo+ID4gaW5kZXggYzE0MzlmY2I1YTk1OS4uNDY4MjgyMjJhMDk4YiAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5jDQo+ID4gQEAgLTM3Myw4ICsz
NzMsMTEgQEAgdm9pZCBpbnRlbF9kcnJzX2ludmFsaWRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiA+ICAgKiBEaXJ0eSBmcm9udGJ1ZmZlcnMgcmVsZXZhbnQgdG8gRFJS
UyBhcmUgdHJhY2tlZCBpbiBidXN5X2Zyb250YnVmZmVyX2JpdHMuDQo+ID4gICAqLw0KPiA+ICB2
b2lkIGludGVsX2RycnNfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiA+IC0JCSAgICAgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9iaXRzKQ0KPiA+ICsJCSAgICAg
IHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9iaXRzLCBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4p
DQo+ID4gIHsNCj4gPiArCWlmIChvcmlnaW4gPT0gT1JJR0lOX1BSRVBBUkVfRkIpDQo+ID4gKwkJ
cmV0dXJuOw0KPiA+ICsNCj4gPiAgCWludGVsX2RycnNfZnJvbnRidWZmZXJfdXBkYXRlKGRldl9w
cml2LCBmcm9udGJ1ZmZlcl9iaXRzLCBmYWxzZSk7DQo+ID4gIH0NCj4gPiAgDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHJycy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJzLmgNCj4gPiBpbmRleCA5ZWM5YzQ0NzIx
MWFmLi5lNjk1MjhhOThhOWMyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHJycy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcnJzLmgNCj4gPiBAQCAtOCw2ICs4LDggQEANCj4gPiAgDQo+ID4gICNpbmNs
dWRlIDxsaW51eC90eXBlcy5oPg0KPiA+ICANCj4gPiArI2luY2x1ZGUgImludGVsX2Zyb250YnVm
ZmVyLmgiDQo+ID4gKw0KPiA+ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gPiAgc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZTsNCj4gPiAgc3RydWN0IGludGVsX2NydGM7DQo+ID4gQEAgLTI0
LDcgKzI2LDcgQEAgdm9pZCBpbnRlbF9kcnJzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiA+ICB2b2lkIGludGVsX2RycnNfaW52YWxpZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAkJCSAgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9iaXRz
KTsNCj4gPiAgdm9pZCBpbnRlbF9kcnJzX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwNCj4gPiAtCQkgICAgICB1bnNpZ25lZCBpbnQgZnJvbnRidWZmZXJfYml0cyk7DQo+
ID4gKwkJICAgICAgdW5zaWduZWQgaW50IGZyb250YnVmZmVyX2JpdHMsIGVudW0gZmJfb3Bfb3Jp
Z2luIG9yaWdpbik7DQo+ID4gIHZvaWQgaW50ZWxfZHJyc19wYWdlX2ZsaXAoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIAkJCSAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
Ow0KPiA+ICB2b2lkIGludGVsX2RycnNfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
PiBpbmRleCBiMWMxYTIzYzM2YmUzLi41NmMyZGUyOTk0NjAyIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAgLTExNTUsNyArMTE1NSw3
IEBAIHZvaWQgaW50ZWxfZmJjX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gPiAgDQo+ID4gIAlmYmMtPmJ1c3lfYml0cyAmPSB+ZnJvbnRidWZmZXJfYml0czsNCj4g
PiAgDQo+ID4gLQlpZiAob3JpZ2luID09IE9SSUdJTl9GTElQKQ0KPiA+ICsJaWYgKG9yaWdpbiA9
PSBPUklHSU5fRkxJUCB8fCBvcmlnaW4gPT0gT1JJR0lOX1BSRVBBUkVfRkIpDQo+ID4gIAkJZ290
byBvdXQ7DQo+ID4gIA0KPiA+ICAJaWYgKCFmYmMtPmJ1c3lfYml0cyAmJiBmYmMtPmNydGMgJiYN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRl
di5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gaW5k
ZXggNjBkM2RlZDI3MDQ3Ni4uMzA5NzY1ODkzOGFlMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gPiBAQCAtMjMwLDcgKzIzMCw3IEBA
IHN0YXRpYyBpbnQgaW50ZWxmYl9jcmVhdGUoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciwN
Cj4gPiAgCQlnb3RvIG91dF91bmxvY2s7DQo+ID4gIAl9DQo+ID4gIA0KPiA+IC0JaW50ZWxfZnJv
bnRidWZmZXJfZmx1c2godG9fZnJvbnRidWZmZXIoaWZiZGV2KSwgT1JJR0lOX0RJUlRZRkIpOw0K
PiA+ICsJaW50ZWxfZnJvbnRidWZmZXJfZmx1c2godG9fZnJvbnRidWZmZXIoaWZiZGV2KSwgT1JJ
R0lOX1BSRVBBUkVfRkIpOw0KPiA+ICANCj4gPiAgCWluZm8gPSBkcm1fZmJfaGVscGVyX2FsbG9j
X2ZiaShoZWxwZXIpOw0KPiA+ICAJaWYgKElTX0VSUihpbmZvKSkgew0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gPiBpbmRleCAw
NDkyNDQ2Y2QwNGFkLi5hODhjMTQ3ZDZiNTIzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IEBAIC05Miw3ICs5
Miw3IEBAIHN0YXRpYyB2b2lkIGZyb250YnVmZmVyX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LA0KPiA+ICAJdHJhY2VfaW50ZWxfZnJvbnRidWZmZXJfZmx1c2goZnJvbnRidWZm
ZXJfYml0cywgb3JpZ2luKTsNCj4gPiAgDQo+ID4gIAltaWdodF9zbGVlcCgpOw0KPiA+IC0JaW50
ZWxfZHJyc19mbHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzKTsNCj4gPiArCWludGVsX2RycnNf
Zmx1c2goaTkxNSwgZnJvbnRidWZmZXJfYml0cywgb3JpZ2luKTsNCj4gPiAgCWludGVsX3Bzcl9m
bHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pOw0KPiA+ICAJaW50ZWxfZmJjX2Zs
dXNoKGk5MTUsIGZyb250YnVmZmVyX2JpdHMsIG9yaWdpbik7DQo+ID4gIH0NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5oDQo+ID4gaW5k
ZXggNGI5NzdjMWU0ZDUyYi4uOTUwMDMwOTUwYjBmOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgNCj4gPiBAQCAtMzcs
NiArMzcsNyBAQCBlbnVtIGZiX29wX29yaWdpbiB7DQo+ID4gIAlPUklHSU5fQ1MsDQo+ID4gIAlP
UklHSU5fRkxJUCwNCj4gPiAgCU9SSUdJTl9ESVJUWUZCLA0KPiA+ICsJT1JJR0lOX1BSRVBBUkVf
RkIsDQo+ID4gIH07DQo+ID4gIA0KPiA+ICBzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXIgew0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGJhMmRh
Njg5OTIwZjkuLjFjYzQxMzBkZWM3YjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjA3Myw3ICsyMDczLDcgQEAgdm9pZCBpbnRl
bF9wc3JfaW52YWxpZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4g
IHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+ICANCj4gPiAtCWlm
IChvcmlnaW4gPT0gT1JJR0lOX0ZMSVApDQo+ID4gKwlpZiAob3JpZ2luID09IE9SSUdJTl9GTElQ
IHx8IG9yaWdpbiA9PSBPUklHSU5fUFJFUEFSRV9GQikNCj4gPiAgCQlyZXR1cm47DQo+ID4gIA0K
PiA+ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5j
b2Rlcikgew0KPiA+IEBAIC0yMTQ4LDYgKzIxNDgsOSBAQCB2b2lkIGludGVsX3Bzcl9mbHVzaChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+ICANCj4gPiArCWlmIChvcmlnaW4gPT0gT1JJR0lO
X1BSRVBBUkVfRkIpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiAgCWZvcl9lYWNoX2ludGVs
X2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsNCj4gPiAgCQl1bnNp
Z25lZCBpbnQgcGlwZV9mcm9udGJ1ZmZlcl9iaXRzID0gZnJvbnRidWZmZXJfYml0czsNCj4gPiAg
CQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0K
PiA+IC0tIA0KPiA+IDIuMzMuMA0KPiANCg0K
