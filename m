Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E8E2097F4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D452A6E886;
	Thu, 25 Jun 2020 00:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA80D6E886
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:47:08 +0000 (UTC)
IronPort-SDR: ZY3IL9Fljl+qeOz+n7BXMGVToawqtOQIuqMau7dTzfsZSQzVnOpW2bgWxQFTnfENla16SZYzcr
 x9OR8MH6Mf7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="124933735"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="124933735"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:47:08 -0700
IronPort-SDR: vRBVHBprnunpENRxArA4xGDZrLanNFtK1/y/+jr+38T5ijsFVC6tY1GNjhy172rPvd473m4gSs
 LFVstI/VHNSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="301821579"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2020 17:47:08 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 17:47:08 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.48]) with mapi id 14.03.0439.000;
 Wed, 24 Jun 2020 17:47:07 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/12] drm/i915/fbc: Store the fbc1
 compression interval in the params
Thread-Index: AQHWHg6Eantw6/fRoE+V5BV3VWkgv6jpTfaA
Date: Thu, 25 Jun 2020 00:47:07 +0000
Message-ID: <841d8f8d66900609ebd1d37e4314cb3486d2a22a.camel@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.155.111]
Content-ID: <8333D36EB917AF4A9B45D28A2513E080@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915/fbc: Store the fbc1
 compression interval in the params
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

