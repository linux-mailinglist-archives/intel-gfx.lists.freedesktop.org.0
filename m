Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA742ED3CC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 16:55:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EDC89CB2;
	Thu,  7 Jan 2021 15:54:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E789589CB2
 for <Intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 15:54:57 +0000 (UTC)
IronPort-SDR: nfv0q9RJpxZK9nTbZMzentGsBkRF64p+kjT/2T9de0NroU3KFy4ozFoZR7Zfq76EgAFtEUt9QH
 drw2/mK9wu0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="177594273"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="177594273"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 07:54:51 -0800
IronPort-SDR: Zx24GMVVZXSqVZfLUWYuUZxSwNIDB/79jFcs3PGKbhw3EjWBfIlXqdP2fLdhxyl2z4fRvu0Oj3
 4zNwb8eODc2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="566180954"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 07 Jan 2021 07:54:49 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 07:54:48 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 07:54:48 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Thu, 7 Jan 2021 07:54:48 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 09/13] drm/i915/pxp: Expose session state
 for display protection flip
Thread-Index: AQHW5IFvMdAL0r0cs0iTSvbM/ARAMqoc1/EA
Date: Thu, 7 Jan 2021 15:54:48 +0000
Message-ID: <71b0c50d79644237d308c0f91d84d461c90b725b.camel@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-10-sean.z.huang@intel.com>
In-Reply-To: <20210106231223.8323-10-sean.z.huang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.2 (3.38.2-1.fc33) 
x-originating-ip: [10.1.200.100]
Content-ID: <BA822BA2C9F27C4DB5CBE0A32B783512@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v19 09/13] drm/i915/pxp: Expose session state
 for display protection flip
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

