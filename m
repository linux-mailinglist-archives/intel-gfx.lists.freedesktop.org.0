Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463EB464B20
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 11:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F0B6F453;
	Wed,  1 Dec 2021 10:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B446F453
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 10:00:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="297228632"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="297228632"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="677203981"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2021 02:00:49 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 10:00:49 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 10:00:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/20] drm/i915/fbc: Reuse the same struct
 for the cache and params
Thread-Index: AQHX4SeoO2MZVpfDN0uFnV3tCfA7RKwdckZA
Date: Wed, 1 Dec 2021 10:00:49 +0000
Message-ID: <8230f84fcf1444b7808c8a6b26694bda@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/20] drm/i915/fbc: Reuse the same struct
 for the cache and params
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNi8yMF0gZHJtL2k5MTUvZmJjOiBSZXVzZSB0aGUgc2FtZSBzdHJ1Y3QgZm9yIHRo
ZQ0KPiBjYWNoZSBhbmQgcGFyYW1zDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIEZCQyBzdGF0ZSBjYWNoZSBhbmQg
cGFyYW1zIGFyZSBub3cgbmVhcmx5IGlkZW50aWNhbC4gSnVzdCB1c2UgdGhlIHNhbWUNCj4gc3Ry
dWN0dXJlIGZvciBib3RoLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgNjIgKysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMzYgKysrKystLS0tLS0t
LS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5k
ZXggMWU4Yjc1Y2RmYWQ4Li44NjI1ODI1Y2JlZTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtMTYzLDcgKzE2Myw3IEBAIHN0YXRpYyB1MTYg
aW50ZWxfZmJjX292ZXJyaWRlX2NmYl9zdHJpZGUoY29uc3Qgc3RydWN0DQo+IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zDQo+IA0KPiAgc3RhdGljIHUzMiBpOHh4X2ZiY19jdGwoc3RydWN0IGlu
dGVsX2ZiYyAqZmJjKSAgew0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAq
cGFyYW1zID0gJmZiYy0+cGFyYW1zOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfc3RhdGUg
KnBhcmFtcyA9ICZmYmMtPnBhcmFtczsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGZiYy0+aTkxNTsNCj4gIAl1bnNpZ25lZCBpbnQgY2ZiX3N0cmlkZTsNCj4gIAl1MzIgZmJj
X2N0bDsNCj4gQEAgLTE5MSwxMSArMTkxLDExIEBAIHN0YXRpYyB1MzIgaTh4eF9mYmNfY3RsKHN0
cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gDQo+ICBzdGF0aWMgdTMyIGk5NjVfZmJjX2N0bDIoc3Ry
dWN0IGludGVsX2ZiYyAqZmJjKSAgew0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3Bh
cmFtcyAqcGFyYW1zID0gJmZiYy0+cGFyYW1zOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNf
c3RhdGUgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsNCj4gIAl1MzIgZmJjX2N0bDI7DQo+IA0KPiAg
CWZiY19jdGwyID0gRkJDX0NUTF9GRU5DRV9EQkwgfCBGQkNfQ1RMX0lETEVfSU1NIHwNCj4gLQkJ
RkJDX0NUTF9QTEFORShwYXJhbXMtPmNydGMuaTl4eF9wbGFuZSk7DQo+ICsJCUZCQ19DVExfUExB
TkUocGFyYW1zLT5pOXh4X3BsYW5lKTsNCj4gDQo+ICAJaWYgKHBhcmFtcy0+ZmVuY2VfaWQgPj0g
MCkNCj4gIAkJZmJjX2N0bDIgfD0gRkJDX0NUTF9DUFVfRkVOQ0VfRU47DQo+IEBAIC0yMjYsNyAr
MjI2LDcgQEAgc3RhdGljIHZvaWQgaTh4eF9mYmNfZGVhY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZmJj
ICpmYmMpDQo+IA0KPiAgc3RhdGljIHZvaWQgaTh4eF9mYmNfYWN0aXZhdGUoc3RydWN0IGludGVs
X2ZiYyAqZmJjKSAgew0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAqcGFy
YW1zID0gJmZiYy0+cGFyYW1zOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfc3RhdGUgKnBh
cmFtcyA9ICZmYmMtPnBhcmFtczsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGZiYy0+aTkxNTsNCj4gIAlpbnQgaTsNCj4gDQo+IEBAIC0yNTgsOCArMjU4LDggQEAgc3RhdGlj
IGJvb2wgaTh4eF9mYmNfaXNfY29tcHJlc3Npbmcoc3RydWN0IGludGVsX2ZiYw0KPiAqZmJjKQ0K
PiANCj4gIHN0YXRpYyB2b2lkIGk4eHhfZmJjX251a2Uoc3RydWN0IGludGVsX2ZiYyAqZmJjKSAg
ew0KPiAtCXN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAqcGFyYW1zID0gJmZiYy0+cGFyYW1z
Ow0KPiAtCWVudW0gaTl4eF9wbGFuZV9pZCBpOXh4X3BsYW5lID0gcGFyYW1zLT5jcnRjLmk5eHhf
cGxhbmU7DQo+ICsJc3RydWN0IGludGVsX2ZiY19zdGF0ZSAqcGFyYW1zID0gJmZiYy0+cGFyYW1z
Ow0KPiArCWVudW0gaTl4eF9wbGFuZV9pZCBpOXh4X3BsYW5lID0gcGFyYW1zLT5pOXh4X3BsYW5l
Ow0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGZiYy0+aTkxNTsNCj4g
DQo+ICAJc3Bpbl9sb2NrX2lycSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrKTsNCj4gQEAgLTI5NCw4
ICsyOTQsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2ZiY19mdW5jcyBpOHh4X2ZiY19m
dW5jcyA9IHsNCj4gDQo+ICBzdGF0aWMgdm9pZCBpOTY1X2ZiY19udWtlKHN0cnVjdCBpbnRlbF9m
YmMgKmZiYykgIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZm
YmMtPnBhcmFtczsNCj4gLQllbnVtIGk5eHhfcGxhbmVfaWQgaTl4eF9wbGFuZSA9IHBhcmFtcy0+
Y3J0Yy5pOXh4X3BsYW5lOw0KPiArCXN0cnVjdCBpbnRlbF9mYmNfc3RhdGUgKnBhcmFtcyA9ICZm
YmMtPnBhcmFtczsNCj4gKwllbnVtIGk5eHhfcGxhbmVfaWQgaTl4eF9wbGFuZSA9IHBhcmFtcy0+
aTl4eF9wbGFuZTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBmYmMt
Pmk5MTU7DQo+IA0KPiAgCXNwaW5fbG9ja19pcnEoJmRldl9wcml2LT51bmNvcmUubG9jayk7DQo+
IEBAIC0zMzAsMTIgKzMzMCwxMiBAQCBzdGF0aWMgdTMyIGc0eF9kcGZjX2N0bF9saW1pdChzdHJ1
Y3QgaW50ZWxfZmJjICpmYmMpDQo+IA0KPiAgc3RhdGljIHUzMiBnNHhfZHBmY19jdGwoc3RydWN0
IGludGVsX2ZiYyAqZmJjKSAgew0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFt
cyAqcGFyYW1zID0gJmZiYy0+cGFyYW1zOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfc3Rh
dGUgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGZiYy0+aTkxNTsNCj4gIAl1MzIgZHBmY19jdGw7DQo+IA0KPiAgCWRwZmNfY3RsID0g
ZzR4X2RwZmNfY3RsX2xpbWl0KGZiYykgfA0KPiAtCQlEUEZDX0NUTF9QTEFORV9HNFgocGFyYW1z
LT5jcnRjLmk5eHhfcGxhbmUpOw0KPiArCQlEUEZDX0NUTF9QTEFORV9HNFgocGFyYW1zLT5pOXh4
X3BsYW5lKTsNCj4gDQo+ICAJaWYgKElTX0c0WChpOTE1KSkNCj4gIAkJZHBmY19jdGwgfD0gRFBG
Q19DVExfU1JfRU47DQo+IEBAIC0zNTIsNyArMzUyLDcgQEAgc3RhdGljIHUzMiBnNHhfZHBmY19j
dGwoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiANCj4gIHN0YXRpYyB2b2lkIGc0eF9mYmNfYWN0
aXZhdGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKSAgew0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9m
YmNfcmVnX3BhcmFtcyAqcGFyYW1zID0gJmZiYy0+cGFyYW1zOw0KPiArCWNvbnN0IHN0cnVjdCBp
bnRlbF9mYmNfc3RhdGUgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsNCj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGZiYy0+aTkxNTsNCj4gDQo+ICAJaW50ZWxfZGVfd3JpdGUoaTkx
NSwgRFBGQ19GRU5DRV9ZT0ZGLA0KPiBAQCAtNDAzLDcgKzQwMyw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfZmJjX2Z1bmNzIGc0eF9mYmNfZnVuY3MgPSB7DQo+IA0KPiAgc3RhdGljIHZv
aWQgaWxrX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpICB7DQo+IC0Jc3RydWN0
IGludGVsX2ZiY19yZWdfcGFyYW1zICpwYXJhbXMgPSAmZmJjLT5wYXJhbXM7DQo+ICsJc3RydWN0
IGludGVsX2ZiY19zdGF0ZSAqcGFyYW1zID0gJmZiYy0+cGFyYW1zOw0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZmJjLT5pOTE1Ow0KPiANCj4gIAlpbnRlbF9kZV93cml0ZShp
OTE1LCBJTEtfRFBGQ19GRU5DRV9ZT0ZGLCBAQCAtNDU0LDcgKzQ1NCw3IEBADQo+IHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZmJjX2Z1bmNzIGlsa19mYmNfZnVuY3MgPSB7DQo+IA0KPiAgc3Rh
dGljIHZvaWQgc25iX2ZiY19wcm9ncmFtX2ZlbmNlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykgIHsN
Cj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZmYmMtPnBh
cmFtczsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlICpwYXJhbXMgPSAmZmJjLT5w
YXJhbXM7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMtPmk5MTU7DQo+
ICAJdTMyIGN0bCA9IDA7DQo+IA0KPiBAQCAtNDkxLDcgKzQ5MSw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfZmJjX2Z1bmNzIHNuYl9mYmNfZnVuY3MgPSB7DQo+IA0KPiAgc3RhdGljIHZv
aWQgZ2xrX2ZiY19wcm9ncmFtX2NmYl9zdHJpZGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKSAgew0K
PiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAqcGFyYW1zID0gJmZiYy0+cGFy
YW1zOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfc3RhdGUgKnBhcmFtcyA9ICZmYmMtPnBh
cmFtczsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGZiYy0+aTkxNTsNCj4g
IAl1MzIgdmFsID0gMDsNCj4gDQo+IEBAIC01MDQsNyArNTA0LDcgQEAgc3RhdGljIHZvaWQgZ2xr
X2ZiY19wcm9ncmFtX2NmYl9zdHJpZGUoc3RydWN0IGludGVsX2ZiYw0KPiAqZmJjKQ0KPiANCj4g
IHN0YXRpYyB2b2lkIHNrbF9mYmNfcHJvZ3JhbV9jZmJfc3RyaWRlKHN0cnVjdCBpbnRlbF9mYmMg
KmZiYykgIHsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9
ICZmYmMtPnBhcmFtczsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlICpwYXJhbXMg
PSAmZmJjLT5wYXJhbXM7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMt
Pmk5MTU7DQo+ICAJdTMyIHZhbCA9IDA7DQo+IA0KPiBAQCAtNTIwLDE0ICs1MjAsMTQgQEAgc3Rh
dGljIHZvaWQgc2tsX2ZiY19wcm9ncmFtX2NmYl9zdHJpZGUoc3RydWN0DQo+IGludGVsX2ZiYyAq
ZmJjKQ0KPiANCj4gIHN0YXRpYyB1MzIgaXZiX2RwZmNfY3RsKHN0cnVjdCBpbnRlbF9mYmMgKmZi
YykgIHsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZm
YmMtPnBhcmFtczsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlICpwYXJhbXMgPSAm
ZmJjLT5wYXJhbXM7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBmYmMtPmk5
MTU7DQo+ICAJdTMyIGRwZmNfY3RsOw0KPiANCj4gIAlkcGZjX2N0bCA9IGc0eF9kcGZjX2N0bF9s
aW1pdChmYmMpOw0KPiANCj4gIAlpZiAoSVNfSVZZQlJJREdFKGk5MTUpKQ0KPiAtCQlkcGZjX2N0
bCB8PSBEUEZDX0NUTF9QTEFORV9JVkIocGFyYW1zLT5jcnRjLmk5eHhfcGxhbmUpOw0KPiArCQlk
cGZjX2N0bCB8PSBEUEZDX0NUTF9QTEFORV9JVkIocGFyYW1zLT5pOXh4X3BsYW5lKTsNCj4gDQo+
ICAJaWYgKHBhcmFtcy0+ZmVuY2VfaWQgPj0gMCkNCj4gIAkJZHBmY19jdGwgfD0gRFBGQ19DVExf
RkVOQ0VfRU5fSVZCOw0KPiBAQCAtOTMzLDEyICs5MzMsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlID0NCj4g
IAkJaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSBwbGFuZS0+ZmJjOw0KPiAtCXN0cnVjdCBpbnRlbF9mYmNf
c3RhdGVfY2FjaGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+ICsJc3RydWN0IGludGVs
X2ZiY19zdGF0ZSAqY2FjaGUgPSAmZmJjLT5zdGF0ZV9jYWNoZTsNCj4gDQo+ICAJY2FjaGUtPm5v
X2ZiY19yZWFzb24gPSBwbGFuZV9zdGF0ZS0+bm9fZmJjX3JlYXNvbjsNCj4gIAlpZiAoY2FjaGUt
Pm5vX2ZiY19yZWFzb24pDQo+ICAJCXJldHVybjsNCj4gDQo+ICsJY2FjaGUtPmk5eHhfcGxhbmUg
PSBwbGFuZS0+aTl4eF9wbGFuZTsNCj4gKw0KPiAgCS8qIEZCQzEgY29tcHJlc3Npb24gaW50ZXJ2
YWw6IGFyYml0cmFyeSBjaG9pY2Ugb2YgMSBzZWNvbmQgKi8NCj4gIAljYWNoZS0+aW50ZXJ2YWwg
PSBkcm1fbW9kZV92cmVmcmVzaCgmY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGUpOw0K
PiANCj4gQEAgLTEwOTMsNyArMTA5NSw3IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0
aXZhdGUoc3RydWN0IGludGVsX2NydGMNCj4gKmNydGMpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfZmJjICpmYmMgPSAmaTkxNS0+ZmJjOw0KPiAtCXN0cnVjdCBpbnRlbF9mYmNfc3RhdGVfY2Fj
aGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+ICsJc3RydWN0IGludGVsX2ZiY19zdGF0
ZSAqY2FjaGUgPSAmZmJjLT5zdGF0ZV9jYWNoZTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9mYmNfY2Fu
X2VuYWJsZShmYmMpKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0xMTU2LDIzICsxMTU4LDEz
IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0IGludGVsX2NydGMN
Cj4gKmNydGMpICBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfZ2V0X3JlZ19wYXJhbXMoc3RydWN0IGlu
dGVsX2ZiYyAqZmJjLA0KPiAgCQkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICB7
DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2ZiY19zdGF0ZV9jYWNoZSAqY2FjaGUgPSAmZmJjLT5z
dGF0ZV9jYWNoZTsNCj4gLQlzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZm
YmMtPnBhcmFtczsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlICpjYWNoZSA9ICZm
YmMtPnN0YXRlX2NhY2hlOw0KPiArCXN0cnVjdCBpbnRlbF9mYmNfc3RhdGUgKnBhcmFtcyA9ICZm
YmMtPnBhcmFtczsNCj4gDQo+ICAJLyogU2luY2UgYWxsIG91ciBmaWVsZHMgYXJlIGludGVnZXIg
dHlwZXMsIHVzZSBtZW1zZXQgaGVyZSBzbyB0aGUNCj4gIAkgKiBjb21wYXJpc29uIGZ1bmN0aW9u
IGNhbiByZWx5IG9uIG1lbWNtcCBiZWNhdXNlIHRoZSBwYWRkaW5nIHdpbGwNCj4gYmUNCj4gIAkg
KiB6ZXJvLiAqLw0KPiAtCW1lbXNldChwYXJhbXMsIDAsIHNpemVvZigqcGFyYW1zKSk7DQo+IC0N
Cj4gLQlwYXJhbXMtPmZlbmNlX2lkID0gY2FjaGUtPmZlbmNlX2lkOw0KPiAtCXBhcmFtcy0+ZmVu
Y2VfeV9vZmZzZXQgPSBjYWNoZS0+ZmVuY2VfeV9vZmZzZXQ7DQo+IC0NCj4gLQlwYXJhbXMtPmlu
dGVydmFsID0gY2FjaGUtPmludGVydmFsOw0KPiAtCXBhcmFtcy0+Y3J0Yy5pOXh4X3BsYW5lID0g
dG9faW50ZWxfcGxhbmUoY3J0Yy0+YmFzZS5wcmltYXJ5KS0NCj4gPmk5eHhfcGxhbmU7DQo+IC0N
Cj4gLQlwYXJhbXMtPmNmYl9zdHJpZGUgPSBjYWNoZS0+Y2ZiX3N0cmlkZTsNCj4gLQlwYXJhbXMt
PmNmYl9zaXplID0gY2FjaGUtPmNmYl9zaXplOw0KPiAtCXBhcmFtcy0+b3ZlcnJpZGVfY2ZiX3N0
cmlkZSA9IGNhY2hlLT5vdmVycmlkZV9jZmJfc3RyaWRlOw0KPiArCSpwYXJhbXMgPSAqY2FjaGU7
DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9mbGlwX251a2Uoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIEBAIC0NCj4gMTE4OCw4ICsxMTgwLDggQEAgc3Rh
dGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9mbGlwX251a2Uoc3RydWN0DQo+IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRl
LCBwbGFuZSk7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqb2xkX2ZiID0gb2xk
X3BsYW5lX3N0YXRlLT5ody5mYjsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpu
ZXdfZmIgPSBuZXdfcGxhbmVfc3RhdGUtPmh3LmZiOw0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9m
YmNfc3RhdGVfY2FjaGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2FjaGU7DQo+IC0JY29uc3Qgc3Ry
dWN0IGludGVsX2ZiY19yZWdfcGFyYW1zICpwYXJhbXMgPSAmZmJjLT5wYXJhbXM7DQo+ICsJY29u
c3Qgc3RydWN0IGludGVsX2ZiY19zdGF0ZSAqY2FjaGUgPSAmZmJjLT5zdGF0ZV9jYWNoZTsNCj4g
Kwljb25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3N0YXRlICpwYXJhbXMgPSAmZmJjLT5wYXJhbXM7DQo+
IA0KPiAgCWlmIChkcm1fYXRvbWljX2NydGNfbmVlZHNfbW9kZXNldCgmbmV3X2NydGNfc3RhdGUt
PnVhcGkpKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0xNDI2LDcgKzE0MTgsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9mYmNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gKnN0
YXRlLA0KPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUgPQ0K
PiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOw0KPiAg
CXN0cnVjdCBpbnRlbF9mYmMgKmZiYyA9IHBsYW5lLT5mYmM7DQo+IC0Jc3RydWN0IGludGVsX2Zi
Y19zdGF0ZV9jYWNoZSAqY2FjaGU7DQo+ICsJc3RydWN0IGludGVsX2ZiY19zdGF0ZSAqY2FjaGU7
DQo+ICAJaW50IG1pbl9saW1pdDsNCj4gDQo+ICAJaWYgKCFmYmMgfHwgIXBsYW5lX3N0YXRlKQ0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gaW5kZXggNjZmYTQ2ZDQxZmE1Li5hNzM3ZmE0ODNj
ZjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAtNDAzLDYgKzQwMywxNyBA
QCBzdHJ1Y3QgaW50ZWxfZmJjX2Z1bmNzOw0KPiANCj4gICNkZWZpbmUgSTkxNV9DT0xPUl9VTkVW
SUNUQUJMRSAoLTEpIC8qIGEgbm9uLXZtYSBzaGFyaW5nIHRoZSBhZGRyZXNzDQo+IHNwYWNlICov
DQo+IA0KPiArc3RydWN0IGludGVsX2ZiY19zdGF0ZSB7DQo+ICsJY29uc3QgY2hhciAqbm9fZmJj
X3JlYXNvbjsNCj4gKwllbnVtIGk5eHhfcGxhbmVfaWQgaTl4eF9wbGFuZTsNCj4gKwl1bnNpZ25l
ZCBpbnQgY2ZiX3N0cmlkZTsNCj4gKwl1bnNpZ25lZCBpbnQgY2ZiX3NpemU7DQo+ICsJdW5zaWdu
ZWQgaW50IGZlbmNlX3lfb2Zmc2V0Ow0KPiArCXUxNiBvdmVycmlkZV9jZmJfc3RyaWRlOw0KPiAr
CXUxNiBpbnRlcnZhbDsNCj4gKwlzOCBmZW5jZV9pZDsNCj4gK307DQo+ICsNCj4gIHN0cnVjdCBp
bnRlbF9mYmMgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1Ow0KPiAgCWNvbnN0
IHN0cnVjdCBpbnRlbF9mYmNfZnVuY3MgKmZ1bmNzOw0KPiBAQCAtNDMzLDE2ICs0NDQsNyBAQCBz
dHJ1Y3QgaW50ZWxfZmJjIHsNCj4gIAkgKiBhcHByb3ByaWF0ZSBsb2NraW5nLCBzbyB3ZSBjYWNo
ZSBpbmZvcm1hdGlvbiBoZXJlIGluIG9yZGVyIHRvIGF2b2lkDQo+ICAJICogdGhlc2UgcHJvYmxl
bXMuDQo+ICAJICovDQo+IC0Jc3RydWN0IGludGVsX2ZiY19zdGF0ZV9jYWNoZSB7DQo+IC0JCWNv
bnN0IGNoYXIgKm5vX2ZiY19yZWFzb247DQo+IC0NCj4gLQkJdW5zaWduZWQgaW50IGNmYl9zdHJp
ZGU7DQo+IC0JCXVuc2lnbmVkIGludCBjZmJfc2l6ZTsNCj4gLQkJdW5zaWduZWQgaW50IGZlbmNl
X3lfb2Zmc2V0Ow0KPiAtCQl1MTYgb3ZlcnJpZGVfY2ZiX3N0cmlkZTsNCj4gLQkJdTE2IGludGVy
dmFsOw0KPiAtCQlzOCBmZW5jZV9pZDsNCj4gLQl9IHN0YXRlX2NhY2hlOw0KPiArCXN0cnVjdCBp
bnRlbF9mYmNfc3RhdGUgc3RhdGVfY2FjaGU7DQo+IA0KPiAgCS8qDQo+ICAJICogVGhpcyBzdHJ1
Y3R1cmUgY29udGFpbnMgZXZlcnl0aGluZyB0aGF0J3MgcmVsZXZhbnQgdG8gcHJvZ3JhbSB0aGUg
QEANCj4gLTQ1MSwxOSArNDUzLDcgQEAgc3RydWN0IGludGVsX2ZiYyB7DQo+ICAJICogc29tZXRo
aW5nIGRpZmZlcmVudCBpbiB0aGUgc3RydWN0LiBUaGUgZ2VueF9mYmNfYWN0aXZhdGUgZnVuY3Rp
b25zDQo+ICAJICogYXJlIHN1cHBvc2VkIHRvIHJlYWQgZnJvbSBpdCBpbiBvcmRlciB0byBwcm9n
cmFtIHRoZSByZWdpc3RlcnMuDQo+ICAJICovDQo+IC0Jc3RydWN0IGludGVsX2ZiY19yZWdfcGFy
YW1zIHsNCj4gLQkJc3RydWN0IHsNCj4gLQkJCWVudW0gaTl4eF9wbGFuZV9pZCBpOXh4X3BsYW5l
Ow0KPiAtCQl9IGNydGM7DQo+IC0NCj4gLQkJdW5zaWduZWQgaW50IGNmYl9zdHJpZGU7DQo+IC0J
CXVuc2lnbmVkIGludCBjZmJfc2l6ZTsNCj4gLQkJdW5zaWduZWQgaW50IGZlbmNlX3lfb2Zmc2V0
Ow0KPiAtCQl1MTYgb3ZlcnJpZGVfY2ZiX3N0cmlkZTsNCj4gLQkJdTE2IGludGVydmFsOw0KPiAt
CQlzOCBmZW5jZV9pZDsNCj4gLQl9IHBhcmFtczsNCj4gLQ0KPiArCXN0cnVjdCBpbnRlbF9mYmNf
c3RhdGUgcGFyYW1zOw0KPiAgCWNvbnN0IGNoYXIgKm5vX2ZiY19yZWFzb247DQo+ICB9Ow0KPiAN
Cj4gLS0NCj4gMi4zMi4wDQoNCg==
