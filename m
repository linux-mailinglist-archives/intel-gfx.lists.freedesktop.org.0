Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 854FCD4717
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2CA6E41D;
	Fri, 11 Oct 2019 18:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1BB6E41D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:01:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 11:01:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="193602642"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga008.fm.intel.com with ESMTP; 11 Oct 2019 11:01:06 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 11 Oct 2019 11:01:06 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.194]) with mapi id 14.03.0439.000;
 Fri, 11 Oct 2019 11:01:06 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Port C's hotplug interrupt
 is associated with TC1 bits
Thread-Index: AQHVf8sCymNxM8vC1k2TfiUnKQP4h6dWMXaA
Date: Fri, 11 Oct 2019 18:01:06 +0000
Message-ID: <dfa0949b69f62220b933fe48c61476e30a9473e7.camel@intel.com>
References: <20191011002618.3087-1-vivek.kasireddy@intel.com>
In-Reply-To: <20191011002618.3087-1-vivek.kasireddy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.128]
Content-ID: <F13C68015876AC4D93F49E792E11DF09@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Port C's hotplug interrupt is
 associated with TC1 bits
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gVGh1LCAyMDE5LTEwLTEwIGF0IDE3OjI2IC0wNzAwLCBWaXZlayBLYXNpcmVkZHkgd3JvdGU6
DQo+IE9uIHNvbWUgcGxhdGZvcm1zIHRoYXQgaGF2ZSB0aGUgTUNDIFBDSCwgUG9ydCBDJ3MgaG90
cGx1ZyBpbnRlcnJ1cHQNCg0KU29tZT8NCg0KPiBiaXRzIGFyZSBtYXBwZWQgdG8gVEMxIGJpdHMu
DQo+IA0KPiBTdWdnZXN0ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgfCAzICsrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgIHwg
OCArKysrLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
IGluZGV4IDBlNDVjNjFkNzMzMS4uNjU5NGYyYWYxMjU3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC01MjgyLDYgKzUyODIsOSBAQCBzdGF0aWMg
Ym9vbCBpY2xfY29tYm9fcG9ydF9jb25uZWN0ZWQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LA0KPiAgew0KPiAgCWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJh
c2UucG9ydDsNCj4gIA0KPiArCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcG9ydCA9PSBQ
T1JUX0MpDQo+ICsJCXJldHVybiBJOTE1X1JFQUQoU0RFSVNSKSAmDQo+IFNERV9UQ19IT1RQTFVH
X0lDUChQT1JUX1RDMSk7DQo+ICsNCj4gIAlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVf
RERJX0hPVFBMVUdfSUNQKHBvcnQpOw0KPiAgfQ0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYw0KPiBpbmRleCAzYWY3Zjc5MTRjNDAuLmE3Yzk2OGIwMWFmMyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jDQo+IEBAIC0yMjQ5LDggKzIyNDksOCBAQCBzdGF0aWMgdm9pZCBpY3Bf
aXJxX2hhbmRsZXIoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcGNo
X2lpcikNCj4gIAkJdGNfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0ID0NCj4gdGdwX3RjX3BvcnRf
aG90cGx1Z19sb25nX2RldGVjdDsNCj4gIAkJcGlucyA9IGhwZF90Z3A7DQo+ICAJfSBlbHNlIGlm
IChIQVNfUENIX01DQyhkZXZfcHJpdikpIHsNCj4gLQkJZGRpX2hvdHBsdWdfdHJpZ2dlciA9IHBj
aF9paXIgJiBTREVfRERJX01BU0tfVEdQOw0KPiAtCQl0Y19ob3RwbHVnX3RyaWdnZXIgPSAwOw0K
PiArCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9ERElfTUFTS19JQ1A7DQo+
ICsJCXRjX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJg0KPiBTREVfVENfSE9UUExVR19JQ1Ao
UE9SVF9UQzEpOw0KPiAgCQlwaW5zID0gaHBkX2ljcDsNCj4gIAl9IGVsc2Ugew0KPiAgCQlkZGlf
aG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9ERElfTUFTS19JQ1A7DQo+IEBAIC0zMzc3
LDggKzMzNzcsOCBAQCBzdGF0aWMgdm9pZCBpY3BfaHBkX2lycV9zZXR1cChzdHJ1Y3QNCj4gZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICBzdGF0aWMgdm9pZCBtY2NfaHBkX2lycV9zZXR1
cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICB7DQo+ICAJaWNwX2hwZF9p
cnFfc2V0dXAoZGV2X3ByaXYsDQo+IC0JCQkgIFNERV9ERElfTUFTS19UR1AsIDAsDQo+IC0JCQkg
IFRHUF9ERElfSFBEX0VOQUJMRV9NQVNLLCAwLA0KPiArCQkJICBTREVfRERJX01BU0tfSUNQLA0K
PiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpLA0KPiArCQkJICBJQ1BfRERJX0hQRF9FTkFC
TEVfTUFTSywNCj4gSUNQX1RDX0hQRF9FTkFCTEUoUE9SVF9UQzEpLA0KPiAgCQkJICBocGRfaWNw
KTsNCj4gIH0NCj4gIA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