T24gV2VkLCAyMDIxLTAxLTA2IGF0IDE1OjEyIC0wODAwLCBIdWFuZywgU2VhbiBaIHdyb3RlOg0K
PiBJbXBsZW1lbnQgdGhlIGludGVsX3B4cF9nZW1fb2JqZWN0X3N0YXR1cygpIHRvIGFsbG93IGk5
MTUgZGlzcGxheQ0KPiBxdWVyeWluZyB0aGUgY3VycmVudCBQWFAgc2Vzc2lvbiBzdGF0ZS4gSW4g
dGhlIGRlc2lnbiwgZGlzcGxheQ0KPiBzaG91bGQgbm90IHBlcmZvcm0gcHJvdGVjdGlvbiBmbGlw
IG9uIHRoZSBwcm90ZWN0ZWQgYnVmZmVycyBpZg0KPiB0aGVyZSBpcyBubyBQWFAgc2Vzc2lvbiBh
bGl2ZS4gQW5kIEltcGxlbWVudCB0aGUgZnVuY2l0b24gdG8gc2V0DQo+IHRoZSBwcm90ZWN0ZWQg
ZmxhZyBmb3IgZ2VtIGNvbnRleHQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBIdWFuZywgU2VhbiBa
IDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9weHAvaW50ZWxfcHhwLmMgfCAyMSArKysrKysrKysrKysrKysrKysrKysNCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmggfCAxOCArKysrKysrKysrKysrKysrKysNCj4g
wqAyIGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9weHAvaW50ZWxfcHhwLmMNCj4gaW5kZXggMjNkNGNmYzFmYjFmLi5hMjhhNDU5NTMyYzIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMNCj4gQEAgLTE1OCwzICsx
NTgsMjQgQEAgdm9pZCBpbnRlbF9weHBfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX3B4cA0KPiAq
cHhwLCB1MTYgaWlyKQ0KPiDCoMKgwqDCoMKgwqDCoMKgcHhwLT5jdXJyZW50X2V2ZW50cyB8PSBl
dmVudHM7DQo+IMKgwqDCoMKgwqDCoMKgwqBzY2hlZHVsZV93b3JrKCZweHAtPmlycV93b3JrKTsN
Cj4gwqB9DQo+ICsNCj4gK2Jvb2wgaW50ZWxfcHhwX2dlbV9vYmplY3Rfc3RhdHVzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiArew0KPiArwqDCoMKgwqDCoMKgwqBpZiAoaTkxNS0+
Z3QucHhwLmN0eC5pbml0ZWQgJiYNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGk5MTUtPmd0LnB4
cC5jdHguZmxhZ19kaXNwbGF5X2htX3N1cmZhY2Vfa2V5cykNCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiArwqDCoMKgwqDCoMKgwqBlbHNlDQo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ICt9DQo+ICsNCj4gK2lu
dCBpbnRlbF9weHBfZ2VtX2NvbnRleHRfc2V0X3Byb3RlY3RlZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZQ0KPiAqaTkxNSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGxvbmcgKnVz
ZXJfZmxhZ3MsDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MzIgcHJvdGVjdGVkX2JpdCkNCj4g
K3sNCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCF1c2VyX2ZsYWdzIHx8ICFwcm90ZWN0ZWRfYml0IHx8
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAhaW50ZWxfcHhwX2FyYl9zZXNzaW9uX2lzX2luX3Bs
YXkoJmk5MTUtPmd0LnB4cCkpDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gLUVJTlZBTDsNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBzZXRfYml0KHByb3RlY3RlZF9iaXQs
IHVzZXJfZmxhZ3MpOw0KDQpUaGlzIHByb3RlY3RlZF9iaXQgc2hvdWxkIG9ubHkgYmUgc2V0IGR1
cmluZyBjb250ZXh0IGNyZWF0aW9uIGFuZCBuZXZlcg0KbW9kaWZpZWQgd2l0aCBzZXRfY29udGV4
dC4NCg0KPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gK30NCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3B4cC9pbnRlbF9weHAuaA0KPiBpbmRleCBjZGFhNmNlNmZkY2EuLmZmMWMxYzBlNzIwYyAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuaA0KPiBAQCAtMjksNiArMjks
OCBAQCBlbnVtIHB4cF9wcm90ZWN0aW9uX21vZGVzIHsNCj4gwqDCoMKgwqDCoMKgwqDCoFBST1RF
Q1RJT05fTU9ERV9BTEwNCj4gwqB9Ow0KPiDCoA0KPiArc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7
DQo+ICsNCj4gwqAjaWZkZWYgQ09ORklHX0RSTV9JOTE1X1BYUA0KPiDCoHZvaWQgaW50ZWxfcHhw
X2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9weHAgKnB4cCwgdTE2IGlpcik7DQo+IMKgaW50IGk5
MTVfcHhwX3RlYXJkb3duX3JlcXVpcmVkX2NhbGxiYWNrKHN0cnVjdCBpbnRlbF9weHAgKnB4cCk7
DQo+IEBAIC0zNiw2ICszOCwxMCBAQCBpbnQNCj4gaTkxNV9weHBfZ2xvYmFsX3Rlcm1pbmF0ZV9j
b21wbGV0ZV9jYWxsYmFjayhzdHJ1Y3QgaW50ZWxfcHhwICpweHApOw0KPiDCoA0KPiDCoHZvaWQg
aW50ZWxfcHhwX2luaXQoc3RydWN0IGludGVsX3B4cCAqcHhwKTsNCj4gwqB2b2lkIGludGVsX3B4
cF9maW5pKHN0cnVjdCBpbnRlbF9weHAgKnB4cCk7DQo+ICtib29sIGludGVsX3B4cF9nZW1fb2Jq
ZWN0X3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ICtpbnQgaW50ZWxf
cHhwX2dlbV9jb250ZXh0X3NldF9wcm90ZWN0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4g
Kmk5MTUsDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBsb25nICp1c2VyX2ZsYWcs
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MzIgcHJvdGVjdGVkX2JpdCk7DQo+IMKgI2Vsc2UN
Cj4gwqBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfcHhwX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRl
bF9weHAgKnB4cCwgdTE2DQo+IGlpcikNCj4gwqB7DQo+IEBAIC01OCw2ICs2NCwxOCBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgaW50ZWxfcHhwX2luaXQoc3RydWN0IGludGVsX3B4cA0KPiAqcHhwKQ0K
PiDCoHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9weHBfZmluaShzdHJ1Y3QgaW50ZWxfcHhwICpw
eHApDQo+IMKgew0KPiDCoH0NCj4gKw0KPiArc3RhdGljIGlubGluZSBib29sIGludGVsX3B4cF9n
ZW1fb2JqZWN0X3N0YXR1cyhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3sN
Cj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW5s
aW5lIGludCBpbnRlbF9weHBfZ2VtX2NvbnRleHRfc2V0X3Byb3RlY3RlZChzdHJ1Y3QNCj4gZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcNCj4gKnVzZXJfZmxhZywNCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMg0KPiBwcm90ZWN0ZWRf
Yml0KQ0KPiArew0KPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gK30NCj4gwqAjZW5kaWYN
Cj4gwqANCj4gwqAjZW5kaWYgLyogX19JTlRFTF9QWFBfSF9fICovDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