T24gV2VkLCAyMDIwLTA0LTI5IGF0IDEzOjEwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQXZvaWQgdGhlIEZCQ19DT05UUk9MIHJtdyBhbmQganVzdCBzdG9yZSB0aGUgZmJjIGNv
bXByZXNzaW9uDQo+IGludGVydmFsIGluIHRoZSBwYXJhbXMvDQoNClJldmlld2VkLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTMg
KysrKysrLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAg
ICB8ICAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBp
bmRleCBkYmVmNThhZjRiOTQuLmIxZWI2YTJlY2M0MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0xMzIsOCArMTMyLDcgQEAgc3RhdGljIHZv
aWQgaTh4eF9mYmNfYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0K
PiAgCX0NCj4gIA0KPiAgCS8qIGVuYWJsZSBpdC4uLiAqLw0KPiAtCWZiY19jdGwgPSBpbnRlbF9k
ZV9yZWFkKGRldl9wcml2LCBGQkNfQ09OVFJPTCk7DQo+IC0JZmJjX2N0bCAmPSBGQkNfQ1RMX0lO
VEVSVkFMKDB4M2ZmZik7DQo+ICsJZmJjX2N0bCA9IEZCQ19DVExfSU5URVJWQUwocGFyYW1zLT5p
bnRlcnZhbCk7DQoNCkNJIHJlc3VsdHMgYXJlIGdvb2Qgc28gbm8gbmVlZCB0byBrZWVwIGFueSBi
aXQgdGhhdCB3ZSBkb24ndCB0b3VjaCBzZXQuDQoNCj4gIAlmYmNfY3RsIHw9IEZCQ19DVExfRU4g
fCBGQkNfQ1RMX1BFUklPRElDOw0KPiAgCWlmIChJU19JOTQ1R00oZGV2X3ByaXYpKQ0KPiAgCQlm
YmNfY3RsIHw9IEZCQ19DVExfQzNfSURMRTsgLyogOTQ1IG5lZWRzIHNwZWNpYWwgU1IgaGFuZGxp
bmcgKi8NCj4gQEAgLTcyOCw2ICs3MjcsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfdXBkYXRl
X3N0YXRlX2NhY2hlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCWNhY2hlLT5mYi5tb2Rp
ZmllciA9IGZiLT5tb2RpZmllcjsNCj4gIAljYWNoZS0+ZmIuc3RyaWRlID0gcGxhbmVfc3RhdGUt
PmNvbG9yX3BsYW5lWzBdLnN0cmlkZTsNCj4gIA0KPiArCS8qIFRoaXMgdmFsdWUgd2FzIHB1bGxl
ZCBvdXQgb2Ygc29tZW9uZSdzIGhhdCAqLw0KPiArCWNhY2hlLT5pbnRlcnZhbCA9IDUwMDsNCj4g
Kw0KPiAgCWNhY2hlLT5mZW5jZV95X29mZnNldCA9IGludGVsX3BsYW5lX2ZlbmNlX3lfb2Zmc2V0
KHBsYW5lX3N0YXRlKTsNCj4gIA0KPiAgCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBwbGFu
ZV9zdGF0ZS0+ZmxhZ3MgJiBQTEFORV9IQVNfRkVOQ0UgJiYNCj4gQEAgLTkwMiw2ICs5MDQsOCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfZ2V0X3JlZ19wYXJhbXMoc3RydWN0IGludGVsX2NydGMg
KmNydGMsDQo+ICAJcGFyYW1zLT5mZW5jZV9pZCA9IGNhY2hlLT5mZW5jZV9pZDsNCj4gIAlwYXJh
bXMtPmZlbmNlX3lfb2Zmc2V0ID0gY2FjaGUtPmZlbmNlX3lfb2Zmc2V0Ow0KPiAgDQo+ICsJcGFy
YW1zLT5pbnRlcnZhbCA9IGNhY2hlLT5pbnRlcnZhbDsNCj4gKw0KPiAgCXBhcmFtcy0+Y3J0Yy5w
aXBlID0gY3J0Yy0+cGlwZTsNCj4gIAlwYXJhbXMtPmNydGMuaTl4eF9wbGFuZSA9IHRvX2ludGVs
X3BsYW5lKGNydGMtPmJhc2UucHJpbWFyeSktPmk5eHhfcGxhbmU7DQo+ICANCj4gQEAgLTE0NDks
MTEgKzE0NTMsNiBAQCB2b2lkIGludGVsX2ZiY19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gIA0KPiAtCS8qIFRoaXMgdmFsdWUg
d2FzIHB1bGxlZCBvdXQgb2Ygc29tZW9uZSdzIGhhdCAqLw0KPiAtCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpIDw9IDQgJiYgIUlTX0dNNDUoZGV2X3ByaXYpKQ0KPiAtCQlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgRkJDX0NPTlRST0wsDQo+IC0JCQkgICAgICAgRkJDX0NUTF9JTlRFUlZBTCg1MDAp
KTsNCj4gLQ0KPiAgCS8qIFdlIHN0aWxsIGRvbid0IGhhdmUgYW55IHNvcnQgb2YgaGFyZHdhcmUg
c3RhdGUgcmVhZG91dCBmb3IgRkJDLCBzbw0KPiAgCSAqIGRlYWN0aXZhdGUgaXQgaW4gY2FzZSB0
aGUgQklPUyBhY3RpdmF0ZWQgaXQgdG8gbWFrZSBzdXJlIHNvZnR3YXJlDQo+ICAJICogbWF0Y2hl
cyB0aGUgaGFyZHdhcmUgc3RhdGUuICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBpbmRl
eCBhNjM0ZmQyMzMwYzMuLmJjNjZhN2NiODg2YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oDQo+IEBAIC00MTksNiArNDE5LDcgQEAgc3RydWN0IGludGVsX2ZiYyB7DQo+ICANCj4gIAkJ
dW5zaWduZWQgaW50IGZlbmNlX3lfb2Zmc2V0Ow0KPiAgCQl1MTYgZ2VuOV93YV9jZmJfc3RyaWRl
Ow0KPiArCQl1MTYgaW50ZXJ2YWw7DQo+ICAJCXM4IGZlbmNlX2lkOw0KPiAgCX0gc3RhdGVfY2Fj
aGU7DQo+ICANCj4gQEAgLTQ0Myw2ICs0NDQsNyBAQCBzdHJ1Y3QgaW50ZWxfZmJjIHsNCj4gIAkJ
aW50IGNmYl9zaXplOw0KPiAgCQl1bnNpZ25lZCBpbnQgZmVuY2VfeV9vZmZzZXQ7DQo+ICAJCXUx
NiBnZW45X3dhX2NmYl9zdHJpZGU7DQo+ICsJCXUxNiBpbnRlcnZhbDsNCj4gIAkJczggZmVuY2Vf
aWQ7DQo+ICAJCWJvb2wgcGxhbmVfdmlzaWJsZTsNCj4gIAl9IHBhcmFtczsNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
